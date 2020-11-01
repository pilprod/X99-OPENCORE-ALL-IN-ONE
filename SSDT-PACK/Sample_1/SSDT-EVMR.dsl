/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLoAKy35.aml, Sun Nov  1 14:26:17 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000183 (387)
 *     Revision         0x01
 *     Checksum         0x91
 *     OEM ID           "mano"
 *     OEM Table ID     "SPSR"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "mano", "SPSR", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.EVMR, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Device (_SB.PCI0.SPSR)
    {
        Name (_ADR, 0x00110000)  // _ADR: Address
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

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x21, 0x9D, 0x00, 0x00                           // !...
                    }, 

                    "device_type", 
                    Buffer (0x16)
                    {
                        "Intel SPSR Controller"
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci8086,9d21"
                    }, 

                    "name", 
                    Buffer (0x1D)
                    {
                        "C610/X99 Series Chipset SPSR"
                    }, 

                    "model", 
                    Buffer (0x3B)
                    {
                        "Intel Corporation, C610/X99 Series Chipset SPSR Controller"
                    }
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }

    Name (_SB.PCI0.EVMR._STA, Zero)  // _STA: Status
}

