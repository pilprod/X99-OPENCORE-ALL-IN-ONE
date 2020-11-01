/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLQX9HQt.aml, Sun Nov  1 15:10:58 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000029F (671)
 *     Revision         0x01
 *     Checksum         0x38
 *     OEM ID           "KGP"
 *     OEM Table ID     "X99NVID"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X99NVID", 0x00001000)
{
    External (_SB_.PCI0.BR3C, DeviceObj)
    External (_SB_.PCI0.BR3C.D077, DeviceObj)
    External (_SB_.PCI0.BR3C.H000, DeviceObj)
    External (_SB_.PCI0.BR3C.H001, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (_SB.PCI0.BR3C)
    {
        Scope (H000)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (H001)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (D077)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (GFX0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x14)
                    {
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x06, 0x1B, 0x00, 0x00                           // ....
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-2"
                        }, 

                        "AAPL,slot-name", 
                        Buffer (0x07)
                        {
                            "Slot-1"
                        }, 

                        "@0,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                           // ....
                        }, 

                        "@1,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                           // ....
                        }, 

                        "@2,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                           // ....
                        }, 

                        "@3,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                           // ....
                        }, 

                        "@4,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                           // ....
                        }, 

                        "@5,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                           // ....
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }

        Device (HDAU)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x0C)
                    {
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0xEF, 0x10, 0x00, 0x00                           // ....
                        }, 

                        "AAPL,slot-name", 
                        Buffer (0x07)
                        {
                            "Slot-1"
                        }, 

                        "device_type", 
                        Buffer (0x16)
                        {
                            "Multimedia Controller"
                        }, 

                        "name", 
                        Buffer (0x1D)
                        {
                            "NVIDIA High Definition Audio"
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-2"
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}

