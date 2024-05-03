---
title: Nainstalovat True Zadejte písma na Linux v Java
second_title: Aspose.Words místo Java
articleTitle: Nainstalovat True Zadejte písma na Linux
linktitle: Nainstalovat True Zadejte písma na Linux
description: "Aspose.Words místo Java umožňuje vykreslit vytvořený dokument pomocí Microsoft Word v Linux stroj s nejlepší přesností."
type: docs
weight: 20
url: /cs/java/install-truetype-fonts-on-linux/
---

Nejčastěji budete používat Aspose.Words převést dokumenty DOC nebo DOCX do formátu PDF. Pokud to potřebujete udělat na Linux stroj, toto téma vám pomůže naučit se, jak zajistit Aspose.Words je vykreslování dokumentů s nejlepší přesností.

Nejčastěji byly vytvořeny dokumenty DOC a DOCX, které je třeba převést, pomocí Microsoft Word, v Windows nebo operační systém Mac OS. Proto většina písem používaných v dokumentech DOC a DOCX jsou "Windows písma" nebo "Fonty úřadu," která jsou písma nainstalována s Microsoft Windows nebo Microsoft Kancelář. Tato písma zahrnují Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings a mnoho dalších.

Problém je, že `TrueType` výše uvedená písma nejsou standardně nainstalována Linux distribuce. Pokud vezmete typický dokument DOCX, který je formátován písmem Cambria a pokusíte se jej převést do formátu PDF Linux, Aspose.Words bude používat jiné písmo, protože Cambria není k dispozici. V důsledku toho bude PDF dokument vypadat jinak, ve srovnání s původním dokumentem DOCX. Abych se ujistil, že dokumenty převedeny Aspose.Words se objeví co nejblíže originálu, musíte nainstalovat "Windows písma" na vašem Linux systém.

Existují dva hlavní způsoby, jak získat TrueType písma na Linux systém:

- Rozumím. TTC soubory z a Windows stroj na váš Linux stroj
- Nainstalujte `TrueType` font balíček, jako je *msttcorefonts*

## Kopírování písem z Windows Stroj

Snadný a rychlý způsob, jak získat TrueType písma na Linux systém je kopírovat. TTF a. TTC soubory z `C:\Windows\Fonts` adresář na a Windows stroj do některého adresáře na vašem Linux Stroj. Nemusíte instalovat nebo registrovat tato písma na Linux jakýmkoli způsobem; stačí určit umístění písem pomocí [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) třída Aspose.Words.

{{% alert color="primary" %}}

Ověřit, zda je licence nutná, a před instalací MS Fonts pozorně přečíst Linux operační systém.

{{% /alert %}}

## Nainstalovat `TrueType` Balíček písem

Existuje několik Linux balení obsahující Microsoft TrueType písma, která si můžete stáhnout a nainstalovat na vaše Linux Stroj. Přesné kroky mohou být různé na různých Linux distribuce.

- Na Ubuntu, pomocí Synaptic Package Manager najít a nainstalovat balíček *tttf-mscorefonts-installer*.
- Na openSUSE, použijte Yast2 → Software Management najít a nainstalovat *fetchmsttfonts* Balíček.
- Použít Liberation Fonts license under OFL, jako alternativu ke standardu Windows písma: Arial, Times New Roman, and Courier New.
- Pro fontové balíčky vhodné pro jiné Linux distribuce, vyhledávání dostupné dokumentace na internetu.

Po instalaci balíčku, Aspose.Words najde tato písma ve složce ve vašem systému a použije je při práci s dokumenty.

## Viz také

- [Písmo osvobození](https://github.com/liberationfonts) jako alternativa ke standardu Windows písma
