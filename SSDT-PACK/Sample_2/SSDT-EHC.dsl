/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLgEfLec.aml, Sun Nov  1 14:26:17 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000448 (1096)
 *     Revision         0x01
 *     Checksum         0x95
 *     OEM ID           "mano"
 *     OEM Table ID     "ami99ehc"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 1, "mano", "ami99ehc", 0x00003000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.EHC1, DeviceObj)
    External (_SB_.PCI0.EHC2, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Device (_SB.PCI0.EH01)
    {
        Name (_ADR, 0x001D0000)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Local0 = Package (0x1A)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x26, 0x8D, 0x00, 0x00                           // &...
                    }, 

                    "subsystem-id", 
                    Buffer (0x04)
                    {
                         0x70, 0x72, 0x00, 0x00                           // pr..
                    }, 

                    "subsystem-vendor-id", 
                    Buffer (0x04)
                    {
                         0x86, 0x80, 0x00, 0x00                           // ....
                    }, 

                    "AAPL,current-available", 
                    0x0834, 
                    "AAPL,current-extra", 
                    0x0898, 
                    "AAPL,current-extra-in-sleep", 
                    0x0640, 
                    "AAPL,device-internal", 
                    0x02, 
                    "AAPL,max-port-current-in-sleep", 
                    0x0834, 
                    "name", 
                    Buffer (0x16)
                    {
                        "Intel EHC1 Controller"
                    }, 

                    "model", 
                    Buffer (0x3E)
                    {
                        "Intel C610/X99 Series Chipset USB Enhanced Host Controller #1"
                    }, 

                    "device_type", 
                    Buffer (0x0F)
                    {
                        "USB Controller"
                    }, 

                    "AAPL,clock-id", 
                    Buffer (0x05)
                    {
                        "0x01"
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

    Name (_SB.PCI0.EHC1._STA, Zero)  // _STA: Status
    Device (_SB.PCI0.EH02)
    {
        Name (_ADR, 0x001A0000)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Local0 = Package (0x1A)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x2D, 0x8D, 0x00, 0x00                           // -...
                    }, 

                    "subsystem-id", 
                    Buffer (0x04)
                    {
                         0x70, 0x72, 0x00, 0x00                           // pr..
                    }, 

                    "subsystem-vendor-id", 
                    Buffer (0x04)
                    {
                         0x86, 0x80, 0x00, 0x00                           // ....
                    }, 

                    "AAPL,current-available", 
                    0x0834, 
                    "AAPL,current-extra", 
                    0x0898, 
                    "AAPL,current-extra-in-sleep", 
                    0x0640, 
                    "AAPL,device-internal", 
                    0x02, 
                    "AAPL,max-port-current-in-sleep", 
                    0x0834, 
                    "name", 
                    Buffer (0x16)
                    {
                        "Intel EHC2 Controller"
                    }, 

                    "model", 
                    Buffer (0x3E)
                    {
                        "Intel C610/X99 Series Chipset USB Enhanced Host Controller #2"
                    }, 

                    "device_type", 
                    Buffer (0x0F)
                    {
                        "USB Controller"
                    }, 

                    "AAPL,clock-id", 
                    Buffer (0x05)
                    {
                        "0x01"
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

    Name (_SB.PCI0.EHC2._STA, Zero)  // _STA: Status
}

