// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#include "cic_top.hpp"

#include <iostream>
#include <array>
#include <tuple>
#include <utility>

std::array<std::pair<ap_uint<14>, size_t>,8> test_data = {
	std::make_pair<ap_uint<14>, size_t>(5461U,4312),
	std::make_pair<ap_uint<14>, size_t>(5462U,1),
	std::make_pair<ap_uint<14>, size_t>(10922U,4312),
	std::make_pair<ap_uint<14>, size_t>(10933U,1),
	std::make_pair<ap_uint<14>, size_t>(5461U,4312),
	std::make_pair<ap_uint<14>, size_t>(5546U,1),
	std::make_pair<ap_uint<14>, size_t>(10922U,4312),
	std::make_pair<ap_uint<14>, size_t>(11605U,1)
};

int main()
{
	decimate_type decim = 89;

	output_type output;
	size_t count = 0;
	uint64_t counter;
	for (size_t i = 0; i != test_data.size(); ++i) {
		input_type input = test_data[i].first;
		size_t tcount = test_data[i].second;
		for (size_t j = 0; j != tcount; ++j) {
			cic_top(decim, input, output, counter);
			if (!output.empty()) {
				odata_type out = output.read();
				if (out.strb == 3 and out.keep == 3) {
					count += 1;
					std::cout << "value = " << out.data << std::endl;
				}
			}
		}
	}
	if (count != 193) {
		std::cout << "bad count (0) = " << count << std::endl;
		return 1;
	}

	count = 0;
	for (size_t i = 0; i != 1000; ++i) {
		input_type input = 0x500;
		cic_top(decim, input, output, counter);
		if (!output.empty()) {
			odata_type out = output.read();
			if (out.strb == 3 and out.keep == 3) {
				count += 1;
			}
		}
	}
	if (count != 12) {
		std::cout << "bad count (1) = " << count << std::endl;
		return 1;
	}
return 0;
}
