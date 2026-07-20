Set-Variable -Name workspace -Value $Env:FACTORIO_WORKSPACE
Set-Variable -Name mod_base -Value $Env:FACTORIO_20_MODS_BASE
Set-Variable -Name package -Value "###NAME###"

New-Item -ItemType Directory -Force -Path "$mod_base\$package" | Out-Null

Set-Variable -Name version -Value (Get-Content "$workspace\$package\info.json" | ConvertFrom-Json).version
Move-Item -Path "$workspace\$package\${package}_${version}.zip" -Destination "${mod_base}\${package}" -Force -ErrorAction SilentlyContinue

Set-Variable -Name version_khaosbash -Value (Get-Content "$workspace\khaosbash\info.json" | ConvertFrom-Json).version
Move-Item -Path "$workspace\khaosbash\khaosbash_$version_khaosbash.zip" -Destination "${mod_base}\${package}" -Force -ErrorAction SilentlyContinue

Set-Variable -Name version_khaoslib -Value (Get-Content "$workspace\khaoslib\info.json" | ConvertFrom-Json).version
Move-Item -Path "$workspace\khaoslib\khaoslib_$version_khaoslib.zip" -Destination "${mod_base}\${package}" -Force -ErrorAction SilentlyContinue

Start-Process -FilePath "${Env:FACTORIO_20_PATH}\bin\x64\Factorio.exe" -ArgumentList "--mod-directory ${mod_base}\${package}"
