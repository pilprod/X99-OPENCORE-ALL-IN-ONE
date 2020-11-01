/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLPTwkBh.aml, Sun Nov  1 13:37:36 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001FC (508)
 *     Revision         0x01
 *     Checksum         0x15
 *     OEM ID           "mano"
 *     OEM Table ID     "ALZA"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "mano", "ALZA", 0x00003000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.ALZA, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Device (_SB.PCI0.HDEF)
    {
        Name (_ADR, 0x001B0000)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Local0 = Package (0x16)
                {
                    "layout-id", 
                    Buffer (0x04)
                    {
                         0x07, 0x00, 0x00, 0x00                           // ....
                    }, 

                    "MaximumBootBeepVolume", 
                    Buffer (One)
                    {
                         0xEF                                             // .
                    }, 

                    "MaximumBootBeepVolumeAlt", 
                    Buffer (One)
                    {
                         0xF1                                             // .
                    }, 

                    "multiEQDevicePresence", 
                    Buffer (0x04)
                    {
                         0x0C, 0x00, 0x01, 0x00                           // ....
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "model", 
                    Buffer (0x32)
                    {
                        "Intel C610/X99 Series Chipset HD Audio Controller"
                    }, 

                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-1"
                    }, 

                    "built-in", 
                    Buffer (0x05)
                    {
                        "0x00"
                    }, 

                    "device_type", 
                    Buffer (0x16)
                    {
                        "High Definition Audio"
                    }, 

                    "name", 
                    Buffer (0x10)
                    {
                        "Creative CA0132"
                    }, 

                    "PinConfigurations", 
                    Buffer (0x05)
                    {
                        "0x00"
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

    Name (_SB.PCI0.ALZA._STA, Zero)  // _STA: Status
}

