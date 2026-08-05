# Apple TV Aerial Screen Saver Videos

## Where They Live on Disk

```
/Library/Application Support/com.apple.idleassetsd/Customer/4KSDR240FPS/
```

That is the only tier with downloaded content on this machine.
Empty sibling folders exist for other quality tiers:

- `2KSDR/` — 1080p SDR
- `2KHDR/` — 1080p HDR
- `4KSDR/` — 4K SDR (standard frame rate)
- `4KHDR/` — 4K HDR
- `4KSDR240FPS/` — 4K SDR 240fps (active)

## Format

| Property | Value |
|----------|-------|
| Container | MOV (QuickTime) |
| Codec | HEVC (H.265) |
| Resolution | 3840 × 2160 (4K UHD) |
| Frame rate | ~240 fps (5994/25) |
| Color space | BT.709 |
| Color transfer | sRGB (IEC 61966-2-1) |
| Color range | TV (limited) |

## Catalog Metadata

- **Manifest:** `/Library/Application Support/com.apple.idleassetsd/Customer/entries.json`
- **Localized names:** `TVIdleScreenStrings.bundle/en.lproj/Localizable.nocache.strings`
- **SQLite index:** `/Library/Application Support/com.apple.idleassetsd/Aerial.sqlite`
- **Total catalog entries:** 137
- **Downloaded on this machine:** 4

## Downloaded Videos

| Name | Shot ID | File | Size | Duration |
|------|---------|------|------|----------|
| Antarctica's Southern Lights | GMT110_112NC_364D_1054_AURORA_ANTARCTICA | `03EC0F5E-...1182.mov` | 138 MB | 2m 17s |
| Tahiti Waves | TH_804_A001_8 | `8C31B06F-...48B9.mov` | 124 MB | 1m 24s |
| Redwoods | R013_C039_F01 | `97447D85-...5853.mov` | 576 MB | 5m 46s |
| Del Norte Coast Redwoods State Park, California | R010_C003_F01 | `AA5E82B9-...7275.mov` | 461 MB | 5m 7s |

**Total disk usage:** ~1.3 GB

## Downloading More Videos

Each entry in `entries.json` has a `url-4K-SDR-240FPS` field pointing to
`sylvan.apple.com`. Download with curl and place the file in the
`4KSDR240FPS/` directory using the entry's UUID as the filename:

```bash
UUID="<entry-id>"
URL="$(python3 -c '
import json
data = json.load(open('/Library/Application Support/com.apple.idleassetsd/Customer/entries.json'))
for a in data['assets']:
    if a["id"] == "$UUID":
        print(a["url-4K-SDR-240FPS"])
'"  )"

curl -o "/Library/Application Support/com.apple.idleassetsd/Customer/4KSDR240FPS/${UUID}.mov" "$URL"
```

You may need `sudo` to write into that directory.

## Full Catalog

All 137 entries, sorted alphabetically. ✅ = already downloaded.

