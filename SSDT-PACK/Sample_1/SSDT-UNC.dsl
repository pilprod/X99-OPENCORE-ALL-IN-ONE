/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLWX9qns.aml, Sun Nov  1 14:26:17 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000054 (84)
 *     Revision         0x02
 *     Checksum         0xAA
 *     OEM ID           "ACDT"
 *     OEM Table ID     "UNC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "UNC", 0x00000000)
{
    External (_SB_.UNC0, DeviceObj)
    External (PRBM, IntObj)

    Scope (_SB.UNC0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            PRBM = Zero
        }
    }
}

