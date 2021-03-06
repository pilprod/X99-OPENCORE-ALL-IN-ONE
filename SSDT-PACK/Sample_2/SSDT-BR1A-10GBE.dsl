/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLBsFSuQ.aml, Sun Nov  1 14:25:26 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001BE (446)
 *     Revision         0x02
 *     Checksum         0x52
 *     OEM ID           "mano"
 *     OEM Table ID     "10GBE"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "mano", "10GBE", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.BR1A, DeviceObj)
    External (_SB_.PCI0.BR1A.H000, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Device (_SB.PCI0.BR1A.LANX)
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

            Local0 = Package (0x12)
                {
                    "AAPL,slot-name", 
                    Buffer (0x0C)
                    {
                        "PCIE Slot 4"
                    }, 

                    "reg-ltrovr", 
                    Buffer (0x08)
                    {
                         0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                             // .
                    }, 

                    "name", 
                    Buffer (0x33)
                    {
                        "ASUS XG-C100C Aquantia AQC107 10-Gigabit Ethernet"
                    }, 

                    "model", 
                    Buffer (0x11)
                    {
                        "Apple AQC107-AFW"
                    }, 

                    "location", 
                    Buffer (0x02)
                    {
                        "1"
                    }, 

                    "subsystem-id", 
                    Buffer (0x04)
                    {
                         0x41, 0x87, 0x00, 0x00                           // A...
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xB1, 0x07, 0x00, 0x00                           // ....
                    }, 

                    "subsystem-vendor-id", 
                    Buffer (0x04)
                    {
                         0x43, 0x10, 0x00, 0x00                           // C...
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

    Name (_SB.PCI0.BR1A.H000._STA, Zero)  // _STA: Status
}

