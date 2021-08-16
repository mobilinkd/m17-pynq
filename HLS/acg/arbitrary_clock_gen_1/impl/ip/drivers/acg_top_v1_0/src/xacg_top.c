// ==============================================================
// File generated on Sun Jul 21 12:31:55 CDT 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xacg_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAcg_top_CfgInitialize(XAcg_top *InstancePtr, XAcg_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAcg_top_Set_inc_V(XAcg_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAcg_top_WriteReg(InstancePtr->Axilites_BaseAddress, XACG_TOP_AXILITES_ADDR_INC_V_DATA, Data);
}

u32 XAcg_top_Get_inc_V(XAcg_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAcg_top_ReadReg(InstancePtr->Axilites_BaseAddress, XACG_TOP_AXILITES_ADDR_INC_V_DATA);
    return Data;
}

