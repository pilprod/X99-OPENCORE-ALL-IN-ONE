/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLGM5Uul.aml, Sun Nov  1 14:26:17 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000CB (203)
 *     Revision         0x01
 *     Checksum         0xF3
 *     OEM ID           "mano"
 *     OEM Table ID     "XCPM"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "mano", "XCPM", 0x00003000)
{
    External (_SB_.SCK0.CP00, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.SCK0.CP00)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b")))
            {
                Debug = "Writing plugin-type to Registry!"
                Local0 = Package (0x02)
                    {
                        "plugin-type", 
                        One
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            }
            Else
            {
                Local0 = Package (0x02)
                    {
                        "No-Plugin", 
                        Zero
                    }
            }

            Return (Local0)
        }
    }
}

