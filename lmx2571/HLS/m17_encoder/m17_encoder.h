// Copyright 2022 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#pragma once

#include <ap_int.h>

#include <array>
#include <cstdint>
#include <cstdlib>

namespace mobilinkd {
namespace m17 {

inline void compute_crc_bit(ap_uint<1> bit, ap_uint<16>& crc)
{
	ap_uint<1> tmp = crc[15] ^ bit;

	compute_shift: crc <<= 1;

	crc[0] = tmp;
	crc[2] = crc[2] ^ tmp;
	crc[4] = crc[4] ^ tmp;
	crc[5] = crc[5] ^ tmp;
	crc[8] = crc[8] ^ tmp;
	crc[11] = crc[11] ^ tmp;
	crc[12] = crc[12] ^ tmp;
	crc[14] = crc[14] ^ tmp;
}

template <int N>
ap_uint<16> compute_crc(ap_uint<N> bits)
{
	ap_uint<16> crc{0xFFFF};
#pragma HLS BIND_STORAGE variable=crc type=fifo impl=srl

	crc: for (int i = N; i != 0; --i) {
		compute_crc_bit(bits[N-1], crc);
		bits <<= 1;
	}
	return crc;
}


template <int K>
ap_uint<1> convolve_bit(ap_uint<K> poly, ap_uint<K> memory)
{
    return __builtin_popcount(poly & memory) & 1;
}

template <int K, int k = 1>
ap_uint<K> update_memory(ap_uint<K> memory, ap_uint<k> input)
{
    return (memory << k | input);
}

const ap_uint<5> CC_POLY_1 = 031;
const ap_uint<5> CC_POLY_2 = 027;


enum class FrameType { PACKET = 0, STREAM = 1 };
enum class StreamSubtype { RESERVED_1 = 0, DATA = 1, VOICE = 2, MIXED = 3 };
enum class PacketSubtype { RESERVED_2 = 0, RAW = 1, ENCAPSULATED = 2, OTHER = 3 };
enum class EncryptionType { NONE = 0, AES = 1, SCRAMBLED = 2, RESERVED_3 = 3 };
enum class EncryptionSubtype { RESERVED_4 = 0 };

struct LinkSetupFrameType {
	ap_uint<16> bits;

	LinkSetupFrameType()
	:bits()
	{}

	// Stream LSF
	LinkSetupFrameType(
			StreamSubtype streamType,
			ap_uint<4> can = 0,
			EncryptionType encType = EncryptionType::NONE,
			EncryptionSubtype encSubtype = EncryptionSubtype::RESERVED_4)
	{
		bits[0] = 1;
		bits.range(2,1) = unsigned(streamType);
		bits.range(4,3) = unsigned(encType);
		bits.range(6,5) = unsigned(encSubtype);
		bits.range(10,7) = can;
		bits.range(15,11) = 0;

	}

	// Packet LSF
	LinkSetupFrameType(
			PacketSubtype packetType,
			ap_uint<4> can = 0,
			EncryptionType encType = EncryptionType::NONE,
			EncryptionSubtype encSubtype = EncryptionSubtype::RESERVED_4)
	{
		bits[0] = 0;
		bits.range(2,1) = unsigned(packetType);
		bits.range(4,3) = unsigned(encType);
		bits.range(6,5) = unsigned(encSubtype);
		bits.range(10,7) = can;
		bits.range(15,11) = 0;

	}

	void update(
			StreamSubtype streamType,
			ap_uint<4> can = 0,
			EncryptionType encType = EncryptionType::NONE,
			EncryptionSubtype encSubtype = EncryptionSubtype::RESERVED_4)
	{
		bits[0] = 1;
		bits.range(2,1) = unsigned(streamType);
		bits.range(4,3) = unsigned(encType);
		bits.range(6,5) = unsigned(encSubtype);
		bits.range(10,7) = can;
		bits.range(15,11) = 0;

	}

	void update(
			PacketSubtype packetType,
			ap_uint<4> can = 0,
			EncryptionType encType = EncryptionType::NONE,
			EncryptionSubtype encSubtype = EncryptionSubtype::RESERVED_4)
	{
		bits[0] = 0;
		bits.range(2,1) = unsigned(packetType);
		bits.range(4,3) = unsigned(encType);
		bits.range(6,5) = unsigned(encSubtype);
		bits.range(10,7) = can;
		bits.range(15,11) = 0;

	}
};

struct PolynomialInterleaver
{
	static constexpr size_t F1=45;
	static constexpr size_t F2=92;
	static constexpr size_t K=368;

