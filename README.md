# KSHub.
Lighter, Faster, Just Feels Right..
That's an open source. but Do NOT INCLUDE KSHub in the name.
all credits goes to Chrome and Chrominum
# KSHub - Download & Installation Guide

Welcome to KSHub!  
This is a faster, lighter fork of Chromium with Gemini-powered search and full Chrome extension support.  
Follow these steps to download, build, and install it on Windows.

---

## Requirements

- Windows 10 or newer (64-bit recommended)
- At least 20GB free disk space
- 8-16GB RAM or more recommended
- [Git](https://git-scm.com/download/win)
- [Python 3.x](https://www.python.org/downloads/)
- [Visual Studio 2022 Community Edition](https://visualstudio.microsoft.com/vs/community/)  
  > **Must install “Desktop development with C++” workload**
- [NSIS](https://nsis.sourceforge.io/) (for installer creation)
- [.NET 6.0 SDK] (https://builds.dotnet.microsoft.com/dotnet/Sdk/6.0.428/dotnet-sdk-6.0.428-win-x64.exe)

---

## Clone and Set Up the Source

1. **Download depot_tools:**  
   Open PowerShell or Command Prompt:
   ```sh
   git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
   ```
   Add depot_tools to your PATH (for this session):
   ```sh
   set PATH=%cd%\depot_tools;%PATH%
   ```

2. **Fetch Chromium Source:**  
   ```sh
   mkdir chromium_src
   cd chromium_src
   fetch --nohooks chromium
   cd src
   ```

3. **Install Dependencies & Toolchain:**  
   Chromium pulls tools for you.
   ```sh
   python3 scripts\bootstrap\win\win_toolchain.py
   ```

---

## Build MyFastChromium

1. **Configure the Build (lighter/faster):**
   ```sh
   gn gen out\Light --args="is_debug=false symbol_level=0 enable_nacl=false enable_print_preview=false enable_widevine=false is_component_build=false blink_enable_spellcheck=false enable_pdf=false"
   ```

2. **Start the Build:**  
   This step can take several hours.
   ```sh
   autoninja -C out\Light chrome
   > **Auto-Update:** KSHub will automatically check for updates and prompt you when a new version is available, so you always stay secure and up to date.