| # | Name | Shot ID | Downloaded |
|---|------|---------|------------|
| 1 | Africa | GMT312_162NC_139M_1041_AFRICA_NIGHT | — |
| 2 | Alaskan Jellies Dark | A004_C012 | — |
| 3 | Alaskan Jellies Light | A003_C014 | — |
| 4 | Antarctica’s Southern Lights | GMT110_112NC_364D_1054_AURORA_ANTARCTICA | ✅ |
| 5 | Arizona’s Coal Mine Canyon | M013_C012_F01 | — |
| 6 | Australia | GMT060_117NC_363D_1034_AUSTRALIA | — |
| 7 | Barracuda Battery | BO_A018_C029 | — |
| 8 | Bumpheads | BO_A014_C008 | — |
| 9 | California | GMT306_139NC_139J_3066_CALI_TO_VEGAS | — |
| 10 | California Dolphin Pod | B002_C011 | — |
| 11 | California Kelp Forest | A016_C002 | — |
| 12 | California Wildflowers | W015_C006_F01 | — |
| 13 | California’s Carrizo Plain | W015_C010_F01 | — |
| 14 | California’s Temblor Range | W014_C018_F01 | — |
| 15 | Caribbean | GMT308_139K_142NC_CARIBBEAN_DAY | — |
| 16 | Caribbean Islands | A108_C001 | — |
| 17 | Caribbean Sea | A105_C002 | — |
| 18 | China Mountain Cliffs | CH_C007_C004 | — |
| 19 | China Mountains | CH_C007_C011 | — |
| 20 | China Night | GMT329_2_113NC_396B_1105 | — |
| 21 | China Paddy Field | CH_C002_C005 | — |
| 22 | China Silhouette | C003_C003 | — |
| 23 | China’s Great Wall | C004_C003 | — |
| 24 | China’s Great Wall Daylight | C001_C005 | — |
| 25 | Costa Rica Dolphin Pod | A009_C007 | — |
| 26 | Cownose Rays | A006_C008 | — |
| 27 | Dubai Creek | DB_D001_C005 | — |
| 28 | Dubai Creek Harbor | DB_D001_C001 | — |
| 29 | Dubai Night | DB_D011_C010 | — |
| 30 | Dubai Skyline | DB_D002_C003 | — |
| 31 | Dubai from Above | DB_D008_C010 | — |
| 32 | East Asia | GMT026_363A_103NC_E1027_KOREA_JAPAN_NIGHT | — |
| 33 | Europe Night | GMT329_117NC_401C_1037_IRELAND_TO_ASIA | — |
| 34 | Grand Canyon Evening | G007_C004 | — |
| 35 | Grand Canyon River Valley | G010_C026_0107KE | — |
| 36 | Grand Canyon Sediment | G009_C014_0106B9 | — |
| 37 | Grand Canyon Sunset | G009_C003_010678 | — |
| 38 | Grand Canyon from Above | G008_C015_0106MB | — |
| 39 | Gray Reef Sharks | U009_C004 | — |
| 40 | Greenland Coast | GL_G002_C002 | — |
| 41 | Greenland Evening | GL_G010_C006 | — |
| 42 | Greenland Glacier | GL_G004_C010 | — |
| 43 | Hawaii Clouds Dark | H004_C007 | — |
| 44 | Hawaii Clouds Light | H004_C009 | — |
| 45 | Hawaii Coastline | H007_C003 | — |
| 46 | Hawaii Ocean | H012_C009_0 | — |
| 47 | Hawaii Valley | H005_C012 | — |
| 48 | Hong Kong Harbor | HK_H004_C008 | — |
| 49 | Hong Kong Horizon | HK_H004_C010 | — |
| 50 | Hong Kong Night | HK_B005_C011 | — |
| 51 | Hong Kong Skyline | HK_H004_C013 | — |
| 52 | Humpback Whale | D004_L014 | — |
| 53 | Iceland Coast | I003_C004 | — |
| 54 | Iceland Fjord | I003_C011 | — |
| 55 | Iceland Fjord from Above | I004_C014 | — |
| 56 | Iceland Glacier | I003_C008 | — |
| 57 | Iceland Lake | I003_C005 | — |
| 58 | Iceland Riverbed | I003_C015 | — |
| 59 | Iceland Snow Caps | I005_C008 | — |
| 60 | Jack School | A014_C023 | — |
| 61 | Kelp Dark | KP_A010_C002 | — |
| 62 | Liwa Dune Fields | LW_L001_C006 | — |
| 63 | Liwa Horizon | LW_L001_C003 | — |
| 64 | London Evening | L012_C002 | — |
| 65 | London Skyline | L010_C006 | — |
| 66 | London Thames | L004_C011 | — |
| 67 | London from Above | L007_C007 | — |
| 68 | Los Angeles Airport | LA_A006_C008 | — |
| 69 | Los Angeles Beach | LA_A008_C004 | — |
| 70 | Los Angeles Hills | LA_A006_C004 | — |
| 71 | Los Angeles Night | LA_A011_C003 | — |
| 72 | Los Angeles Overpass | LA_A005_C009 | — |
| 73 | Los Angeles Sunset | LA_A009_C009 | — |
| 74 | Middle East | A083_C002_1130KZ | — |
| 75 | New York | GMT307_136NC_134K_8277_NY_NIGHT | — |
| 76 | New York Midtown | N003_C006 | — |
| 77 | New York Night | N013_C004 | — |
| 78 | New York Skyline | N008_C003 | — |
| 79 | New York from Above | N008_C009 | — |
| 80 | New Zealand | A105_C003_0212CT | — |
| 81 | Nile Delta | A050_C004_1027V8 | — |
| 82 | North Africa | A103_C002_0205DG | — |
| 83 | North America Aurora | GMT314_139M_170NC_NORTH_AMERICA_AURORA | — |
| 84 | North Atlantic | A001_C001_120530 | — |
| 85 | Oregon Coastline | R004_C012_F01 | — |
| 86 | Oregon Sunset | R006_C013_S05 | — |
| 87 | Palau Coral Colors | PA_A004_C003 | — |
| 88 | Palau Jellies Blue | PA_A002_C009 | — |
| 89 | Palau Jellies Dark | PA_A001_C007 | — |
| 90 | Palau Jellies Light | PA_A010_C007 | — |
| 91 | Patagonia Lake | P005_C002_1109E1 | — |
| 92 | Patagonia Mountain | P001_C005_11059D | — |
| 93 | Patagonia Range | P007_C027 | — |
| 94 | Patagonia River | P006_C002_11106T | — |
| 95 | Red Sea Coral from Above | A008_C010 | — |
| 96 | Redwoods River | R013_C039_F01 | ✅ |
| 97 | Redwoods from Above | R010_C003_F01 | ✅ |
| 98 | Sahara | A009_C001_10181A | — |
| 99 | San Francisco Bay | A006_C003 | — |
| 100 | San Francisco Evening | A007_C017 | — |
| 101 | San Francisco Fog | A008_C007 | — |
| 102 | San Francisco Night | A015_C018 | — |
| 103 | San Francisco Skyline | A012_C014 | — |
| 104 | San Francisco’s Ferry Building | A013_C004 | — |
| 105 | San Francisco’s Golden Gate Bridge | A013_C012 | — |
| 106 | Scotland Castle | S006_C007 | — |
| 107 | Scotland Coast | S003_C020 | — |
| 108 | Scotland Loch | S005_C015 | — |
| 109 | Sea Stars | A012_C031 | — |
| 110 | Seal Pod | SE_A016_C009 | — |
| 111 | Sequoia Morning | A010_C0005 | — |
| 112 | Sequoia Night | A018_C0002 | — |
| 113 | Sequoia Sunrise | A007_C0001 | — |
| 114 | Sonoma Clouds | S011_C003_F01 | — |
| 115 | Sonoma Evening | S013_C001_F01 | — |
| 116 | Sonoma Horizon | W010_C003_F01 | — |
| 117 | Sonoma River | S005_C013_F01 | — |
| 118 | Sonoma from Above | S009_C018_F01 | — |
| 119 | South Africa | A351_C001_1213SK | — |
| 120 | Southern California | A114_C001 | — |
| 121 | Southern Europe Night | GMT329_113NC_396B_1105_ITALY_TO_ASIA | — |
| 122 | Tahiti Coast | TH_804_A001_8 | ✅ |
| 123 | Tahiti Waves Mist | TH_803_A001_8 | — |
| 124 | Utah Evening | M012_C065_S04 | — |
| 125 | Utah’s Cathedral Canyon | M010_C005_F01 | — |
| 126 | Utah’s Factory Butte | M012_C023_S04 | — |
| 127 | Utah’s Lake Powell | M010_C009_F01 | — |
| 128 | Utah’s Monument Valley | M007_C007_F01 | — |
| 129 | Utah’s Olympia Bar | M005_C017_F01 | — |
| 130 | West Africa | A001_C004_1207W5 | — |
| 131 | Yosemite Clouds | Y005_C003_0228SC | — |
| 132 | Yosemite Horizon | Y002_C013_0226 | — |
| 133 | Yosemite Mountains | Y003_C009_027 | — |
| 134 | Yosemite Silhouette | Y004_C015_0227PD | — |
| 135 | Yosemite Snow Caps | Y011_C008_030584 | — |
| 136 | Yosemite Valley | Y011_C001_0305 | — |
| 137 | Yosemite from Above | Y009_C015_0304I | — |

## URLs for All Entries

Use these to download specific aerials. The UUID is the filename to use
when saving into the `4KSDR240FPS/` directory.

### A

**Africa** 
- UUID: `A837FA8C-C643-4705-AE92-074EFDD067F7`
- Shot: `GMT312_162NC_139M_1041_AFRICA_NIGHT`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_GMT312_162NC_139M_1041_AFRICA_NIGHT_v14_SDR_FINAL_20180706_FRC240fps_sdr_4k_qp23_240p_t2160_tsa.mov

**Alaskan Jellies Dark** 
- UUID: `C6DC4E54-1130-44F8-AF6F-A551D8E8A181`
- Shot: `A004_C012`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/AK_A004_C012_SDR_20191217_240fps_dbcfb14a-bb2b-4cf1-b171-acf85ce92960q20_sRGB_tsa.mov

**Alaskan Jellies Light** 
- UUID: `C7AD3D0A-7EDF-412C-A237-B3C9D27381A1`
- Shot: `A003_C014`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/AK_A003_C014_SDR_20191113_240fps_e63a81f1-412d-4a76-bb6e-370980b4bd80q26_sRGB_tsa.mov

