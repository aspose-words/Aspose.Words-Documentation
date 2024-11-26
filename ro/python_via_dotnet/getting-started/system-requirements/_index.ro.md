---
title: Cerințe De Sistem
second_title: Aspose.Words pentru Python via .NET
articleTitle: Cerințe De Sistem
linktitle: Cerințe De Sistem
description: "Înainte de a începe să lucrați cu Aspose.Words pentru Python via .NET, asigurați-vă că îndepliniți cerințele sistemului de operare, platformei și mediului, astfel încât activitățile de pe dispozitivele dvs. să fie contabilizate corespunzător."
type: docs
weight: 50
url: /ro/python-net/system-requirements/
timestamp: 2024-04-27-18-03-32
---

Aspose.Words pentru Python via .NET nu necesită instalarea unui produs terță parte, cum ar fi Microsoft Word. Aspose.Words în sine este un motor pentru crearea, modificarea, conversia și redarea documentelor în diferite formate, inclusiv Microsoft Word formate de documente.

## Sisteme De Operare Acceptate

Aspose.Words pentru Python via .NET suportă orice sistem de operare 64-bit sau 32-bit în care este instalat Python 3.5 sau o versiune ulterioară.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">Sistem De Operare</td>
        <td style="font-weight: bold; width:400px">Versiuni</td>
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
        <td>macOS</td>
        <td><ul>
            <li>macOS-x86_64: 10.14 sau mai târziu</li>
            <li>macOS-arm64: 11.0 sau mai târziu</li>
        </ul></td>
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul>
            <li>Ubuntu</li>
            <li>OpenSUSE</li>
            <li>CentOS</li>
            <li>și altele</li>
        </ul></td>
    </tr>
</table>

## Cerințe de sistem pentru platformele țintă Linux și macOS

- GCC - 6 biblioteci runtime (sau mai târziu).

- Dependențe de .NET Core Runtime. Instalarea .NET Core Runtime în sine este `NOT` necesară.

- Pentru Python 3.5-3.7: este necesară construirea `pymalloc` a Python. Opțiunea de construire `--with-pymalloc` Python este activată în mod implicit. De obicei, construirea `pymalloc` a Python este marcată cu `m` sufix în numele fișierului.

- `libpython` bibliotecă partajată Python. Opțiunea de construire `--enable-shared` Python este dezactivată în mod implicit, unele distribuții Python nu conțin biblioteca partajată `libpython`. Pentru unele platforme linux, biblioteca partajată `libpython` poate fi instalată folosind managerul de pachete, de exemplu: `sudo apt-get install libpython3.7`. Problema comună este că biblioteca `libpython` este instalată într-o locație diferită de locația standard a sistemului pentru bibliotecile partajate. Problema poate fi rezolvată utilizând opțiunile de construire Python pentru a seta căi alternative ale bibliotecii atunci când compilați Python sau remediată prin crearea unei legături simbolice la fișierul bibliotecii `libpython` în locația standard a sistemului pentru bibliotecile partajate. De obicei, numele fișierului bibliotecii partajate `libpython` este `libpythonX.Ym.so.1.0` pentru Python 3.5-3.7, sau `libpythonX.Y.so.1.0` pentru Python 3.8 sau mai târziu (de exemplu: libpython3.7m.so. 1.0, libpython3.9.deci. 1.0).

Configurațiile Linux acceptate sunt prezentate în [Aspose.Words - pentru - Python - prin - .NET / Dockerfile](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Dockerfile).
