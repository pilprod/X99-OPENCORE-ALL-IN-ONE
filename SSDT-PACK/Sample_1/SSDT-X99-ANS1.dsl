/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLRcBE8w.aml, Sun Nov  1 15:10:58 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000163 (355)
 *     Revision         0x01
 *     Checksum         0xEA
 *     OEM ID           "KGP"
 *     OEM Table ID     "X99ANS1"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X99ANS1", 0x00001000)
{
    External (_SB_.PCI0.BR1B, DeviceObj)
    External (_SB_.PCI0.BR1B.D075, DeviceObj)
    External (_SB_.PCI0.BR1B.D081, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (_SB.PCI0.BR1B)
    {
        Scope (D075)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (D081)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (ANS1)
        {
            Name (_ADR, Zero)  // _ADR: Address
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

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x04, 0xA8, 0x00, 0x00                           // ....
                        }, 

                        "device_type", 
                        Buffer (0x17)
                        {
                            "MVM Express Controller"
                        }, 

                        "name", 
                        Buffer (0x16)
                        {
                            "Apple NVMe Controller"
                        }, 

                        "model", 
                        Buffer (0x13)
                        {
                            "Apple NVMe AP1024M"
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}