**Antarctica’s Southern Lights** ✅
- UUID: `03EC0F5E-CCA8-4E0A-9FEC-5BD1CE151182`
- Shot: `GMT110_112NC_364D_1054_AURORA_ANTARCTICA`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_GMT110_112NC_364D_1054_AURORA_ANTARTICA__COMP_FINAL_v34_PS_SDR_20181107_240fps_747b215c-eab2-417b-affe-ba6407f14d81q17_sRGB_tsa.mov

**Arizona’s Coal Mine Canyon** 
- UUID: `47BC0599-72E7-43C4-8BE1-CBCE2432E2A5`
- Shot: `M013_C012_F01`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/M013_C012_F01_FRC240fps_sdr_4k_qp25_240p_t2160_grover401_tsa.mov

**Australia** 
- UUID: `81337355-E156-4242-AAF4-711768D30A54`
- Shot: `GMT060_117NC_363D_1034_AUSTRALIA`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_GMT060_117NC_363D_1034_AUSTRALIA_v35_SDR_PS_FINAL_20180731_FRC_sdr_4k_qp20_240p_t2160_tsa.mov

### B

**Barracuda Battery** 
- UUID: `2B30E324-E4FF-4CC1-BA45-A958C2D2B2EC`
- Shot: `BO_A018_C029`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/BO_A018_C029_SDR_20190812_240fps_7e014e89-e09c-4842-ae69-94c585f77aceq21_sRGB_tsa.mov

**Bumpheads** 
- UUID: `687D03A2-18A5-4181-8E85-38F3A13409B9`
- Shot: `BO_A014_C008`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/BO_A014_C008_SDR_20190719_FRC_sdr_4k_grover341qp32_240p_t2160_tsa.mov

### C

**California** 
- UUID: `12318CCB-3F78-43B7-A854-EFDCCE5312CD`
- Shot: `GMT306_139NC_139J_3066_CALI_TO_VEGAS`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_GMT306_139NC_139J_3066_CALI_TO_VEGAS_v08_SDR_PS_20180824_FRC_sdr_4k_qp24_240p_t2160_tsa.mov

**California Dolphin Pod** 
- UUID: `27A37B0F-738D-4644-A7A4-E33E7A6C1175`
- Shot: `B002_C011`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/DL_B002_C011_SDR_20191122_240fps_521bacfa-65b2-4938-92b1-4d069187ddfcq24_sRGB_tsa.mov

**California Kelp Forest** 
- UUID: `EB3F48E7-D30F-4079-858F-1A61331D5026`
- Shot: `A016_C002`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/CA_A016_C002_SDR_20191114_240fps_21aa64e8-2a10-48c8-bc1a-96e9fa872ef5q25_sRGB_tsa.mov

**California Wildflowers** 
- UUID: `473C2FDC-0B75-497A-B1FE-AA1863C9C885`
- Shot: `W015_C006_F01`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/W015_C006_F01_FRC_sdr_4k_qp28_240p_t2160_grover401_tsa.mov

**California’s Carrizo Plain** 
- UUID: `4A3590EC-FF30-41E7-85FE-210FF6112917`
- Shot: `W015_C010_F01`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/W015_C010_F01_clipF0F4200_sdr_4k_qp31_240p_t2160_grover401_tsa.mov

**California’s Temblor Range** 
- UUID: `F390FE3B-FA61-483D-BADC-2447F89951BA`
- Shot: `W014_C018_F01`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/W014_C018_F01_FRC_sdr_4k_qp29_240p_t2160_grover401_tsa.mov

**Caribbean** 
- UUID: `4F881F8B-A7D9-4FDB-A917-17BF6AC5A589`
- Shot: `GMT308_139K_142NC_CARIBBEAN_DAY`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_GMT308_139K_142NC_CARIBBEAN_DAY_v09_SDR_FINAL_22062018_240fps_dcf5f5e1-b86b-4f19-9a28-7ed9ac23cb51q19_sRGB_tsa.mov

**Caribbean Islands** 
- UUID: `D5CFB2FF-5F8C-4637-816B-3E42FC1229B8`
- Shot: `A108_C001`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/comp_A108_C001_v09_SDR_FINAL_22062018_240fps_cb12b871-5161-41a3-91e2-73b8a82f5425q21_sRGB_tsa.mov

**Caribbean Sea** 
- UUID: `1088217C-1410-4CF7-BDE9-8F573A4DBCD9`
- Shot: `A105_C002`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_A105_C002_v06_SDR_FINAL_25062018_FRC240fps_sdr_4k_qp24_240p_t2160_tsa.mov

**China Mountain Cliffs** 
- UUID: `D5E76230-81A3-4F65-A1BA-51B8CADED625`
- Shot: `CH_C007_C004`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_CH_C007_C004_PSNK_v02_SDR_PS_FINAL_20180709_FRC_sdr_4k_qp26_240p_t2160_tsa.mov

**China Mountains** 
- UUID: `B876B645-3955-420E-99DF-60139E451CF3`
- Shot: `CH_C007_C011`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_CH_C007_C011_PSNK_v02_SDR_PS_FINAL_20180709_FRC_sdr_4k_qp25_240p_t2160_tsa.mov

**China Night** 
- UUID: `6324F6EB-E0F1-468F-AC2E-A983EBDDD53B`
- Shot: `GMT329_2_113NC_396B_1105`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_GMT329_113NC_396B_1105_CHINA_v04_SDR_FINAL_20180706_FRC_sdr_4k_grover402qp24_240p_t2160_tsa.mov

**China Paddy Field** 
- UUID: `9CCB8297-E9F5-4699-AE1F-890CFBD5E29C`
- Shot: `CH_C002_C005`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_CH_C002_C005_PSNK_v05_SDR_PS_FINAL_20180709_FRC240fps_sdr_4k_qp26_240p_t2160_tsa.mov

**China Silhouette** 
- UUID: `044AD56C-A107-41B2-90CC-E60CCACFBCF5`
- Shot: `C003_C003`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_C003_C003_PS_v01_SDR_PS_20180925_FRC240fps_sdr_4k_qp17_240p_t2160_tsa.mov

**China’s Great Wall** 
- UUID: `22162A9B-DB90-4517-867C-C676BC3E8E95`
- Shot: `C004_C003`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_C004_C003_PS_v01_SDR_PS_20180925_240fps_8a74d51b-9b6c-4cde-8286-1108585c6aabq17_tsa_sRGB.mov

**China’s Great Wall Daylight** 
- UUID: `F0236EC5-EE72-4058-A6CE-1F7D2E8253BF`
- Shot: `C001_C005`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_C001_C005_PS_v01_SDR_PS_20180925_FRC_sdr_4k_qp21_240p_t2160_tsa.mov

**Costa Rica Dolphin Pod** 
- UUID: `CE9B5D5B-B6E7-47C5-8C04-59BF182E98FB`
- Shot: `A009_C007`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/CR_A009_C007_SDR_20191113_FRC240fps_dpmdq17_tsa.mov

