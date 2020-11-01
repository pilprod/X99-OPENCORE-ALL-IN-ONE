/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLltmcyw.aml, Sun Nov  1 14:26:17 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001C4 (452)
 *     Revision         0x01
 *     Checksum         0x8A
 *     OEM ID           "MANO"
 *     OEM Table ID     "GLAN"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "MANO", "GLAN", 0x00003000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GLAN, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Device (_SB.PCI0.LAN0)
    {
        Name (_ADR, 0x00190000)  // _ADR: Address
        Name (_SUN, 0x02)  // _SUN: Slot User Number
        OperationRegion (GPIO, SystemIO, 0x0800, 0x06)
        Field (GPIO, ByteAcc, NoLock, Preserve)
        {
            GO01,   8, 
            GO02,   8, 
            GO03,   8, 
            GO04,   8, 
            GO05,   8, 
            GP45,   1, 
            GP9,    1
        }

        Method (EWOL, 1, NotSerialized)
        {
            If ((Arg0 == One))
            {
                GP9 |= One
            }
            Else
            {
                GP9 &= Zero
            }

            If ((Arg0 == GP9))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Local0 = Package (0x0C)
                {
                    "model", 
                    Buffer (0x29)
                    {
                        "Intel i218V PCI Express Gigabit Ethernet"
                    }, 

                    "name", 
                    Buffer (0x14)
                    {
                        "Ethernet Controller"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x01                                             // .
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xA1, 0x15, 0x00, 0x00                           // ....
                    }, 

                    "subsystem-id", 
                    Buffer (0x04)
                    {
                         0x00, 0xE0, 0x00, 0x00                           // ....
                    }, 

                    "subsystem-vendor-id", 
                    Buffer (0x04)
                    {
                         0x58, 0x14, 0x00, 0x00                           // X...
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

    Name (_SB.PCI0.GLAN._STA, Zero)  // _STA: Status
}

