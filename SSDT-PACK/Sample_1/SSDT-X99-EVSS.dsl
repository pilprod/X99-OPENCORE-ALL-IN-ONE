/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLqV4F8F.aml, Sun Nov  1 15:10:58 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000145 (325)
 *     Revision         0x01
 *     Checksum         0xDD
 *     OEM ID           "KGP"
 *     OEM Table ID     "X99EVSS"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X99EVSS", 0x00001000)
{
    External (_SB_.PCI0.EVSS, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (_SB.PCI0.EVSS)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
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
                    Buffer (0x1B)
                    {
                        "Intel X99 sSata Controller"
                    }, 

                    "model", 
                    Buffer (0x28)
                    {
                        "Intel X99-A II Chipset sSATA Controller"
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
}

