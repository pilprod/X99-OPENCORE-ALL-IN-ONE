/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLY8eEQb.aml, Sun Nov  1 15:10:58 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001D0 (464)
 *     Revision         0x01
 *     Checksum         0x69
 *     OEM ID           "KGP"
 *     OEM Table ID     "X99XHCI"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X99XHCI", 0x00001000)
{
    External (_SB_.PCI0.XHCI, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PCI0.XHCI)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Local0 = Package (0x1B)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                             // .
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x31, 0x8D, 0x00, 0x00                           // 1...
                    }, 

                    "name", 
                    Buffer (0x34)
                    {
                        "Intel XHC USB Controller"
                    }, 

                    "model", 
                    Buffer (0x2F)
                    {
                        "Intel X99-A II Chipset XHC USB Host Controller"
                    }, 

                    "AAPL,current-available", 
                    0x0834, 
                    "AAPL,current-extra", 
                    0x0A8C, 
                    "AAPL,current-in-sleep", 
                    0x0A8C, 
                    "AAPL,max-port-current-in-sleep", 
                    0x0834, 
                    "AAPL,device-internal", 
                    Zero, 
                    "AAPL,clock-id", 
                    Buffer (One)
                    {
                         0x01                                             // .
                    }, 

                    "AAPL,root-hub-depth", 
                    0x1A, 
                    "AAPL,XHC-clock-id", 
                    One, 
                    Buffer (One)
                    {
                         0x00                                             // .
                    }
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }
}