**Cownose Rays** 
- UUID: `58C75C62-3290-47B8-849C-56A583173570`
- Shot: `A006_C008`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/MEX_A006_C008_SDR_20190923_FRC_sdr_4k_qp25_240p_t2160_tsa.mov

### D

**Dubai Creek** 
- UUID: `3FFA2A97-7D28-49EA-AA39-5BC9051B2745`
- Shot: `DB_D001_C005`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_DB_D001_C005_COMP_PSNK_v12_SDR_PS_20180912_FRC_sdr_4k_qp26_240p_t2160_tsa.mov

**Dubai Creek Harbor** 
- UUID: `E991AC0C-F272-44D8-88F3-05F44EDFE3AE`
- Shot: `DB_D001_C001`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_DB_D001_C001_PSNK_v06_SDR_PS_20180824_sdr_4k_qp27_240p_t2160_tsa.mov

**Dubai Night** 
- UUID: `9680B8EB-CE2A-4395-AF41-402801F4D6A6`
- Shot: `DB_D011_C010`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_DB_D011_C010_PSNK_DENOISE_v20_SDR_PS_20181009_240fps_07b415f6-c541-4cff-b7ab-b0087b315aecq24_tsa_sRGB.mov

**Dubai Skyline** 
- UUID: `00BA71CD-2C54-415A-A68A-8358E677D750`
- Shot: `DB_D002_C003`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_DB_D002_C003_PSNK_v04_SDR_PS_20180914_240fps_74088e40-f8e4-4876-920c-af0e62aa1a60q19_sRGB_tsa.mov

**Dubai from Above** 
- UUID: `876D51F4-3D78-4221-8AD2-F9E78C0FD9B9`
- Shot: `DB_D008_C010`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_DB_D008_C010_PSNK_v21_SDR_PS_20180914_sdr_4k_qp26_240p_t2160_tsa.mov

### E

**East Asia** 
- UUID: `009BA758-7060-4479-8EE8-FB9B40C8FB97`
- Shot: `GMT026_363A_103NC_E1027_KOREA_JAPAN_NIGHT`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_GMT026_363A_103NC_E1027_KOREA_JAPAN_NIGHT_v18_SDR_PS_20180907_240fps_0d0095d4-5875-4d43-a1a8-7dc915b11b9dq24_sRGB_tsa.mov

**Europe Night** 
- UUID: `7C643A39-C0B2-4BA0-8BC2-2EAA47CC580E`
- Shot: `GMT329_117NC_401C_1037_IRELAND_TO_ASIA`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_GMT329_117NC_401C_1037_IRELAND_TO_ASIA_v48_SDR_PS_FINAL_20180725_FRC240fps_sdr_4k_qp21_240p_t2160_tsa.mov

### G

**Grand Canyon Evening** 
- UUID: `E334A6D2-7145-47C8-9B00-C20DED08B2D5`
- Shot: `G007_C004`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/G007_C004_UHD_SDR_FRC240fps_sdr_4k_qp24_240p_t2160_tsa.mov

**Grand Canyon River Valley** 
- UUID: `8002C4C8-C611-4894-A068-3D3A3C03472A`
- Shot: `G010_C026_0107KE`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/G010_C026_UHD_SDR_v02_240fps_5e903ed6-1acf-495d-a0b5-8a9dd94df96bq26_sRGB_tsa.mov

**Grand Canyon Sediment** 
- UUID: `AE0115AE-C53B-4DB9-B12F-CA4B7B630CC9`
- Shot: `G009_C014_0106B9`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/G009_C014_UHD_SDR_FRC240fps_sdr_4k_qp20_240p_t2160_tsa.mov

**Grand Canyon Sunset** 
- UUID: `F9F918CD-E15F-4F01-A326-84A44650C5C9`
- Shot: `G009_C003_010678`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/G009_C003_UHD_SDR_FRC240fps_sdr_4k_qp20_240p_t2160_tsa.mov

**Grand Canyon from Above** 
- UUID: `DD266E1F-5DF2-4CDB-A2EB-26CE35664657`
- Shot: `G008_C015_0106MB`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/G008_C015_UHD_SDR_240fps_65f07d0e-f0bf-4e5d-8e09-71ff632c7b92q26_sRGB_tsa.mov

**Gray Reef Sharks** 
- UUID: `3716DD4B-01C0-4F5B-8DD6-DB771EC472FB`
- Shot: `U009_C004`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/FK_U009_C004_SDR_20191220_FRC_sdr_4k_qp18_240p_t2160_tsa.mov

**Greenland Coast** 
- UUID: `2F52E34C-39D4-4AB1-9025-8F7141FAA720`
- Shot: `GL_G002_C002`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_GL_G002_C002_PSNK_v03_SDR_PS_20180925_FRC240fps_sdr_4k_qp23_240p_t2160_tsa.mov

**Greenland Evening** 
- UUID: `EE01F02D-1413-436C-AB05-410F224A5B7B`
- Shot: `GL_G010_C006`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_GL_G010_C006_PSNK_NOSUN_v12_SDR_PS_FINAL_20180709_FRC240fps_sdr_4k_qp20_240p_t2160_tsa.mov

**Greenland Glacier** 
- UUID: `B8F204CE-6024-49AB-85F9-7CA2F6DCD226`
- Shot: `GL_G004_C010`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/comp_GL_G004_C010_PSNK_v04_SDR_PS_FINAL_20180709_240fps_54d7bb68-1b1d-4c05-9cd7-7eefd4de1b28q19_sRGB_tsa.mov

### H

**Hawaii Clouds Dark** 
- UUID: `82BD33C9-B6D2-47E7-9C42-AA3B7758921A`
- Shot: `H004_C007`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_H004_C007_PS_v02_SDR_PS_20180925_FRC_sdr_4k_qp19_240p_t2160_tsa.mov

**Hawaii Clouds Light** 
- UUID: `258A6797-CC13-4C3A-AB35-4F25CA3BF474`
- Shot: `H004_C009`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_H004_C009_PS_v01_SDR_PS_20180925_FRC240fps_sdr_4k_qp19_240p_t2160_tsa.mov

**Hawaii Coastline** 
- UUID: `12E0343D-2CD9-48EA-AB57-4D680FB6D0C7`
- Shot: `H007_C003`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/comp_H007_C003_PS_v01_SDR_PS_20180925_240fps_ad61d98e-fb4b-41c7-b981-9ff4b8a2ef27q25_sRGB_tsa.mov

**Hawaii Ocean** 
- UUID: `3D729CFC-9000-48D3-A052-C5BD5B7A6842`
- Shot: `H012_C009_0`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_H012_C009_PS_v01_SDR_PS_20180925_FRC_sdr_4k_qp24_240p_t2160_tsa.mov

**Hawaii Valley** 
- UUID: `499995FA-E51A-4ACE-8DFD-BDF8AFF6C943`
- Shot: `H005_C012`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_H005_C012_PS_v01_SDR_PS_20180925_FRC_sdr_4k_qp26_240p_t2160_tsa.mov

