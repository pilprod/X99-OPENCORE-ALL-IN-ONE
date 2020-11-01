/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLgw2pKe.aml, Sun Nov  1 14:29:51 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000018D (397)
 *     Revision         0x01
 *     Checksum         0x74
 *     OEM ID           "MANO"
 *     OEM Table ID     "ami8arp1"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "MANO", "ami8arp1", 0x00003000)
{
    External (_SB_.PCI0.RP04, DeviceObj)
    External (_SB_.PCI0.RP04.D076, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Device (_SB.PCI0.RP04.ARPT)
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

            Local0 = Package (0x0E)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xB1, 0x43, 0x00, 0x00                           // .C..
                    }, 

                    "built-in", 
                    Buffer (0x05)
                    {
                        "0x00"
                    }, 

                    "reg-ltrovr", 
                    Buffer (0x08)
                    {
                         0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                    }, 

                    "name", 
                    Buffer (0x05)
                    {
                        "ARPT"
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

    Name (_SB.PCI0.RP04.D076._STA, Zero)  // _STA: Status
}

