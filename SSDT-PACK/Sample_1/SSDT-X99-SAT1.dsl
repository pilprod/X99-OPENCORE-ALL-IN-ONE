/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLCWYOZ7.aml, Sun Nov  1 15:10:58 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000128 (296)
 *     Revision         0x01
 *     Checksum         0xE3
 *     OEM ID           "KGP"
 *     OEM Table ID     "X99SAT1"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X99SAT1", 0x00001000)
{
    External (_SB_.PCI0.SAT1, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PCI0.SAT1)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Local0 = Package (0x0C)
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

                    "name", 
                    Buffer (0x1B)
                    {
                        "Intel SATA AHCI Controller"
                    }, 

                    "model", 
                    Buffer (0x27)
                    {
                        "Intel X99-A II Chipset SATA Controller"
                    }, 

                    "device_type", 
                    Buffer (0x15)
                    {
                        "AHCI SATA Controller"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x02, 0x8D, 0x00, 0x00                           // ....
                    }
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }
}

