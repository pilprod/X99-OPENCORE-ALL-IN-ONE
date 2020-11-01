/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLl9TpsH.aml, Sun Nov  1 14:29:35 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001BD (445)
 *     Revision         0x01
 *     Checksum         0x91
 *     OEM ID           "mano"
 *     OEM Table ID     "ARPT"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "mano", "ARPT", 0x00003000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.RP07, DeviceObj)
    External (_SB_.PCI0.RP07.D079, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Device (_SB.PCI0.RP07.ARPT)
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
                    Buffer (0x0C)
                    {
                        "PCIE Slot 3"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                             // .
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xB1, 0x43, 0x00, 0x00                           // .C..
                    }, 

                    "device_type", 
                    Buffer (0x08)
                    {
                        "AirPort"
                    }, 

                    "device_type", 
                    Buffer (0x08)
                    {
                        "AirPort"
                    }, 

                    "model", 
                    Buffer (0x3D)
                    {
                        "Broadcom BCM943xx 802.11 a/b/g/n Wireless Network Controller"
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci14e4,43b1"
                    }, 

                    "name", 
                    Buffer (0x10)
                    {
                        "AirPort Extreme"
                    }
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (Package (0x02)
            {
                0x6D, 
                Zero
            })
        }
    }

    Name (_SB.PCI0.RP07.D079._STA, Zero)  // _STA: Status
}

