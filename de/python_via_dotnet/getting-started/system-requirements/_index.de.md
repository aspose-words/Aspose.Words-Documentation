---
title: System Anforderungen
second_title: Aspose.Words für Python via .NET
articleTitle: System Anforderungen
linktitle: System Anforderungen
description: "Bevor Sie mit Aspose.Words für Python via .NET arbeiten, stellen Sie sicher, dass Sie die Betriebssystem-, Plattform- und Umgebungsanforderungen erfüllen, damit die Aktivitäten auf Ihren Geräten ordnungsgemäß berücksichtigt werden."
type: docs
weight: 50
url: /de/python-net/system-requirements/
---

Aspose.Words für Python via .NET erfordert keine Installation von Drittanbieterprodukten wie Microsoft Word. Aspose.Words selbst ist eine Engine zum Erstellen, Ändern, Konvertieren und Rendern von Dokumenten in verschiedenen Formaten, einschließlich Microsoft Word-Dokumentformaten.

## Unterstützte Betriebssysteme

Aspose.Words für Python via .NET unterstützt jedes 64-Bit- oder 32-Bit-Betriebssystem, auf dem Python 3.5 oder höher installiert ist.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">Betriebssystem</td>
        <td style="font-weight: bold; width:400px">Versionen</td>
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
        <td>Mac OS</td>
        <td><ul>
            <li>macOS-x86_64: 10.14 oder höher</li>
            <li>macOS-arm64: 11.0 oder höher</li>
        </ul></td>
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul>
            <li>Ubuntu</li>
            <li>OpenSUSE</li>
            <li>CentOS</li>
            <li>und andere</li>
        </ul></td>
    </tr>
</table>

## Systemanforderungen für Ziel-Linux- und macOS-Plattformen

- GCC-6-Laufzeitbibliotheken (oder höher).

- Abhängigkeiten von .NET Core Runtime. Die Installation von .NET Core Runtime selbst ist `NOT` erforderlich.

- Für Python 3.5-3.7: Der `pymalloc`-Build von Python ist erforderlich. Die `--with-pymalloc`-Python-Build-Option ist standardmäßig aktiviert. Typischerweise ist der `pymalloc`-Build von Python im Dateinamen mit dem Suffix `m` gekennzeichnet.

- Gemeinsame `libpython`-Python-Bibliothek. Die `--enable-shared`-Python-Build-Option ist standardmäßig deaktiviert. Einige Python-Distributionen enthalten nicht die gemeinsam genutzte `libpython`-Bibliothek. Für einige Linux-Plattformen kann die gemeinsam genutzte `libpython`-Bibliothek mit dem Paketmanager installiert werden, zum Beispiel: `sudo apt-get install libpython3.7`. Das häufigste Problem besteht darin, dass die `libpython`-Bibliothek an einem anderen Speicherort als dem Standardsystemspeicherort für gemeinsam genutzte Bibliotheken installiert ist. Das Problem kann behoben werden, indem die Python-Build-Optionen verwendet werden, um beim Kompilieren von Python alternative Bibliothekspfade festzulegen, oder indem ein symbolischer Link zur `libpython`-Bibliotheksdatei im Systemstandardspeicherort für gemeinsam genutzte Bibliotheken erstellt wird. Normalerweise lautet der Dateiname der gemeinsam genutzten `libpython`-Bibliothek `libpythonX.Ym.so.1.0` für Python 3.5-3.7 oder `libpythonX.Y.so.1.0` für Python 3.8 oder höher (zum Beispiel: libpython3.7m.so.1.0, libpython3.9.so.1.0)
