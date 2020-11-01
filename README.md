# X99 OPENCORE ALL-IN-ONE REPO

### My Spec EFI Folder, Installation manual, Benchmark and FAQ here:
https://github.com/pilprod/OPENCORE-GA-X99-Gaming-5.git

Repository ALL-IN-ONE (SSDT, Guides, Downloader link and more)

WARNING: This repository creating for faster building OpenCore wichout longer search information and files!


### DSDT

#### X99 Required Patches
| Comment | Find [HEX] | Replace [Hex] |
| :------ | :--------- | :----------- |
| `_OSI` &rarr; `XOSI` | `5F4F5349` | `584F5349` |
| `EC0_` &rarr; `EC__` | `4543305F` | `45435F5F` |
| `H_EC` &rarr; `EC__` | `485F4543` | `45435F5F` |
| `HEC1` &rarr; `IMEI` | `48454331` | `494D4549` |
| `IDER` &rarr; `MEID` | `49444552` | `4D454944` |
| `LPC0` &rarr; `LPCB` | `4C504330` | `4C504342` |
| `FPU_` &rarr; `MATH` | `4650555F` | `4D415448` |
| `TMR_` &rarr; `TIMR` | `544D525F` | `54494D52` |
| `PIC_` &rarr; `IPIC` | `5049435F` | `49504943` |
| `_DSM` &rarr; `XDSM` | `5F44534D` | `5844534D` |


### SSDT

#### Sample_1 (before creating for ASUS X99-A II motherboard)

Collection of X99 System `SSDTs` in path "/Sample_1/*.dsl"

| dsl File | Description |
| :------- | :---------- |
| `SSDT-X99-HDEF.dsl` | On-board Realtek ALC 1150 Audio controller HDEF PCI implementation |
| `SSDT-X99-ANS1.dsl` | On-board NVME controller ANS1 PCI implementation |
| `SSDT-X99-SAT1.dsl` | On-board AHCI SATA controller SAT1 PCI implementation |
| `SSDT-X99-EVSS.dsl` | On-board AHCI SATA controller EVSS PCI implementation |
| `SSDT-X99-USBX.dsl` | Fixes USB Power Errors during system boot |
| `SSDT-X99-XHCI.dsl` | Intel X99-A II Chipset USB3.0 extensible Host Controller XHCI PCI implementation |
| `SSDT-X99-XHC.dsl` | On-board ASMedia ASM1142 USB 3.1 Type-A & Type-C extensible Host Controller XHC2 PCI implementation |
| `SSDT-X99-ETH0.dsl` | On-board Intel i218-V 1GB NIC controlller ETH0 PCI implementation |
| `SSDT-X99-Vega-Frontier.dsl` | AMD Radeon RX Vega Frontier PCIe Slot-1 GFX0 and HDAU PCI implementation |
| `SSDT-X99-Vega64.dsl` | AMD Radeon RX Vega 64 PCIe Slot-1 GFX0 and HDAU PCI implementation (Sapphire Nitro+ RX Vega 64)  |
| `SSDT-X99-Vega56.dsl` | AMD Radeon RX Vega 56 PCIe Slot-1 GFX0 and HDAU PCI implementation (MSI RX VEGA 56 Air Boost OC |
| `SSDT-X99-RX580.dsl` | AMD Radeon RX 580 PCIe Slot-1 GFX0 and HDAU PCI implementation |
| `SSDT-X99-RX560.dsl` | AMD Radeon RX 560 PCIe Slot-1 GFX0 and HDAU PCI implementation |
| `SSDT-X99-Radeon-VII.dsl` | AMD Radeon VII PCIe Slot-1 GFX0 and HDAU PCI implementation for use with modified Whatevergreen Source Code distrubution also considering Radeon VII|
| `SSDT-X99-Nvidia.dsl` | Nvidia PCIe Slot-1 GFX0 and HDAU PCI implementation |
| `SSDT-X99-ARPT.dsl` | OSXWIFI Broadcom BCM94360CD BT/WIFI PCIe Slot-5 ARPT PCI implementation |
| `SSDT-X99-TB3HP.dsl` | GC-Titan Ridge/GC-Alpine Ridge/ASUS TBEX 3 TB3/USB-C Hotplug Injector Slot-4 PCI implementation |
| `SSDT-X99-ACQU.dsl` | Acquantia AQC107-AFW 10GB NIC PCIe Slot-6 XGBE PCI implementation |
| `SSDT-X99-X540-T1.dsl` | Intel X540-T1 10GB NIC PCIe Slot-6 XGBE PCI implementation |
| `SSDT-X99-P2EI0G-2T.dsl` | Small-Tree P2EI0G-2T 10GB NIC PCIe Slot-6 XGBE and XGBF PCI implementations |
| `SSDT-DTPG.dsl` | DTPG PCI implementation (required for all `SSDTs` listed above) |






## OpenCore Download Links

### OpenCore files with base Drivers (Latest version)
https://github.com/acidanthera/OpenCorePkg/releases/

### OpenCore GUI Resources and addition driver
https://github.com/acidanthera/OcBinaryData/archive/master.zip


## Utils

### MaciASL
https://github.com/acidanthera/MaciASL/releases/

### OpenCore Configurator
https://mackie100projects.altervista.org/download/occ/?wpdmdl=811&refresh=5f9e7ccdc6b9f1604222157






## GUIDES

### Guides for ALL

#### OpenCore Install Guide
https://dortania.github.io/OpenCore-Install-Guide/

#### Getting started with ACPI
https://dortania.github.io/Getting-Started-With-ACPI/

#### OpenCore Post-Install
https://dortania.github.io/OpenCore-Post-Install/

### Guides for X99 MotherBoards

#### Full Guide

##### MacOS High Sierra 10.13.6
https://www.tonymacx86.com/threads/how-to-build-your-own-imac-pro-successful-build-extended-guide.229353/

##### MacOS Mojave 10.14.6
https://www.tonymacx86.com/threads/imac-pro-x99-live-the-future-now-with-macos-10-14-mojave-successful-build-extended-guide.255117/

#### Kernel & Kext patch

##### OpenCore patch for X99/X299 motherboard 
https://www.insanelymac.com/forum/topic/341477-open-core-kernel-kext-patch-for-x99x299-motherboard/

##### !Clover! patch for X99 Xeon V3 Haswell-EP Mojave 10.14.x
https://www.insanelymac.com/forum/topic/340396-guide-x99-xeon-v3-haswell-ep-mojave-1014x-2019/





## LINKS







###  Intel Power Gadget
https://software.intel.com/content/dam/develop/external/us/en/documents/Intel-Power-Gadget-v3.7.0.dmg

### gfxutil
https://github.com/acidanthera/gfxutil/releases/tag/1.80b

### NVIDIA Web-driver
https://www.nvidia.com/download/driverResults.aspx/165189/

### NVIDIA CUDA
https://www.nvidia.com/ru-ru/drivers/cuda/418_163/macosx-cuda-418_163-driver/


## Kexts

###

### CpuTscSync
https://github.com/acidanthera/CpuTscSync/releases/
