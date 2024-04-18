---
title: Požadavky na systém
second_title: Aspose.Words místo Python via .NET
articleTitle: Požadavky na systém
linktitle: Požadavky na systém
description: "Než začnete pracovat s Aspose.Words místo Python via .NET, zajistit, abyste splnili požadavky na operační systém, platformu a životní prostředí, takže činnosti na vašich zařízeních jsou řádně zaúčtovány."
type: docs
weight: 50
url: /cs/python-net/system-requirements/
---

Aspose.Words místo Python via .NET nevyžaduje žádný produkt třetí strany, jako je Microsoft Word k instalaci. Aspose.Words sám o sobě je motorem pro tvorbu, úpravu, konverzi a vydávání dokumentů v různých formátech, včetně Microsoft Word formáty dokumentů.

## Podporované operační systémy

Aspose.Words místo Python via .NET podporuje jakýkoliv 64-bitový nebo 32-bitový operační systém, kde Python 3.5 nebo později je instalován.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">Provozní systém</td>
        <td style="font-weight: bold; width:400px">Verze</td>
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
            <li>macOS-x86_64: 10.14 nebo novější</li>
            <li>macOS-arm64: 11.0 nebo novější</li>
        
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul></ul></td>
            <li>Ubuntu</li>
            <li>OpenSUSE</li>
            <li>CentOS</li>
            <li>a další</li>
        
    </tr>
</table>

## Požadavky na systém pro cíl Linux a macOS platformy

- Runtime knihovny GCC-6 (nebo později).

- Závislosti .NET Core Runtime. Instalace .NET Core Runtime sám je `NOT` požadované.

- Pro Python 3, 5- 3, 7: `pymalloc` stavba Python je potřeba. • `--with-pymalloc` Python možnost sestavení je standardně povolena. Typicky, `pymalloc` stavba Python je označena `m` Přípona v názvu souboru.

- `libpython` sdíleno Python Knihovna. • `--enable-shared` Python build option je defaultně vypnuta, některé Python distribuce neobsahují `libpython` sdílená knihovna. Pro některé linuxové platformy, `libpython` sdílenou knihovnu lze instalovat pomocí správce balíků, například: `sudo apt-get install libpython3.7`. Společná otázka je, že `libpython` knihovna je instalována na jiném místě, než je standardní systémová poloha pro sdílené knihovny. Problém lze vyřešit pomocí Python vytvářet možnosti nastavení alternativních cest knihovny při sestavování Python, nebo pevné vytvořením symbolického odkazu na `libpython` soubor knihovny v systémovém standardním umístění pro sdílené knihovny. Typicky, `libpython` sdílený název souboru knihovny `libpythonX.Ym.so.1.0` místo Python 3, 5- 3, 7 nebo `libpythonX.Y.so.1.0` místo Python 3.8 nebo novější (například: libpython3.7m.so.1.0, libpython3.9.so.1.0)
