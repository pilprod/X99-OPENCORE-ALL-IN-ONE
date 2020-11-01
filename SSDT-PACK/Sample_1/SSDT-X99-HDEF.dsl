/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLT40hZU.aml, Sun Nov  1 15:10:58 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001D2 (466)
 *     Revision         0x01
 *     Checksum         0x0A
 *     OEM ID           "KGP"
 *     OEM Table ID     "X99HDEF"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X99HDEF", 0x00001000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.ALZA, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PCI0)
    {
        Scope (ALZA)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (HDEF)
        {
            Name (_ADR, 0x001B0000)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x16)
                    {
                        "alc-layout-id", 
                        Buffer (0x04)
                        {
                             0x05, 0x00, 0x00, 0x00                           // ....
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
                        Buffer (0x17)
                        {
                            "ASUS X99-A II HD Audio"
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
                        Buffer (0x14)
                        {
                            "HD Audio Controller"
                        }, 

                        "name", 
                        Buffer (0x22)
                        {
                            "Realtek ALC 1150 Audio Controller"
                        }, 

                        "PinConfigurations", 
                        Buffer (Zero){}
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}

