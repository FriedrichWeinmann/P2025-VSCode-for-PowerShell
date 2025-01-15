# VS Code

<#
Setup:
- Install "VS Code" | https://code.visualstudio.com/download
- Install "git" | https://git-scm.com/downloads
- Install "PowerShell 7.4.6" | https://github.com/PowerShell/PowerShell/releases/tag/v7.4.6
- Install "Code Extension: PowerShell" | https://marketplace.visualstudio.com/items?itemName=ms-vscode.PowerShell
#>

# Shift + Alt + F
foreach ($file in $files) {
    $file.FullName
}

code "$env:AppData\Code\User\settings.json"
<#
User Settings:
File > Preferences > Settings

<Search Term> | <Setting> | <Description>

defaultLanguage | Default Language | Default language for new files, even before saving them
Insert "powershell" to write PowerShell by default

Encoding | Encoding | Default Encoding for new files. Should be set to "UTF8 with BOM"
-> Prevents issues with special characters in code (such as äöü)
#>
## Fix Encoding in Bulk
Install-Module PSModuleDevelopment

Get-ChildItem C:\Code\workshops\PowerShellFundamentals -Recurse | Set-PSMDEncoding
# WARNING: Hard conversion, may break characters



<#
Alias | Auto Correct Aliases | Auto-Format in VSCode resolves Aliases
#>
Get-ChildItem C:\ | Where-Object Name -Like "W*"

<#
Trust: Enabled | trust: Enabled | Disables "Do you really trust your own code" Question

parameter hints | parameter hints | Displays massive banner for parameter intellisense
Disabling saves a lot of screen space, actual intellisense keeps working
#>
Get-ChildItem

<#
focusConsoleOnExecute | Focus Console on Execute | When enabled: Executing code focuses the console
Disable to not always lose your focus from the code editor
#>
# Enabled
Get-ChildItem -Path C:\Windows -File
Get-ChildItem -Path C:\Temp -File # Can't move to the second line without using mouse

# Disabled
Get-ChildItem -Path C:\Windows -File
Get-ChildItem -Path C:\Temp -File

<#
useCorrectCasing | Use Correct Casing | Whether auto format should correct command casing
#>
# 1..3 | select-object -First 1
1..3 | Select-Object -First 1


<#
detectIndentation | Detect Indentation | Whether to detect the indentation settings from the code


Can only be changed in the config file:
Add:

"[powershell]": {
    "editor.wordSeparators": "`~!@#%^&*()=+[{]}\\|;:'\",.<>/?"
}

This allows doubleclicking variables to select name _including_ the $
#>
$files = Get-ChildItem
$files
Get-ChildItem
files
$files

# Personal Settings:
code "$env:AppData\Code\User\settings.json"

# CTRL + ALT + J


# Snippets
Copy-Item -Path 'C:\Presentation\fred.code-snippets' -Destination "$env:AppData\Code\User\Snippets" -Force
code "$env:AppData\Code\User\Snippets\fred.code-snippets"

[PSCustomObject]@{

}
Get-ChildItem

<#
Flavor Settings:
- Format on Save: Formatieren beim Speichern
- Trim Trailing Whitespace: Leerzeichen am Ende der Zeile werden gelöscht
#>
