/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLFC7fIt.aml, Sun Nov  1 14:26:17 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000160 (352)
 *     Revision         0x01
 *     Checksum         0xFE
 *     OEM ID           "mano"
 *     OEM Table ID     "IMEI"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "mano", "IMEI", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.HECI, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Device (_SB.PCI0.IMEI)
    {
        Name (_ADR, 0x00160000)  // _ADR: Address
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
                         0x3A, 0x1E, 0x00, 0x00                           // :...
                    }, 

                    "name", 
                    Buffer (0x0D)
                    {
                        "pci8086,8d3a"
                    }, 

                    "model", 
                    Buffer (0x3C)
                    {
                        "Intel Corporation C610/X99 series chipset MEI Controller #1"
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci8086,1e3a"
                    }
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }

    Name (_SB.PCI0.HECI._STA, Zero)  // _STA: Status
}

