# crear_ahk_startup_links.ps1

$wslPath = "\\wsl$\Ubuntu\home\rafaelsalafranca_bao\codigo\autohotkey"

$scripts = @(
    "abajo_rojo.ahk",
    "administracion.ahk",
    "arroba_baobab.ahk",
    "elipsis.ahk",
    "google_maps.ahk"
)

$startupFolder = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"

foreach ($script in $scripts) {
    $target = Join-Path $wslPath $script
    $shortcut = Join-Path $startupFolder $script.Replace(".ahk", ".lnk")

    $shell = New-Object -ComObject WScript.Shell
    $lnk = $shell.CreateShortcut($shortcut)
    $lnk.TargetPath = $target
    $lnk.WorkingDirectory = $wslPath
    $lnk.IconLocation = "C:\Program Files\AutoHotkey\AutoHotkey.exe"
    $lnk.Save()
}
