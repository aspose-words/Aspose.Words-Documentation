---
title: Nainstalujte TrueType písma na Linux v C++
second_title: Aspose.Words pro C++
articleTitle: Nainstalujte TrueType písma na Linux
linktitle: Nainstalujte TrueType písma na Linux
description: "Aspose.Words for C++ umožňuje vykreslení dokumentu vytvořeného pomocí Microsoft Word na stroji Linux s nejlepší přesností. Chcete-li toho dosáhnout, zkopírujte soubory písem ze zařízení Windows nebo nainstalujte balíček písem `TrueType` do zařízení Linux."
type: docs
weight: 20
url: /cs/cpp/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Nejčastěji použijete Aspose.Words k převodu dokumentů DOC nebo DOCX do formátu PDF. Pokud to potřebujete udělat na stroji Linux, Toto téma vám pomůže naučit se, jak zajistit, aby Aspose.Words vykreslovalo vaše dokumenty s nejlepší přesností.

Nejčastěji byly dokumenty DOC a DOCX, které je třeba převést, vytvořeny pomocí Microsoft Word, v operačním systému Windows nebo Mac OS. Proto většina písem používaných v dokumentech DOC a DOCX jsou "Windows písma" nebo "kancelářská písma", což jsou písma nainstalovaná s Microsoft Windows nebo Microsoft Office. Mezi tato písma patří Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings a mnoho dalších.

Problém je v tom, že výše uvedená písma `TrueType` nejsou ve výchozím nastavení nainstalována v distribucích Linux. Pokud vezmete typický dokument DOCX naformátovaný písmem Cambria a pokusíte se jej převést do formátu PDF na Linux, Aspose.Words použije jiné písmo, protože Cambria není k dispozici. V důsledku toho bude dokument PDF vypadat jinak ve srovnání s původním dokumentem DOCX. Abyste se ujistili, že se dokumenty převedené pomocí Aspose.Words zobrazují co nejblíže originálu, musíte do svého systémuLinux nainstalovat "Windows fonts".

Existují dva hlavní způsoby, jak získat písma TrueType v systému Linux:

- Kopie .TTF a .TTC soubory ze stroje Windows na Váš stroj Linux
- Nainstalujte balíček písem `TrueType`, například *msttcorefonts*

## Kopírování písem ze stroje Windows

Snadný a rychlý způsob, jak získat PÍSMA TrueType v systému Linux, je kopírovat .TTF a .TTC soubory z adresáře C: \ Windows\Fonts na stroji Windows do nějakého adresáře na vašem stroji Linux. Tato písma na Linux nemusíte žádným způsobem instalovat ani registrovat; stačí zadat umístění písem pomocí třídy [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings) v Aspose.Words.

{{% alert color="primary" %}}

Ověřte, zda je vyžadováno licencování písem, a pečlivě si přečtěte EULA před instalací písem MS do libovolného operačního systému Linux.

{{% /alert %}}

## Nainstalujte balíček písem `TrueType`

Existuje řada balíčků Linux, které obsahují písma Microsoft TrueType, které si můžete stáhnout a nainstalovat do svého počítače Linux. Přesné kroky se mohou lišit v různých distribucích Linux.

- Na Ubuntu použijte Synaptic Package Manager k vyhledání a instalaci balíčku *ttf-mscorefonts-installer*.
- Na openSUSE Použijte Yast2 → správa softwaru k vyhledání a instalaci balíčku *fetchmsttfonts*.
- Použijte písma Liberation licencovaná pod OFL jako alternativu ke standardním písmům Windows: Arial, Times New Roman a Courier New.
- Pro balíčky písem vhodné pro jiné distribuce Linux vyhledejte dostupnou dokumentaci na internetu.

Po instalaci balíčku Aspose.Words najde tato písma ve složkách ve vašem systému a použije je při práci s dokumenty.

## Vidět

- [Liberation Fonts](https://github.com/liberationfonts) jako alternativa ke standardním písmům Windows
