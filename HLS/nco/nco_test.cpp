// Copyright 2019 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#include "nco_top.hpp"

#include <iostream>

int main()
{
	delay_type delay = 150973469;

	output_type result;

	bool enable;
	result = nco_top(delay, enable);
	if (result != 0x00) {
		std::cout << "bad result (0) = " << std::hex << result << std::endl;
		return 1;
	}
	result = nco_top(delay, enable);
	if (result != 0xc0) {
		std::cout << "bad result (1) = " << std::hex << result << std::endl;
		return 1;
	}
	result = nco_top(delay, enable);
	if (result != 0xff) {
		std::cout << "bad result (2) = " << std::hex << result << std::endl;
		return 1;
	}
	result = nco_top(delay, enable);
	if (result != 0x0f) {
		std::cout << "bad result (3) = " << std::hex << result << std::endl;
		return 1;
	}
	result = nco_top(delay, enable);
	if (result != 0x00) {
		std::cout << "bad result (4) = " << std::hex << result << std::endl;
		return 1;
	}
	result = nco_top(delay, enable);
	if (result != 0xfc) {
		std::cout << "bad result (5) = " << std::hex << result << std::endl;
		return 1;
	}
	result = nco_top(delay, enable);
	if (result != 0xff) {
		std::cout << "bad result (6) = " << std::hex << result << std::endl;
		return 1;
	}
	result = nco_top(delay, enable);
	if (result != 0x00) {
		std::cout << "bad result (7) = " << std::hex << result << std::endl;
		return 1;
	}
	result = nco_top(delay, enable);
	if (result != 0x80) {
		std::cout << "bad result (8) = " << result << std::endl;
		return 1;
	}
	result = nco_top(delay, enable);
	if (result != 0xFF) {
		std::cout << "bad result (9) = " << result << std::endl;
		return 1;
	}
	return 0;
}
