/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLRWYbdE.aml, Sun Nov  1 15:10:58 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001A2 (418)
 *     Revision         0x01
 *     Checksum         0x22
 *     OEM ID           "KGP"
 *     OEM Table ID     "X99X540"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X99X540", 0x00001000)
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
                        Buffer (0x22)
                        {
                            "Intel X540-T1 10-Gigabit Ethernet"
                        }, 

                        "model", 
                        Buffer (0x22)
                        {
                            "Intel X540-T1 10-Gigabit Ethernet"
                        }, 

                        "location", 
                        Buffer (0x02)
                        {
                            "1"
                        }, 

                        "subsystem-id", 
                        Buffer (0x04)
                        {
                             0x0A, 0x00, 0x00, 0x00                           // ....
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x28, 0x15, 0x00, 0x00                           // (...
                        }, 

                        "subsystem-vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                           // ....
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}