**Hong Kong Harbor** 
- UUID: `FE8E1F9D-59BA-4207-B626-28E34D810D0A`
- Shot: `HK_H004_C008`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_HK_H004_C008_PSNK_v19_SDR_PS_20180914_fcp_sharpen1p7_FRC240fps_sdr_4k_qp26_240p_t2160_tsa.mov

**Hong Kong Horizon** 
- UUID: `C8559883-6F3E-4AF2-8960-903710CD47B7`
- Shot: `HK_H004_C010`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_HK_H004_C010_PSNK_v08_SDR_PS_20181009_FRC_sdr_4k_qp18_240p_t2160_tsa.mov

**Hong Kong Night** 
- UUID: `E99FA658-A59A-4A2D-9F3B-58E7BDC71A9A`
- Shot: `HK_B005_C011`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_HK_B005_C011_PSNK_v16_SDR_PS_20180914_FRC_sdr_4k_grover401qp27_240p_t2160_tsa.mov

**Hong Kong Skyline** 
- UUID: `024891DE-B7F6-4187-BFE0-E6D237702EF0`
- Shot: `HK_H004_C013`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_HK_H004_C013_v05_FRC_sdr_4k_qp26_240p_t2160_tsa.mov

**Humpback Whale** 
- UUID: `DD47D8E1-CB66-4C12-BFEA-2ADB0D8D1E2E`
- Shot: `D004_L014`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/WH_D004_L014_SDR_20191031_240fps_39bd3ba0-b3c3-4d46-8daa-ec23be081676q24_sRGB_tsa.mov

### I

**Iceland Coast** 
- UUID: `8590D0C5-E344-4FAC-A39A-FD7BC652AEDA`
- Shot: `I003_C004`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/I003_C004_UHD_SDR_FRC240fps_sdr_4k_qp22_240p_t2160_tsa.mov

**Iceland Fjord** 
- UUID: `E54D5AFE-F362-4D48-A20D-F2C21D2B5330`
- Shot: `I003_C011`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/I003_C011_0623P8_UHD_SDR_FRC240fps_sdr_4k_qp22_240p_t2160_tsa.mov

**Iceland Fjord from Above** 
- UUID: `8ACF5D77-B22C-416F-B12A-72FB35E2834F`
- Shot: `I004_C014`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/I004_C014_UHD_SDR_FRC240fps_sdr_4k_qp20_240p_t2160_tsa.mov

**Iceland Glacier** 
- UUID: `DDE50C77-B7CB-4488-9EB1-D1B13BF21FFE`
- Shot: `I003_C008`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/I003_C008__0623CJ_UHD_SDR_240fps_ace2a32f-f189-4206-ba4c-e395fb1b4ea4q23_sRGB_tsa.mov

**Iceland Lake** 
- UUID: `D7950C0A-27B9-4034-AB5B-EDB89D41341A`
- Shot: `I003_C005`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/I003_C005_UHD_SDR_240fps_10d589e5-2709-4c6d-8ae0-a3e0e1e1cb37q18_sRGB_tsa.mov

**Iceland Riverbed** 
- UUID: `F9518D54-04A7-4793-8666-CFC114D73CE5`
- Shot: `I003_C015`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/I003_C015_UHD_SDR_FRC240fps_sdr_4k_qp22_240p_t2160_tsa.mov

**Iceland Snow Caps** 
- UUID: `2F17FCCE-6CCA-4AFA-A08A-C50BF9812DA5`
- Shot: `I005_C008`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/I005_C008_CROP_UHD_SDR_FRC240fps_sdr_4k_qp21_240p_t2160_tsa.mov

### J

**Jack School** 
- UUID: `537A4DAB-83B0-4B66-BCD1-05E5DBB4A268`
- Shot: `A014_C023`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/BO_A014_C023_SDR_20190717_240fps_fc33a391-4b78-41be-b2f4-8e66ff4568c6q29_sRGB_tsa.mov

### K

**Kelp Dark** 
- UUID: `6143116D-03BB-485E-864E-A8CF58ACF6F1`
- Shot: `KP_A010_C002`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/KP_A010_C002_SDR_20190717_FRC_sdr_4k_qp16_240p_t2160_tsa.mov

### L

**Liwa Dune Fields** 
- UUID: `001C94AE-2BA4-4E77-A202-F7DE60E8B1C8`
- Shot: `LW_L001_C006`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_LW_L001_C006_PSNK_DENOISE_v02_SDR_PS_FINAL_20180709_FRC_sdr_4k_qp20_240p_t2160_tsa.mov

**Liwa Horizon** 
- UUID: `AFA22C08-A486-4CE8-9A13-E355B6C38559`
- Shot: `LW_L001_C003`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_LW_L001_C003__PSNK_DENOISE_v04_SDR_PS_FINAL_20180803_FRC_sdr_4k_qp22_240p_t2160_tsa.mov

**London Evening** 
- UUID: `F604AF56-EA77-4960-AEF7-82533CC1A8B3`
- Shot: `L012_C002`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/comp_L012_c002_PS_v01_SDR_PS_20180925_240fps_cfbcb818-c9b3-42bd-9e77-9c940f73f01aq19_sRGB_tsa.mov

**London Skyline** 
- UUID: `58754319-8709-4AB0-8674-B34F04E7FFE2`
- Shot: `L010_C006`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_L010_C006_PS_v01_SDR_PS_20180925_sdr_4k_qp19_240p_t2160_tsa.mov

**London Thames** 
- UUID: `7F4C26C2-67C2-4C3A-8F07-8A7BF6148C97`
- Shot: `L004_C011`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_L004_C011_PS_v01_SDR_PS_20180925_FRC_sdr_4k_qp21_240p_t2160_tsa.mov

**London from Above** 
- UUID: `A5AAFF5D-8887-42BB-8AFD-867EF557ED85`
- Shot: `L007_C007`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_L007_C007_PS_v01_SDR_PS_20180925_FRC_sdr_4k_qp25_240p_t2160_tsa.mov

**Los Angeles Airport** 
- UUID: `CE279831-1CA7-4A83-A97B-FF1E20234396`
- Shot: `LA_A006_C008`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_LA_A006_C008_PSNK_ALL_LOGOS_v10_SDR_PS_FINAL_20180801_240fps_a9350064-5869-41c2-9422-05f93a075390q23_sRGB_tsa.mov

**Los Angeles Beach** 
- UUID: `92E48DE9-13A1-4172-B560-29B4668A87EE`
- Shot: `LA_A008_C004`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_LA_A008_C004_ALTB_ED_FROM_FLAME_RETIME_v46_SDR_PS_20180917_fcp_sharpen2p5_FRC240fps_sdr_4k_qp23_240p_t2160_tsa.mov