    using buffer_t = ap_uint<K>;

    static constexpr size_t index(size_t i)
    {
        return ((F1 * i) + (F2 * i * i)) % K;
    }

    static buffer_t interleave(buffer_t const& in);
};

inline ap_uint<368> randomize(ap_uint<368> const& x)
{
	static const ap_uint<368> dc("0xd6b5e23082ff8462ba4e9690d898dd5d0cc85243911df86e682f35da14eacd76198dd580d133871357182d2978c3");
	return x ^ dc;
}

struct LinkSetupFrame
{
	using encoded_call_t = ap_uint<48>;
	using data_type = ap_uint<244>;
	using encoded_type = ap_uint<488>;
	using frame_type = ap_uint<368>;

	data_type bits;

	LinkSetupFrame(encoded_call_t dest,
		encoded_call_t src,
		LinkSetupFrameType lsft,
		ap_uint<112> meta = 0)
	{
		bits.range(243,196) = dest;
		bits.range(195,148) = src;
		bits.range(147,132) = lsft.bits;
		bits.range(131, 20) = meta;
		ap_uint<224> const& tmp = bits.range(243,20);
		bits.range( 19,  4) = compute_crc(tmp);
		bits.range(  3,  0) = 0; // Flush
	}

	encoded_type encode()
	{
		encoded_type encoded;
		ap_uint<5> memory = 0;

		encode_lsf: for (int i = bits.width; i != 0; --i)
		{
			memory = (memory << 1) | bits[i - 1];
			encoded <<= 1;
			encoded[0] = convolve_bit(CC_POLY_1, memory);
			encoded <<= 1;
			encoded[0] = convolve_bit(CC_POLY_2, memory);
		}
		return encoded;
	}

	static frame_type puncture(encoded_type const& encoded)
	{
		static const ap_uint<61>P1("0x1BBBBBBBBBBBBBBB");

		frame_type result;

		int i1 = encoded.width;
		int i2 = result.width;
		puncture_lsf_1: for (int i = 0; i != 8; ++i) {
#pragma HLS UNROLL
			puncture_lsf_2: for (int j = P1.width; j != 0; --j) {
#pragma HLS UNROLL
				--i1;
				if (P1[j-1]) {
					result[--i2] = encoded[i1];
				}
			}
		}
		return result;
	}

};

struct LICHSegment
{
	using data_type = ap_uint<48>;

	data_type bits;

	LICHSegment()
	: bits()
	{}

	LICHSegment(ap_uint<40> lich, ap_uint<3> frame)
	{
		bits.range(47,8) = lich;
		bits.range(7, 5) = frame;
		bits.range(4, 0) = 0; // Reserved.
	}
};

struct LICHSegments
{
	std::array<LICHSegment, 6> segments;

	LICHSegments(LinkSetupFrame const& lsf)
	{
		LinkSetupFrame::data_type bits = lsf.bits;
		size_t i = 0;
		split_lich: for (size_t j = segments.size(); j != 0; --j) {
#pragma HLS UNROLL
			int idx = j * 40 + 4; // There are 4 flush bits.
			segments[i].bits.range(47,8) = bits.range(bits.width - 1, bits.width - 40);
			segments[i].bits.range(7, 5) = i;
			segments[i].bits.range(4, 0) = 0; // Reserved.
			bits <<= 40;
			i += 1;
		}
	}
};

constexpr uint16_t POLY = 0xC75;

inline ap_uint<1> parity(ap_uint<24> codeword)
{
	ap_uint<1> result = __builtin_popcount(codeword) & 1;
    return result;
}

/**
 * Calculate [23,12] Golay codeword.
 *
 * @return checkbits(11)|data(12).
 */
inline uint32_t encode23(uint16_t data)
{
    data &= 0xfff;
    uint32_t codeword = data;
    golay_encode: for (size_t i = 0; i != 12; ++i)
    {
#pragma HLS UNROLL
    	if (codeword & 1)
            codeword ^= POLY;
        codeword >>= 1;
    }
    return codeword | (data << 11);
}

inline uint32_t encode24(uint16_t data)
{
    auto codeword = encode23(data);
    return ((codeword << 1) | parity(codeword));
}


struct EncodedLICHSegments
{
	static constexpr int GOLAY_IN_WIDTH = 12;
	static constexpr int GOLAY_OUT_WIDTH = 24;

