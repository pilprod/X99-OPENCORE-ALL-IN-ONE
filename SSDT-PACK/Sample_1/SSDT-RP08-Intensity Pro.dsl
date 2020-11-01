/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLfqadKU.aml, Sun Nov  1 14:26:17 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000F4 (244)
 *     Revision         0x01
 *     Checksum         0x6C
 *     OEM ID           "mano"
 *     OEM Table ID     "HDMI"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "mano", "HDMI", 0x00003000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.RP08, DeviceObj)
    External (_SB_.PCI0.RP08.D07A, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Method (_SB.PCI0.RP08.D07A._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        Local0 = Package (0x08)
            {
                "AAPL,slot-name", 
                Buffer (0x0C)
                {
                    "PCIE Slot 5"
                }, 

                "name", 
                Buffer (0x0E)
                {
                    "Intensity Pro"
                }, 

                "model", 
                Buffer (0x0E)
                {
                    "Intensity Pro"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x1E, 0x8D, 0x00, 0x00                           // ....
                }
            }
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }
}

