/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLliM3eo.aml, Sun Nov  1 14:26:17 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000059 (89)
 *     Revision         0x01
 *     Checksum         0x64
 *     OEM ID           "mano"
 *     OEM Table ID     "MCEH"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 1, "mano", "MCEH", 0x00003000)
{
    External (_SB_.PCI0, DeviceObj)

    Scope (_SB)
    {
        Device (MCEH)
        {
            Name (_HID, EisaId ("APP0006"))  // _HID: Hardware ID
            Name (_GPE, 0x17)  // _GPE: General Purpose Events
            Name (_STA, 0x0B)  // _STA: Status
        }
    }
}

