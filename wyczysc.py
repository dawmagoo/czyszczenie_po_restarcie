import os
import shutil

# Ścieżka do folderu Pulpit
desktop_path = os.path.expanduser("~/Desktop")

# Ścieżka do folderu Kosz
trash_path = os.path.expanduser("~/.Trash")

# Ścieżka do folderu Pobrane
downloads_path = os.path.expanduser("~/Downloads")

# Funkcja usuwająca pliki z folderu
def clear_folder(path):
    for filename in os.listdir(path):
        file_path = os.path.join(path, filename)
        if os.path.isfile(file_path):
            os.remove(file_path)
        elif os.path.isdir(file_path):
            shutil.rmtree(file_path)

# Usuwanie plików z Pulpitu
clear_folder(desktop_path)

# Usuwanie plików z Kosza
clear_folder(trash_path)

# Usuwanie plików z Katalogu Pobrane
clear_folder(downloads_path)