**Los Angeles Hills** 
- UUID: `EC67726A-8212-4C5E-83CF-8412932740D2`
- Shot: `LA_A006_C004`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_LA_A006_C004_v01_SDR_FINAL_PS_20180730_FRC_sdr_4k_qp18_240p_t2160_tsa.mov

**Los Angeles Night** 
- UUID: `F5804DD6-5963-40DA-9FA0-39C0C6E6DEF9`
- Shot: `LA_A011_C003`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_LA_A011_C003_DGRN_LNFIX_STAB_v57_SDR_PS_20181002_FRC_sdr_4k_qp24_240p_t2160_tsa.mov

**Los Angeles Overpass** 
- UUID: `35693AEA-F8C4-4A80-B77D-C94B20A68956`
- Shot: `LA_A005_C009`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_LA_A005_C009_PSNK_ALT_v09_SDR_PS_201809134_240fps_bacf2a31-3a9a-4fe2-ba3b-cce4aa6855d4q21_sRGB_tsa.mov

**Los Angeles Sunset** 
- UUID: `89B1643B-06DD-4DEC-B1B0-774493B0F7B7`
- Shot: `LA_A009_C009`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_LA_A009_C009_PSNK_v02_SDR_PS_FINAL_20180709_FRC_sdr_4k_qp14_240p_t2160_tsa.mov

### M

**Middle East** 
- UUID: `F439B0A7-D18C-4B14-9681-6520E6A74FE9`
- Shot: `A083_C002_1130KZ`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_A083_C002_1130KZ_v04_SDR_PS_FINAL_20180725_240fps_8572bbed-c0af-4af1-b604-d272a4253d3aq13_sRGB_tsa.mov

### N

**New York** 
- UUID: `B1B5DDC5-73C8-4920-8133-BACCE38A08DE`
- Shot: `GMT307_136NC_134K_8277_NY_NIGHT`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_GMT307_136NC_134K_8277_NY_NIGHT_01_v25_SDR_PS_20180907_FRC240fps_sdr_4k_qp20_240p_t2160_tsa.mov

**New York Midtown** 
- UUID: `840FE8E4-D952-4680-B1A7-AC5BACA2C1F8`
- Shot: `N003_C006`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_N003_C006_PS_v01_SDR_PS_20180925_240fps_d5d9b36c-937b-45b5-b57c-d532c300fc07q20_sRGB_tsa.mov

**New York Night** 
- UUID: `44166C39-8566-4ECA-BD16-43159429B52F`
- Shot: `N013_C004`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_N013_C004_PS_v01_SDR_PS_20180925_FRC240fps_sdr_4k_qp22_240p_t2160_tsa.mov

**New York Skyline** 
- UUID: `640DFB00-FBB9-45DA-9444-9F663859F4BC`
- Shot: `N008_C003`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_N008_C003_PS_v01_SDR_PS_20180925_FRC_sdr_4k_qp18_240p_t2160_tsa.mov

**New York from Above** 
- UUID: `3BA0CFC7-E460-4B59-A817-B97F9EBB9B89`
- Shot: `N008_C009`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_N008_C009_PS_v01_SDR_PS_20180925_240fps_2f1e8a37-c8e6-4107-92bf-c9a94b585bedq21_tsa_sRGB.mov

**New Zealand** 
- UUID: `78911B7E-3C69-47AD-B635-9C2486F6301D`
- Shot: `A105_C003_0212CT`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_A105_C003_0212CT_FLARE_v10_SDR_PS_FINAL_20180711_240fps_42a87da5-4106-4b01-9b72-5f08d7174865q19_sRGB_tsa.mov

**Nile Delta** 
- UUID: `3C4678E4-4D3D-4A40-8817-77752AEA62EB`
- Shot: `A050_C004_1027V8`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/comp_A050_C004_1027V8_v16_SDR_FINAL_20180706_240fps_42f29097-fda3-4ff3-be89-dbfb8bf5b3e9q23_sRGB_tsa.mov

**North Africa** 
- UUID: `2F72BC1E-3D76-456C-81EB-842EBA488C27`
- Shot: `A103_C002_0205DG`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_A103_C002_0205DG_v12_SDR_FINAL_20180706_240fps_20f90202-ebab-4cfa-b422-6480e42d14f3q15_sRGB_tsa.mov

**North America Aurora** 
- UUID: `737E9E24-49BE-4104-9B72-F352DE1AD2BF`
- Shot: `GMT314_139M_170NC_NORTH_AMERICA_AURORA`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_GMT314_139M_170NC_NORTH_AMERICA_AURORA__COMP_v22_SDR_20181206_v12CC_FRC240fps_sdr_4k_qp18_240p_t2160_tsa.mov

**North Atlantic** 
- UUID: `64D11DAB-3B57-4F14-AD2F-E59A9282FA44`
- Shot: `A001_C001_120530`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_A001_C001_120530_v04_SDR_FINAL_20180706_240fps_d64ae958-3d0d-4e8c-8ae8-5d33f843c2a3q17_sRGB_tsa.mov

### O

**Oregon Coastline** 
- UUID: `15A8BC97-45AC-45DC-9AF9-313808C578BC`
- Shot: `R004_C012_F01`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/R004_C012_F01_FRC_sdr_4k_qp32_240p_t2160_grover401_tsa.mov

**Oregon Sunset** 
- UUID: `8A57476A-E177-4AAD-B317-643F681584E1`
- Shot: `R006_C013_S05`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/R006_C013_S05_FRC_sdr_4k_qp24_240p_t2160_grover401_tsa.mov

### P

**Palau Coral Colors** 
- UUID: `F07CC61B-30FC-4614-BDAD-3240B61F6793`
- Shot: `PA_A004_C003`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/PA_A004_C003_SDR_20190719_240fps_ee722c45-c37e-467e-ad34-d86898486facq29_sRGB_tsa.mov

**Palau Jellies Blue** 
- UUID: `E580E5A5-0888-4BE8-A4CA-F74A18A643C3`
- Shot: `PA_A002_C009`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/PA_A002_C009_SDR_20190730_ALT01_FRC_sdr_4k_qp20_240p_t2160_tsa.mov

**Palau Jellies Dark** 
- UUID: `BA4ECA11-592F-4727-9221-D2A32A16EB28`
- Shot: `PA_A001_C007`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/PA_A001_C007_SDR_20190717_240fps_7c3c9b51-37bd-415e-aee7-c18a096667e4q20_sRGB_tsa.mov

**Palau Jellies Light** 
- UUID: `EC3DC957-D4C2-4732-AACE-7D0C0F390EC8`
- Shot: `PA_A010_C007`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/PA_A010_C007_SDR_20190717_240fps_e955ffdd-21c5-456a-a44b-0429aa869c61q24_sRGB_tsa.mov

**Patagonia Lake** 
- UUID: `B004358B-5A27-42E5-B49E-93FC100B2371`
- Shot: `P005_C002_1109E1`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/P005_C002_UHD_SDR_FRC240fps_sdr_4k_qp21_240p_t2160_tsa.mov

