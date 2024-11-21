---
title: wymagania systemowe
second_title: Aspose.Words dla Python via .NET
articleTitle: wymagania systemowe
linktitle: wymagania systemowe
description: "Zanim zaczniesz pracować z Aspose.Words dla Python via .NET, upewnij się, że spełniasz wymagania dotyczące systemu operacyjnego, platformy i środowiska, aby działania na Twoich urządzeniach były prawidłowo rozliczane."
type: docs
weight: 50
url: /pl/python-net/system-requirements/
timestamp: 2024-04-27-18-03-32
---

Aspose.Words dla Python via .NET nie wymaga instalacji żadnego produktu strony trzeciej, takiego jak Microsoft Word. Sam Aspose.Words jest silnikiem do tworzenia, modyfikowania, konwertowania i renderowania dokumentów w różnych formatach, w tym w formatach dokumentów Microsoft Word.

## Obsługiwane systemy operacyjne

Aspose.Words for Python via .NET obsługuje każdy 64-bitowy lub 32-bitowy system operacyjny, w którym zainstalowany jest format Python 3.5 lub nowszy.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">System operacyjny</td>
        <td style="font-weight: bold; width:400px">Wersje</td>
    </tr>
    <tr>
        <td>Microsoft Windows</td>
        <td><ul>
            <li>Windows 2003 Server (x64, x86)</li>
            <li>Windows 2008 Server (x64, x86)</li>
            <li>Windows 2012 Server (x64, x86)</li>
            <li>Windows 2012 R2 Server (x64, x86)</li>
            <li>Windows 2016 Server (x64, x86)</li>
            <li>Windows 2019 Server (x64, x86)</li>
            <li>Windows XP (x64, x86)</li>
            <li>Windows Vista (x64, x86)</li>
            <li>Windows 7 (x64, x86)</li>
            <li>Windows 8, 8.1 (x64, x86)</li>
            <li>Windows 10 (x64, x86)</li>
        </ul></td>
    </tr>
    <tr>
        <td>System operacyjny Mac</td>
        <td><ul>
            <li>macOS-x86_64: 10.14 lub nowszy</li>
            <li>macOS-arm64: 11.0 lub nowszy</li>
        </ul></td>
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul>
            <li>Ubuntu</li>
            <li>OtwórzSUSE</li>
            <li>CentOS</li>
            <li>i inni</li>
        </ul></td>
    </tr>
</table>

## Wymagania systemowe dla docelowych platform Linux i macOS

- Biblioteki wykonawcze GCC-6 (lub nowsze).

- Zależności .NET Core Runtime. Instalacja samego .NET Core Runtime wymaga `NOT`.

- W przypadku Python 3.5-3.7: wymagana jest kompilacja Python w formacie `pymalloc`. Opcja kompilacji `--with-pymalloc` Python jest domyślnie włączona. Zazwyczaj kompilacja `pymalloc` Python jest oznaczona przyrostkiem `m` w nazwie pliku.

- Współdzielona biblioteka Python `libpython`. Opcja kompilacji `--enable-shared` Python jest domyślnie wyłączona, niektóre dystrybucje Python nie zawierają biblioteki współdzielonej `libpython`. Na niektórych platformach Linux bibliotekę współdzieloną `libpython` można zainstalować za pomocą menedżera pakietów, na przykład: `sudo apt-get install libpython3.7`. Częstym problemem jest to, że biblioteka `libpython` jest instalowana w innej lokalizacji niż standardowa lokalizacja systemowa dla bibliotek współdzielonych. Problem można rozwiązać, używając opcji kompilacji Python w celu ustawienia alternatywnych ścieżek bibliotek podczas kompilacji Python lub rozwiązując go, tworząc dowiązanie symboliczne do pliku biblioteki `libpython` w standardowej lokalizacji systemowej dla bibliotek współdzielonych. Zazwyczaj nazwa pliku biblioteki współdzielonej `libpython` to `libpythonX.Ym.so.1.0` dla Python 3.5–3.7 lub `libpythonX.Y.so.1.0` dla Python 3.8 lub nowszego (na przykład: libpython3.7m.so.1.0, libpython3.9.so.1.0)
