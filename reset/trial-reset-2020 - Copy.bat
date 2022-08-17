REM Delete eval folder with licence key and options.xml which contains a reference to it
for %%I in ("WebStorm", "IntelliJ", "Phpstorm") do (
    for /d %%a in ("%USERPROFILE%\.%%I*") do (
        rd /s /q "%%a/config/eval"
        del /q "%%a\config\options\other.xml"
    )
)

for %%I in ("WebStorm", "IntelliJ", "PhpStorm") do (
    for /d %%a in ("%USERPROFILE%\AppData\Roaming\JetBrains\%%I*") do (
        rd /s /q "%%a/eval"
        del /q "%%a\options\other.xml"
    )
)

REM Delete registry key and jetbrains folder (not sure if needet but however)
# rmdir /s /q "%USERPROFILE%\AppData\Roaming\JetBrains"
reg delete "HKEY_CURRENT_USER\Software\JavaSoft" /f