**Patagonia Mountain** 
- UUID: `5C987900-AD53-469C-8210-CABBCCDDFCAE`
- Shot: `P001_C005_11059D`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/P001_C005_UHD_SDR_240fps_89dfd1a5-485c-4572-8e9e-757bd06bcfa3q20_sRGB_tsa.mov

**Patagonia Range** 
- UUID: `E5D58CC2-3C52-4206-9DA2-427DC88B5896`
- Shot: `P007_C027`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/P007_C027_UHD_SDR_FRC240fps_sdr_4k_qp20_240p_t2160_tsa.mov

**Patagonia River** 
- UUID: `25A6CFB2-3570-4448-B114-244A4E454B7A`
- Shot: `P006_C002_11106T`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/P006_C002_UHD_SDR_240fps_e99d74b1-ff85-422a-b553-5563571594a1q17_sRGB_tsa.mov

### R

**Red Sea Coral from Above** 
- UUID: `82175C1F-153C-4EC8-AE37-2860EA828004`
- Shot: `A008_C010`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/RS_A008_C010_SDR_20191218_FRC_sdr_4k_qp30_240p_t2160_tsa.mov

**Redwoods River** ✅
- UUID: `97447D85-960C-4B2A-A101-048284D95853`
- Shot: `R013_C039_F01`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/R013_C039_F01_FRC_sdr_4k_qp27_240p_t2160_grover401_tsa.mov

**Redwoods from Above** ✅
- UUID: `AA5E82B9-289A-480C-A14B-242989107275`
- Shot: `R010_C003_F01`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/R010_C003_F02_sdr_4k_qp26_240p_t2160_grover401_tsa.mov

### S

**Sahara** 
- UUID: `E556BBC5-D0A0-4DB1-AC77-BC76E4A526F4`
- Shot: `A009_C001_10181A`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_A009_C001_010181A_v09_SDR_PS_FINAL_20180725_240fps_507c8aaf-3dcb-4a4f-ac58-4baa7f7b9254q20_tsa_sRGB.mov

**San Francisco Bay** 
- UUID: `DE851E6D-C2BE-4D9F-AB54-0F9CE994DC51`
- Shot: `A006_C003`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_A006_C003_1219EE_CC_v01_SDR_PS_FINAL_20180709_sdr_4k_qp23_240p_t2160_tsa.mov

**San Francisco Evening** 
- UUID: `29BDF297-EB43-403A-8719-A78DA11A2948`
- Shot: `A007_C017`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_A007_C017_01156B_v02_SDR_PS_20180925_240fps_364b651c-090a-4d73-9656-f6cab8ffbd45q20_tsa_sRGB.mov

**San Francisco Fog** 
- UUID: `EE533FBD-90AE-419A-AD13-D7A60E2015D6`
- Shot: `A008_C007`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_A008_C007_011550_CC_v01_SDR_PS_FINAL_20180709_FRC_sdr_4k_qp22_240p_t2160_tsa.mov

**San Francisco Night** 
- UUID: `3E94AE98-EAF2-4B09-96E3-452F46BC114E`
- Shot: `A015_C018`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_A015_C018_0128ZS_v03_SDR_PS_FINAL_20180709__FRC_sdr_4k_qp24_240p_t2160_tsa.mov

**San Francisco Skyline** 
- UUID: `85CE77BF-3413-4A7B-9B0F-732E96229A73`
- Shot: `A012_C014`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_A012_C014_1223PT_v53_SDR_PS_FINAL_20180709_FRC_sdr_4k_qp21_240p_t2160_tsa.mov

**San Francisco’s Ferry Building** 
- UUID: `4AD99907-9E76-408D-A7FC-8429FF014201`
- Shot: `A013_C004`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_1223LV_FLARE_v21_SDR_PS_FINAL_20180709_sdr_4k_qp15_240p_t2160_tsa.mov

**San Francisco’s Golden Gate Bridge** 
- UUID: `72B4390D-DF1D-4D51-B179-229BBAEFFF2C`
- Shot: `A013_C012`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_A013_C012_0122D6_CC_v01_SDR_PS_FINAL_20180709_FRC_sdr_4k_qp21_240p_t2160_tsa.mov

**Scotland Castle** 
- UUID: `E161929C-0819-4BC2-8359-550C081C7D54`
- Shot: `S006_C007`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/S006_C007_UHD_SDR_FRC240fps_sdr_4k_qp20_240p_t2160_tsa.mov

**Scotland Coast** 
- UUID: `0C747C29-4BF8-43F6-A5CC-2E012E555341`
- Shot: `S003_C020`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/S003_C020_UHD_SDR_FRC240fps_sdr_4k_qp25_240p_t2160_tsa.mov

**Scotland Loch** 
- UUID: `3954A7C4-51EC-4ABC-ABA3-6757AC91C7CF`
- Shot: `S005_C015`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/S005_C015_UHD_SDR_FRC_sdr_4k_grover401qp32_240p_t2160_tsa.mov

**Sea Stars** 
- UUID: `581A4F1A-2B6D-468C-A1BE-6F473F06D10B`
- Shot: `A012_C031`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/BO_A012_C031_SDR_20190726_FRC_sdr_4k_qp26_240p_t2160_tsa.mov

**Seal Pod** 
- UUID: `83C65C90-270C-4490-9C69-F51FE03D7F06`
- Shot: `SE_A016_C009`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/SE_A016_C009_SDR_20190717_FRC240fps_sdr_4k_grover402qp26_240p_t2160_tsa.mov

**Sequoia Morning** 
- UUID: `F88CDF4A-9681-4D1F-88FE-34F1A3C6A62B`
- Shot: `A010_C0005`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/A010C0005_Final_v2_HEVC.mov

**Sequoia Night** 
- UUID: `97C3047F-ED39-472C-9778-CABF25D8682D`
- Shot: `A018_C0002`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/A018C0002_Final_v2_HEVC.mov

**Sequoia Sunrise** 
- UUID: `6D6834A4-2F0F-479A-B053-7D4DC5CB8EB7`
- Shot: `A007_C0001`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/A007C0001_Final_v2_HEVC.mov

**Sonoma Clouds** 
- UUID: `097CA871-A1C2-40F7-97F0-EFAABF555BBC`
- Shot: `S011_C003_F01`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/S011_C003_F01_FRC240fps_sdr_4k_qp18_240p_t2160_grover401_tsa.mov

**Sonoma Evening** 
- UUID: `94DAB450-A650-4DFC-99B2-A0F0D8AD6649`
- Shot: `S013_C001_F01`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/S013_C001_F01_FRC240fps_sdr_4k_qp20_240p_t2160_tsa.mov

