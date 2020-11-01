/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLYmggPy.aml, Sun Nov  1 14:26:17 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000017D (381)
 *     Revision         0x01
 *     Checksum         0x9D
 *     OEM ID           "mano"
 *     OEM Table ID     "ami99sat"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "mano", "ami99sat", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.SAT1, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Device (_SB.PCI0.SATA)
    {
        Name (_ADR, 0x001F0002)  // _ADR: Address
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

                    "built-in", 
                    Buffer (0x05)
                    {
                        "0x00"
                    }, 

                    "name", 
                    Buffer (0x16)
                    {
                        "Intel AHCI Controller"
                    }, 

                    "model", 
                    Buffer (0x2F)
                    {
                        "Intel 99 Series Chipset Family SATA Controller"
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci8086,8d02"
                    }, 

                    "device_type", 
                    Buffer (0x10)
                    {
                        "AHCI Controller"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x02, 0x8D, 0x00, 0x00                           // ....
                    }
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }

    Name (_SB.PCI0.SAT1._STA, Zero)  // _STA: Status
}

