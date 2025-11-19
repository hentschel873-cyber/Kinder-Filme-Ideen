<#
.\scripts\install_windows_service.ps1

Ein kleines Hilfsskript, das einen geplanten Task anlegt, der das Beispiel des Telegram‑Bots
bei Systemstart ausführt. Das Skript nutzt die aktuelle Python‑Installation und kann als
Vorgabe dienen; es ist kein Ersatz für einen properen Windows Service Manager.

Aufruf (PowerShell mit Administratorrechten):

```powershell
.\scripts\install_windows_service.ps1 -PythonPath "C:\\Python311\\python.exe" -ScriptPath "C:\\path\\to\\repo\\examples\\telegram_bot.py" -TaskName "KinderFilmeTelegramBot"
```

Parameter:
- `-PythonPath` Pfad zur Python‑Executable (Standard: `python` in PATH)
- `-ScriptPath` Pfad zum Bot‑Skript
- `-TaskName` Name des geplanten Tasks
#>

param(
    [string]$PythonPath = "python",
    [string]$ScriptPath = "$PSScriptRoot\..\examples\telegram_bot.py",
    [string]$TaskName = "KinderFilmeTelegramBot"
)

if (-not (Test-Path $ScriptPath)) {
    Write-Error "Skript nicht gefunden: $ScriptPath"
    exit 1
}

$action = New-ScheduledTaskAction -Execute $PythonPath -Argument "`"$ScriptPath`""
$trigger = New-ScheduledTaskTrigger -AtStartup
$principal = New-ScheduledTaskPrincipal -UserId "SYSTEM" -RunLevel Highest

try {
    Register-ScheduledTask -TaskName $TaskName -Action $action -Trigger $trigger -Principal $principal -Description "Startet den Kinder‑Filme Telegram Bot beim Systemstart." -Force
    Write-Output "Geplanter Task '$TaskName' wurde erfolgreich erstellt."
} catch {
    Write-Error "Fehler beim Anlegen des geplanten Tasks: $_"
    exit 1
}

Write-Output "Hinweis: Setze die Umgebungsvariable TELEGRAM_TOKEN in den Task‑Einstellungen, falls nötig."
