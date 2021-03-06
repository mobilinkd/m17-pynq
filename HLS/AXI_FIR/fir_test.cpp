#include "fir_top.hpp"
#include <stdlib.h>
#include <math.h>

const int16_t audio_data[] = {
   719,   748,   468,   487,   533,   880,  1187,  1717,  2124,  2262,  2417,  2371,
  2106,  1794,  1275,   690,     3,  -721, -1382, -1855, -2227, -2378, -2383, -2243,
 -1953, -1510,  -958,  -291,   214,   497,   833,   909,   818,   620,   290,  -207,
  -787, -1396, -2019, -2434, -2756, -2914, -2901, -2762, -2424, -1954, -1371,  -667,
   -66,   270,   638,   762,   762,   682,   490,   235,   100,   161,   280,   583,
   913,  1391,  1576,  1634,  1685,  1398,  1093,   658,   255,    94,     2,   105,
   349,   761,  1288,  1898,  2303,  2564,  2793,  2744,  2612,  2264,  1851,  1280,
   586,  -143,  -830, -1336, -1795, -1993, -2038, -1917, -1622, -1209,  -646,    28,
   598,   929,  1265,  1382,  1330,  1190,   843,   387,  -157,  -776, -1420, -1866,
 -2227, -2379, -2346, -2193, -1868, -1409,  -796,  -111,   557,   949,  1380,  1636,
  1604,  1550,  1310,   946,   449,  -113,  -744, -1260, -1629, -1888, -1907, -1800,
 -1579, -1171,  -623,    23,   707,  1176,  1579,  1826,  1836,  1802,  1550,  1144,
   641,    30,  -639, -1236, -1742, -2039, -2141, -2132, -1915, -1584, -1074,  -460,
   237,   790,  1137,  1509,  1588,  1497,  1286,   937,   482,  -126,  -761, -1393,
 -1829, -2200, -2301, -2239, -2124, -1779, -1282,  -659,    76,   742,  1157,  1533,
  1742,  1728,  1602,  1342,  1005,   651,   379,   310,   403,   607,   905,  1316,
  1473,  1527,  1543,  1253,   961,   545,   197,     7,  -138,    -7,   198,   507,
   843,   838,   861,   706,   351,    13,  -459,  -680,  -805,  -858,  -598,  -336,
        89,   318,   303,   381,   110,  -217,  -616, -1027, -1185, -1343, -1253,  -984,
  -677,  -253,  -151,   -65,   -34,  -288,  -560,  -926, -1144, -1209, -1213,  -975,
  -710,  -295,    91,    71,   143,    20,  -291,  -616,  -953, -1086, -1158,  -993,
  -680,  -328,   211,   446,   516,   623,   401,   145,  -200,  -482,  -575,  -601,
};

const int16_t filtered_data[] = {
         0,     0,     0,     0,     0,     0,     0,     0,     0,     0,    -1,    -1,
        -1,    -2,    -2,    -3,    -5,    -6,    -8,   -10,   -11,   -10,    -8,    -3,
         3,    11,    19,    26,    31,    34,    35,    34,    32,    29,    25,    19,
        11,    -1,   -19,   -43,   -70,   -98,  -122,  -137,  -139,  -125,   -94,   -48,
         7,    66,   123,   172,   208,   230,   240,   237,   223,   199,   162,   107,
        31,   -69,  -194,  -334,  -477,  -603,  -687,  -706,  -641,  -484,  -240,    72,
   420,   759,  1043,  1229,  1281,  1185,   943,   578,   130,  -346,  -796, -1167,
 -1416, -1515, -1457, -1250,  -922,  -508,   -52,   400,   809,  1137,  1359,  1458,
  1426,  1266,   990,   620,   186,  -270,  -707, -1077, -1337, -1453, -1407, -1199,
  -853,  -411,    65,   512,   864,  1073,  1111,   980,   710,   358,    -9,  -321,
  -521,  -573,  -473,  -250,    44,   342,   574,   683,   636,   432,   101,  -302,
  -707, -1040, -1241, -1268, -1111,  -788,  -343,   165,   667,  1100,  1409,  1561,
  1541,  1357,  1031,   602,   114,  -384,  -847, -1231, -1501, -1633, -1613, -1442,
 -1131,  -708,  -209,   318,   824,  1258,  1575,  1743,  1742,  1571,  1245,   797,
   270,  -283,  -808, -1256, -1581, -1756, -1763, -1603, -1292,  -862,  -351,   190,
   714,  1171,  1518,  1723,  1767,  1646,  1370,   964,   467,   -75,  -612, -1093,
 -1472, -1712, -1791, -1700, -1449, -1059,  -569,   -23,   524,  1024,  1428,  1697,
  1806,  1744,  1515,  1141,   657,   109,  -449,  -964, -1385, -1671, -1792, -1738,
 -1515, -1148,  -674,  -143,   392,   880,  1274,  1540,  1657,  1617,  1427,  1109,
   690,   210,  -288,  -759, -1159, -1447, -1589, -1564, -1370, -1020,  -551,   -15,
   520,   985,  1315,  1462,  1406,  1156,   754,   268,  -219,  -630,  -897,  -984,
  -888,  -644,  -313,    27,   306,   464,   478,   355,   138,  -109,  -319,  -432,
};

const size_t BLOCK_SIZE = 132;

int main()
{
    input_type input;

    idata_type idata;
    output_type odata;

	bool failed = false;

	size_t k = 0;
    for (int j = 0; j != 2; ++j)
    {
		for (int i = 0; i != BLOCK_SIZE; ++i)
		{
			idata.data = audio_data[j * BLOCK_SIZE + i];
			idata.strb = 3;
			idata.keep = 3;
			idata.last = 0; // inverted logic for testing.
			input << idata;
			fir_top(input, odata);
			printf("output = %d\n", unsigned(odata));
			k++;
		}
    }

    if (k != 264) {
        printf("did not process all input/output, k = %d\n", k);
        failed = 1;
    }

    return failed;
}
