# Skrypt do czyszczenia pulpitów, kosza i folderu "Pobrane" dla każdego użytkownika

# Pobierz listę wszystkich użytkowników na komputerze
$users = Get-ChildItem "C:\Users" | Where-Object { $_.PSIsContainer } | Select-Object -ExpandProperty Name

# Przejdź przez każdego użytkownika
foreach ($user in $users) {
    $desktopPath = "C:\Users\$user\Desktop"
    $downloadsPath = "C:\Users\$user\Downloads"

    # Wyczyść pulpit
    Remove-Item -Path $desktopPath\* -Force -Recurse -ErrorAction SilentlyContinue

    # Wyczyść kosz
    Clear-RecycleBin -Force -ErrorAction SilentlyContinue

    # Wyczyść folder "Pobrane"
    Remove-Item -Path $downloadsPath\* -Force -Recurse -ErrorAction SilentlyContinue
}
