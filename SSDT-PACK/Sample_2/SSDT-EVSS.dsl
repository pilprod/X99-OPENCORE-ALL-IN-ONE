/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLfMqepQ.aml, Sun Nov  1 14:26:17 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000153 (339)
 *     Revision         0x01
 *     Checksum         0xC7
 *     OEM ID           "mano"
 *     OEM Table ID     "X99EVSS"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 1, "mano", "X99EVSS", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.EVSS, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Method (_SB.PCI0.EVSS._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
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
                Buffer (0x17)
                {
                    "Intel sSata Controller"
                }, 

                "model", 
                Buffer (0x30)
                {
                    "Intel 99 Series Chipset Family sSATA Controller"
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,8d62"
                }, 

                "device_type", 
                Buffer (0x10)
                {
                    "AHCI Controller"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x62, 0x8D, 0x00, 0x00                           // b...
                }
            }
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }
}

