/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLkY7sfS.aml, Sun Nov  1 15:10:58 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001A1 (417)
 *     Revision         0x01
 *     Checksum         0x29
 *     OEM ID           "KGP"
 *     OEM Table ID     "X99ACQU"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X99ACQU", 0x00000000)
{
    External (_SB_.PCI0.BR3A, DeviceObj)
    External (_SB_.PCI0.BR3A.D07C, DeviceObj)
    External (_SB_.PCI0.BR3A.H000, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PCI0.BR3A)
    {
        Scope (H000)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (D07C)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (XGBE)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Local0 = Package (0x10)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x07)
                        {
                            "Slot-6"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "name", 
                        Buffer (0x33)
                        {
                            "ASUS XG-C100C Aquantia AQC107 10-Gigabit Ethernet"
                        }, 

                        "model", 
                        Buffer (0x11)
                        {
                            "Apple AQC107-AFW"
                        }, 

                        "location", 
                        Buffer (0x02)
                        {
                            "1"
                        }, 

                        "subsystem-id", 
                        Buffer (0x04)
                        {
                             0x87, 0x01, 0x00, 0x00                           // ....
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0xB1, 0x07, 0x00, 0x00                           // ....
                        }, 

                        "subsystem-vendor-id", 
                        Buffer (0x04)
                        {
                             0x6B, 0x10, 0x00, 0x00                           // k...
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}

