/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLX40MKB.aml, Sun Nov  1 14:25:43 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001B3 (435)
 *     Revision         0x01
 *     Checksum         0xC2
 *     OEM ID           "mano"
 *     OEM Table ID     "NVME"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "mano", "NVME", 0x00003000)
{
    External (_SB_.PCI0.BR3A, DeviceObj)
    External (_SB_.PCI0.BR3A.D081, DeviceObj)
    External (_SB_.PCI0.BR3A.H000, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Device (_SB.PCI0.BR3A.SSD0)
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
                    "use-msi", 
                    Buffer (One)
                    {
                         0x01                                             // .
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x0B)
                    {
                        "PCI Slot 4"
                    }, 

                    "built-in", 
                    Buffer (0x09)
                    {
                        "NVMe SSD"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x01, 0xA8, 0x00, 0x00                           // ....
                    }, 

                    "class-code", 
                    Buffer (0x04)
                    {
                         0x02, 0x08, 0x01, 0x00                           // ....
                    }, 

                    "name", 
                    Buffer (0x06)
                    {
                        "SM960"
                    }, 

                    "model", 
                    Buffer (0x1A)
                    {
                        "Samsung SSD 960 PRO 512GB"
                    }, 

                    "device_type", 
                    Buffer (0x17)
                    {
                        "NVM Express Controller"
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

    Name (_SB.PCI0.BR3A.H000._STA, Zero)  // _STA: Status
    Name (_SB.PCI0.BR3A.D081._STA, Zero)  // _STA: Status
}

