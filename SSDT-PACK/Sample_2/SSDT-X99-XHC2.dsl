/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLW3J2bZ.aml, Sun Nov  1 15:10:58 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000015F (351)
 *     Revision         0x01
 *     Checksum         0x85
 *     OEM ID           "KGP"
 *     OEM Table ID     "X99XHC2"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X99XHC2", 0x00001000)
{
    External (_SB_.PCI0.RP05, DeviceObj)
    External (_SB_.PCI0.RP05.D07D, DeviceObj)
    External (_SB_.PCI0.RP05.D082, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (_SB.PCI0.RP05)
    {
        Scope (D07D)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (D082)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (XHC2)
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

                Local0 = Package (0x0A)
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
                             0x42, 0x12, 0x00, 0x00                           // B...
                        }, 

                        "name", 
                        Buffer (0x1B)
                        {
                            "ASMedia USB 3.1 Controller"
                        }, 

                        "model", 
                        Buffer (0x28)
                        {
                            "ASMedia ASM1142 USB 3.1 Type-A & Type-C"
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}

