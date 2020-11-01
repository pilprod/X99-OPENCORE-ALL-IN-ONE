/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLz0qJH6.aml, Sun Nov  1 14:26:17 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000262 (610)
 *     Revision         0x01
 *     Checksum         0x96
 *     OEM ID           "mano"
 *     OEM Table ID     "XHC1"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "mano", "XHC1", 0x00003000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.XHCI, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments
    External (IO80, IntObj)
    External (XHMD, IntObj)
    External (XSMB, IntObj)

    Device (_SB.PCI0.XHC1)
    {
        Name (_ADR, 0x00140000)  // _ADR: Address
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
                         0x31, 0x8D, 0x00, 0x00                           // 1...
                    }, 

                    "subsystem-id", 
                    Buffer (0x04)
                    {
                         0x70, 0x72, 0x00, 0x00                           // pr..
                    }, 

                    "subsystem-vendor-id", 
                    Buffer (0x04)
                    {
                         0x58, 0x14, 0x00, 0x00                           // X...
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
                    Buffer (0x15)
                    {
                        "Intel XHC Controller"
                    }, 

                    "model", 
                    Buffer (0x37)
                    {
                        "Intel 99 Series Chipset Family USB xHC Host Controller"
                    }, 

                    "device_type", 
                    Buffer (0x1F)
                    {
                        "USB eXtensible Host Controller"
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

    Name (_SB.PCI0.XHCI._STA, Zero)  // _STA: Status
}

