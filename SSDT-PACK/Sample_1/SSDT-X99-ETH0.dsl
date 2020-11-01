/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLO9IiqJ.aml, Sun Nov  1 15:10:58 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000174 (372)
 *     Revision         0x01
 *     Checksum         0x85
 *     OEM ID           "KGP"
 *     OEM Table ID     "X99ETH0"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X99ETH0", 0x00001000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GLAN, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PCI0)
    {
        Scope (GLAN)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (ETH0)
        {
            Name (_ADR, 0x00190000)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x10)
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
                        Buffer (0x2A)
                        {
                            "Intel i218-V PCI Express Gigabit Ethernet"
                        }, 

                        "model", 
                        Buffer (0x21)
                        {
                            "Intel i218-V Ethernet Controller"
                        }, 

                        "location", 
                        Buffer (0x02)
                        {
                            "1"
                        }, 

                        "subsystem-id", 
                        Buffer (0x04)
                        {
                             0xC4, 0x85, 0x00, 0x00                           // ....
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0xA1, 0x15, 0x00, 0x00                           // ....
                        }, 

                        "subsystem-vendor-id", 
                        Buffer (0x04)
                        {
                             0x43, 0x10, 0x00, 0x00                           // C...
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}

