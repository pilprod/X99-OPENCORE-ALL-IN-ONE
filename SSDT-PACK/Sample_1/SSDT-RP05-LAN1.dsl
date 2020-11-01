/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLfqp3vV.aml, Sun Nov  1 14:26:17 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000189 (393)
 *     Revision         0x01
 *     Checksum         0xCB
 *     OEM ID           "MANO"
 *     OEM Table ID     "LAN1"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "MANO", "LAN1", 0x00003000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.RP05, DeviceObj)
    External (_SB_.PCI0.RP05.D086, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Device (_SB.PCI0.RP05.LAN1)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Name (_SUN, 0x02)  // _SUN: Slot User Number
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
                    Buffer (0x14)
                    {
                        "Ethernet Controller"
                    }, 

                    "name", 
                    Buffer (0x3B)
                    {
                        "Qualcomm Atheros Killer E2200 PCI Express Gigabit Ethernet"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x02                                             // .
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x91, 0xE0, 0x00, 0x00                           // ....
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

    Name (_SB.PCI0.RP05.D086._STA, Zero)  // _STA: Status
}

