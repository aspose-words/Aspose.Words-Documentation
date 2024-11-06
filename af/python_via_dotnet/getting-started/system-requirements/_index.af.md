---
title: Stelselvereistes
second_title: Aspose.Words vir Python via .NET
articleTitle: Stelselvereistes
linktitle: Stelselvereistes
description: "Voordat jy begin werk Aspose.Words vir Python via .NET, verseker dat u aan die vereistes van die bedryfstelsel, platform en omgewing voldoen, sodat die aktiwiteite op u toestelle behoorlik verantwoord word."
type: docs
weight: 50
url: /af/python-net/system-requirements/
---

Aspose.Words vir Python via .NET vereis nie dat enige derde party produk soos Microsoft Word geïnstalleer moet word nie. Aspose.Words self is'n enjin vir die skep, wysiging, omskakeling en weergawe van dokumente in verskillende formate, insluitend Microsoft Word dokumentformate.

## Ondersteunde Bedryfstelsels

Aspose.Words vir Python via .NET ondersteun enige 64-bit of 32-bit bedryfstelsel waar Python 3.5 of later geïnstalleer is.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">Bedryfstelsel</td>
        <td style="font-weight: bold; width:400px">Weergawes</td>
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
            <li>macOS-x86_64: 10.14 of later</li>
            <li>macOS-arm64: 11.0 of later</li>
        </ul></td>
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul>
            <li>Ubuntu</li>
            <li>OpenSUSE</li>
            <li>CentOS</li>
            <li>en ander</li>
        </ul></td>
    </tr>
</table>

## Stelselvereistes Vir Teiken Linux En macOS Platforms

- GCC - 6 runtime biblioteke (of later).

- Afhanklikhede van .NET Core Runtime. Die installering van .NET Core Runtime self is `NOT` nodig.

- Vir Python 3.5-3.7: die `pymalloc` bou van Python is nodig. Die `--with-pymalloc` Python bou opsie is geaktiveer by verstek. Tipies word die `pymalloc` bou van Python gemerk met `m` agtervoegsel in die lêernaam.

- `libpython` gedeelde Python biblioteek. Die `--enable-shared` Python bou opsie is standaard gedeaktiveer, sommige Python verspreidings bevat nie die `libpython` gedeelde biblioteek nie. Vir sommige linux-platforms kan die `libpython` gedeelde biblioteek geïnstalleer word met behulp van die pakketbestuurder, byvoorbeeld: `sudo apt-get install libpython3.7`. Die algemene probleem is dat `libpython` biblioteek is geïnstalleer in'n ander plek as die standaard stelsel plek vir gedeelde biblioteke. Die probleem kan reggestel word deur die Python bou opsies te gebruik om alternatiewe biblioteek paaie te stel wanneer Python saamgestel word, of reggestel deur'n simboliese skakel na die `libpython` biblioteek lêer in die stelsel standaard plek vir gedeelde biblioteke te skep. Tipies is die `libpython` gedeelde biblioteek lêernaam `libpythonX.Ym.so.1.0` vir Python 3.5-3.7, of `libpythonX.Y.so.1.0` vir Python 3.8 of later (byvoorbeeld: libpython3.7m.so. 1.0, libpython3.9.so.1.0).

Ondersteun Linux konfigurasies word aangebied in [Aspose.Words - vir - Python - via-.NET](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Dockerfile).
