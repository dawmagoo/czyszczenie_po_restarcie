# czyszczenie_po_restarcie
Czyszczenie plików po restarcie

Uruchamianie:

Naciśnij kombinację klawiszy Win + R, aby otworzyć okno dialogowe "Uruchamianie".

Wprowadź polecenie shell:startup i kliknij "OK".

Otworzy się folder "Uruchamianie", który jest folderem docelowym dla skryptów i skrótów, które mają być uruchamiane przy starcie systemu.

Skopiuj plik skryptu .py ("cleanup.py") do tego folderu.

Po ponownym uruchomieniu systemu skrypt zostanie automatycznie uruchomiony i wyczyści pliki z pulpitu i kosza.

# AUTOSTART

@echo off
powershell.exe -ExecutionPolicy Bypass -File "ścieżka_do_skryptu\czyszczenie_pulpitow.ps1"
