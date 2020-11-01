/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLEmNc7Q.aml, Sun Nov  1 14:26:17 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000180 (384)
 *     Revision         0x01
 *     Checksum         0x99
 *     OEM ID           "MANO"
 *     OEM Table ID     "SSD0"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "MANO", "SSD0", 0x00003000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.RP01, DeviceObj)
    External (_SB_.PCI0.RP01.D073, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Device (_SB.PCI0.RP01.SSD0)
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
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "built-in", 
                    Buffer (0x05)
                    {
                        "0x00"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x01, 0xA8, 0x00, 0x00                           // ....
                    }, 

                    "subsystem-id", 
                    Buffer (0x04)
                    {
                         0x01, 0xA8, 0x00, 0x00                           // ....
                    }, 

                    "subsystem-vendor-id", 
                    Buffer (0x04)
                    {
                         0x4D, 0x14, 0x00, 0x00                           // M...
                    }, 

                    "reg-ltrovr", 
                    Buffer (0x08)
                    {
                         0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                    }, 

                    "name", 
                    Buffer (0x06)
                    {
                        "SM951"
                    }, 

                    "model", 
                    Buffer (0x1B)
                    {
                        "SAMSUNG MZHPV256HDGL-000H1"
                    }
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }

    Name (_SB.PCI0.RP01.D073._STA, Zero)  // _STA: Status
}