**Sonoma Horizon** 
- UUID: `FE876489-CBD5-479B-A8F0-1B67F0741CEA`
- Shot: `W010_C003_F01`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/W010_C003_V52_FRC_sdr_4k_qp25_240p_t2160_grover401_tsa.mov

**Sonoma River** 
- UUID: `12718607-0FE6-4B8C-B571-A320CDD67897`
- Shot: `S005_C013_F01`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/S005_C013_F01_FRC240fps_sdr_4k_qp18_240p_t2160_tsa.mov

**Sonoma from Above** 
- UUID: `C3C48B18-E4AE-4A62-877D-0B0D74CDC9E0`
- Shot: `S009_C018_F01`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/S009_C018_F01_FRC240fps_sdr_4k_qp18_240p_t2160_tsa.mov

**South Africa** 
- UUID: `87060EC2-D006-4102-98CC-3005C68BB343`
- Shot: `A351_C001_1213SK`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_A351_C001_v06_SDR_PS_20180725_sdr_4k_qp19_240p_t2160_tsa.mov

**Southern California** 
- UUID: `7719B48A-2005-4011-9280-2F64EEC6FD91`
- Shot: `A114_C001`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_A114_C001_0305OT_v10_SDR_FINAL_22062018_240fps_c137cb87-3eb8-45c7-a347-6377d9432eefq22_sRGB_tsa.mov

**Southern Europe Night** 
- UUID: `E5DB138A-F04E-4619-B896-DE5CB538C534`
- Shot: `GMT329_113NC_396B_1105_ITALY_TO_ASIA`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_GMT329_113NC_396B_1105_ITALY_v03_SDR_FINAL_20180706_FRC240fps_sdr_4k_qp21_240p_t2160_tsa.mov

### T

**Tahiti Coast** ✅
- UUID: `8C31B06F-91A4-4F7C-93ED-56146D7F48B9`
- Shot: `TH_804_A001_8`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/TH_804_A001_8_SDR_20191031_240fps_e79c4f82-9068-40c2-afc6-0d6ad48aa70eq19_sRGB_tsa.mov

**Tahiti Waves Mist** 
- UUID: `149E7795-DBDA-4F5D-B39A-14712F841118`
- Shot: `TH_803_A001_8`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/TH_803_A001_8_SDR_20191031_240fps_b602776f-63ed-45cf-89d0-b0dfa4660cf7q31_sRGB_tsa.mov

### U

**Utah Evening** 
- UUID: `AB7FC3C3-8853-45CD-AB6E-89F0985C2922`
- Shot: `M012_C065_S04`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/M012_C065_S04_FRC240fps_sdr_4k_qp22_240p_t2160_grover401_tsa.mov

**Utah’s Cathedral Canyon** 
- UUID: `7530C83C-8F7B-42C6-BB71-5FA2ED070BEC`
- Shot: `M010_C005_F01`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/M010_C005_F01_clipF6556F13846_sdr_4k_qp23_240p_t2160_grover401_tsa.mov

**Utah’s Factory Butte** 
- UUID: `1A17ED86-9E0D-4DF2-8CF3-5AB5DB67A348`
- Shot: `M012_C023_S04`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/M012_C023_S04_FRC_sdr_4k_qp22_240p_t2160_grover401_tsa.mov

**Utah’s Lake Powell** 
- UUID: `D759828B-4BAB-456B-AD75-225BA238F925`
- Shot: `M010_C009_F01`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/M010_C009_F01_FRC_sdr_4k_qp22_240p_t2160_grover401_tsa.mov

**Utah’s Monument Valley** 
- UUID: `100858D2-FE01-4B70-8E2D-3FCF20AFE6B5`
- Shot: `M007_C007_F01`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/M007_C007_F02_sdr_4k_qp20_240p_t2160_grover401_tsa.mov

**Utah’s Olympia Bar** 
- UUID: `A168628E-11EE-4456-AD66-E7E3E47D1B21`
- Shot: `M005_C017_F01`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/M005_C017_F01_FRC_sdr_4k_qp22_240p_t2160_grover401_tsa.mov

### W

**West Africa** 
- UUID: `63C042F0-90EF-4A95-B7CC-CC9A64BF8421`
- Shot: `A001_C004_1207W5`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/comp_A001_C004_1207W5_v23_SDR_FINAL_20180706_FRC240fps_sdr_4k_qp19_240p_t2160_tsa.mov

### Y

**Yosemite Clouds** 
- UUID: `E487C6EF-B3FB-427B-A2BE-8CBA60F902F0`
- Shot: `Y005_C003_0228SC`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/Y005_C003_UHD_SDR_FRC240fps_sdr_4k_qp18_240p_t2160_tsa.mov

**Yosemite Horizon** 
- UUID: `E540DEE6-4C40-42C8-9CCC-D4CB0FAD7D7B`
- Shot: `Y002_C013_0226`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/Y002_C013_UHD_SDR_FRC240fps_sdr_4k_qp22_240p_t2160_tsa.mov

**Yosemite Mountains** 
- UUID: `81CA5ACD-E682-4D8B-A948-0F147EB6ED4F`
- Shot: `Y003_C009_027`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/Y003_C009_UHD_SDR_FRC240fps_sdr_4k_qp23_240p_t2160_tsa.mov

**Yosemite Silhouette** 
- UUID: `E5799A24-1949-4E66-A17B-B5EB05F28C5D`
- Shot: `Y004_C015_0227PD`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/Y004_C015_UHD_SDR_240fps_1b32206c-d1ff-4c0b-88ee-f15346c59daaq19_sRGB_tsa.mov

**Yosemite Snow Caps** 
- UUID: `8D04D70F-738B-441D-8D43-AF46B2BF8062`
- Shot: `Y011_C008_030584`
- URL: https://sylvan.apple.com/itunes-assets/Aerials126/v4/ec/eb/c8/ecebc8d2-5486-c2b2-52ae-6f0ab2d6b65f/Y011_C008_FIN_UHD_SDR_240fps_f3150c20-ef0d-4a53-9535-ce4a3e65ed79q22_sRGB_tsa.mov

**Yosemite Valley** 
- UUID: `4109D42A-D717-46A7-A9A2-FE53A82B25C0`
- Shot: `Y011_C001_0305`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/Y011_C001_UHD_SDR_FRC240fps_sdr_4k_qp22_240p_t2160_tsa.mov

**Yosemite from Above** 
- UUID: `DAD82DCE-F3AE-4AEC-8A79-1694D412FC0A`
- Shot: `Y009_C015_0304I`
- URL: https://sylvan.apple.com/itunes-assets/Aerials116/v4/cb/5b/50/cb5b5035-6701-619f-9065-3d7d0e5fbef4/Y009_C015_UHD_SDR_FRC240fps_sdr_4k_qp23_240p_t2160_tsa.mov

## Preview Images

Each entry also has a `previewImage` URL (a still frame from the aerial).
These live on `sylvan.apple.com` and can be fetched without downloading
the full video.