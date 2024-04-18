---
title: Systeemeisen
second_title: Aspose.Words voor Python via .NET
articleTitle: Systeemeisen
linktitle: Systeemeisen
description: "Voordat u gaat werken met Aspose.Words voor Python via .NET, Zorg ervoor dat u voldoet aan de eisen van het besturingssysteem, het platform en de omgeving, zodat de activiteiten op uw apparaten goed worden verantwoord."
type: docs
weight: 50
url: /nl/python-net/system-requirements/
---

Aspose.Words voor Python via .NET vereist geen producten van derden zoals Microsoft Word te installeren. Aspose.Words zelf is een motor voor het maken, wijzigen, omzetten en renderen van documenten in verschillende formaten, waaronder Microsoft Word documentformaten.

## Ondersteunde besturingssystemen

Aspose.Words voor Python via .NET ondersteunt elk 64-bits of 32-bits besturingssysteem waarbij Python 3.5 of later wordt geïnstalleerd.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">Besturingssysteem</td>
        <td style="font-weight: bold; width:400px">Versies</td>
    </tr>
    <tr>
        <td>Microsoft Windows</td>
        <td><ul></ul></td>
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
        
    </tr>
    <tr>
        <td>macOS</td>
        <td><ul></ul></td>
            <li>macOS-x86_64: 10,14 of later</li>
            <li>macOS-arm64: 11,0 of later</li>
        
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul></ul></td>
            <li>Ubuntu</li>
            <li>OpenSUSE</li>
            <li>CentOS</li>
            <li>en andere</li>
        
    </tr>
</table>

## Systeemeisen voor target Linux en macOS-platforms

- GCC-6 runtime bibliotheken (of later).

- Afhankelijkheden van .NET Core Runtime. Installatie .NET Core Runtime zelf is `NOT` vereist.

- Voor Python 3.5-3.7: Het `pymalloc` bouw van Python is nodig. De `--with-pymalloc` Python bouwoptie is standaard ingeschakeld. De Commissie is van mening dat de `pymalloc` bouw van Python is gemarkeerd met `m` achtervoegsel in de bestandsnaam.

- `libpython` gedeeld Python bibliotheek. De `--enable-shared` Python bouwoptie is standaard uitgeschakeld, sommige Python distributies bevatten geen `libpython` gedeelde bibliotheek. Voor sommige linux platforms, de `libpython` gedeelde bibliotheek kan worden geïnstalleerd met behulp van de pakketbeheerder, bijvoorbeeld: `sudo apt-get install libpython3.7`. De gemeenschappelijke kwestie is dat `libpython` bibliotheek is geïnstalleerd op een andere locatie dan de standaard systeemlocatie voor gedeelde bibliotheken. Het probleem kan worden opgelost met behulp van de Python bouwopties voor het instellen van alternatieve bibliotheekpaden bij het compileren Python, of vastgesteld door het creëren van een symbolische link naar de `libpython` bibliotheekbestand in de systeemstandaardlocatie voor gedeelde bibliotheken. De Commissie is van mening dat de `libpython` gedeelde bibliotheek bestandsnaam is `libpythonX.Ym.so.1.0` voor Python 3,5-3,7, of `libpythonX.Y.so.1.0` voor Python 3.8 of later (bijvoorbeeld: libpython3.7m.so.1.0, libpython3.9.so.1.0)