	using data_type = ap_uint<96>;

	std::array<data_type, 6> segments;

	EncodedLICHSegments() {}

	EncodedLICHSegments(LICHSegments const& lich)
	{
		lich_encode_1: for (size_t i = 0; i != segments.size(); ++i) {
			LICHSegment::data_type bits = lich.segments[i].bits;
			lich_encode_2: for (int j = 48; j != 0; j -= 12) {
#pragma HLS UNROLL
				ap_uint<GOLAY_OUT_WIDTH> v = encode24(bits.range(bits.width - 1, bits.width - GOLAY_IN_WIDTH));
				bits <<= GOLAY_IN_WIDTH;
				segments[i] <<= GOLAY_OUT_WIDTH;
				segments[i].range(23, 0) = v;
			}
		}
	}

	EncodedLICHSegments& operator=(EncodedLICHSegments const& elich)
	{
		lich_assign_1: for (size_t i = 0; i != segments.size(); ++i)
		{
			segments[i] = elich.segments[i];
		}
		return *this;
	}


	EncodedLICHSegments& operator=(LICHSegments const& lich)
	{
		lich_assign_2: for (size_t i = 0; i != segments.size(); ++i) {
			lich_assign_3: for (int j = 48; j != 0; j -= 12) {
#pragma HLS UNROLL
				ap_uint<24> v = encode24(lich.segments[i].bits.range(j - 1, j - 12));
				segments[i].range(j * 2 - 1, j * 2 - 24) = v;
			}
		}
		return *this;
	}

};

/**
 * Stream frames consists of:
 *
 * 	Frame Number: 16 bits
 * 	Payload 1:    64 bits
 * 	Payload 2:    64 bits
 * 	Flush bits:    4 bits
 *
 * Payload 1 and payload 2 are typically each a 20ms audio block.
 */
struct StreamFrame
{
	using data_type = ap_uint<148>;
	using encoded_type = ap_uint<296>;
	using punctured_type = ap_uint<272>;
	using frame_type = ap_uint<368>;

	data_type bits;

	StreamFrame(uint16_t frame_number, uint64_t p1, uint64_t p2)
	{
		bits.range(147, 132) = frame_number;
		bits.range(131, 68) = p1;
		bits.range(67, 4) = p2;
		bits.range(3, 0) = 0;
	}

	encoded_type encode()
	{
		encoded_type encoded;
		ap_uint<5> memory = 0;

		encode_stream: for (int i = bits.width; i != 0; --i)
		{
			ap_uint<1> bit = bits[i - 1];
			// bits = (bits << 1) | bit;

			memory = (memory << 1) | bit;
			encoded <<= 1;
			encoded[0] = convolve_bit(CC_POLY_1, memory);
			encoded <<= 1;
			encoded[0] = convolve_bit(CC_POLY_2, memory);
		}
		return encoded;
	}

	static punctured_type puncture(encoded_type const& encoded)
	{
		static ap_uint<12> P2 = 0xFFE;

		punctured_type result;

		int i1 = encoded.width;
		int i2 = result.width;
		int j = P2.width - 1;
		puncture_stream: for (int i1 = encoded.width; i1 != 0; --i1) {
#pragma HLS UNROLL
			if (P2[j]) {
				result <<= 1;
				result[0] = encoded[i1 - 1];
			}
			j = (j == 0) ? P2.width - 1 : j - 1;
		}
		return result;
	}
};

struct StreamFrameFactory
{
	EncodedLICHSegments lich;

	StreamFrameFactory()
	{}

	void update(LinkSetupFrame const& lsf)
	{
		lich = EncodedLICHSegments(LICHSegments(lsf));
	}

	StreamFrame::frame_type get_frame(uint8_t lich_segment, uint16_t frame_number, uint64_t p1, uint64_t p2)
	{
		StreamFrame::frame_type result;
		StreamFrame frame(frame_number, p1, p2);
		result.range(367,272) = lich.segments[lich_segment];
		result.range(271,0) = StreamFrame::puncture(frame.encode());
		return result;
	}

};


}} // mobilinkd::m17
