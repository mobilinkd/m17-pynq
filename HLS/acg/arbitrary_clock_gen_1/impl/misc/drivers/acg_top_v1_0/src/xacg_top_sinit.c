// ==============================================================
// File generated on Sun Jul 21 12:31:55 CDT 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xacg_top.h"

extern XAcg_top_Config XAcg_top_ConfigTable[];

XAcg_top_Config *XAcg_top_LookupConfig(u16 DeviceId) {
	XAcg_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XACG_TOP_NUM_INSTANCES; Index++) {
		if (XAcg_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAcg_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAcg_top_Initialize(XAcg_top *InstancePtr, u16 DeviceId) {
	XAcg_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAcg_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAcg_top_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

