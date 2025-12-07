:: Sets up Chromium build environment on Windows

REM Install depot_tools
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
set PATH=%cd%\depot_tools;%PATH%

REM Make required folders
mkdir chromium_src
cd chromium_src

REM Fetch Chromium source
fetch --nohooks chromium
cd src

REM Install build dependencies (this will open a new window; follow prompts)
python3 scripts\bootstrap\win\win_toolchain.py

:: Run GN to configure build (lighter config in next step)
gn gen out\Default --args="is_debug=false symbol_level=0 enable_nacl=false enable_print_preview=false enable_widevine=false"
