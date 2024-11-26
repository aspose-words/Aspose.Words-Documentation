---
title: Možnosti a vzhled Word dokumentů
second_title: Aspose.Words pro C++
articleTitle: Práce s možnostmi a vzhledem Word dokumentů
linktitle: Práce s možnostmi a vzhledem Word dokumentů
description: "Ovládejte vzhled dokumentů Word s přihlédnutím k rozdílu mezi různými verzemi Microsoft Word."
type: docs
weight: 40
url: /cs/cpp/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Někdy možná budete muset změnit vzhled dokumentu, například nastavit jazykové předvolby nebo počet řádků na stránku.Aspose.Words poskytuje možnost řídit, jak bude dokument zobrazen, a také některé další možnosti. Tento článek popisuje takové možnosti.

## Nastavte Možnosti Zobrazení Dokumentu

Můžete ovládat, jak bude dokument zobrazen v Microsoft Word pomocí třídy [ViewOptions](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/). Můžete například nastavit hodnotu zvětšení dokumentu pomocí vlastnosti [ZoomPercent](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_zoompercent/) nebo režim zobrazení pomocí vlastnosti [ViewType](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_viewtype/).

Následující příklad kódu ukazuje, jak zajistit, aby byl dokument zobrazen na 50% při otevření v Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetViewOption-SetViewOption.cpp" >}}

{{% alert color="primary" %}}

Soubor šablony pro tento příklad si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 nezapisuje do dokumentu žádný faktor zvětšení a již nenastavuje výchozí zvětšení z hodnoty zapsané do dokumentu, místo toho se zdá, že používá faktor zvětšení posledního otevřeného dokumentu.

{{% /alert %}}

## Nastavení Možností Zobrazení Stránky

Pokud chcete nastavit počet znaků na řádek, použijte vlastnost [CharactersPerLine](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_charactersperline/). Můžete také nastavit počet řádků na stránku pro dokument Word – pomocí vlastnosti [LinesPerPage](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_linesperpage/) získáte nebo nastavíte počet řádků na stránku v mřížce dokumentu.

{{% alert color="primary" %}}

V Microsoft Word můžete stejné parametry nastavit pomocí karty "Mřížka dokumentu" v dialogovém okně "Nastavení stránky" pouze v případě, že je nainstalována podpora asijského jazyka.

{{% /alert %}}

Následující příklad kódu ukazuje, jak nastavit počet znaků na řádek a počet řádků na stránku pro Microsoft Word dokument:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cpp" >}}

## Nastavení Jazykových Předvoleb

Zobrazení dokumentu v Microsoft Word závisí na tom, které jazyky jsou pro tento dokument nastaveny jako výchozí. Pokud nejsou ve výchozím nastavení nastaveny žádné jazyky, Microsoft Word převezme informace z dialogového okna "nastavit předvolby jazyka Office", které například najdete v části "Soubor → možnosti → Jazyk" v Microsoft Word 2019.

Pomocí Aspose.Words můžete také nastavit jazykové předvolby pomocí třídy [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/languagepreferences/). Všimněte si také, že pro správné zobrazení dokumentu je nutné nastavit verzi Microsoft Word, která by měla odpovídat procesu načítání dokumentu – to lze provést pomocí vlastnosti [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/).

{{% alert color="primary" %}}

Pokud Váš vygenerovaný dokument Aspose.Words nevypadá podle očekávání, zkontrolujte hodnoty **LanguagePreferences** a **MswVersion** a v případě potřeby je upravte tak, aby odpovídaly nastavení vaší verze Microsoft Word.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat japonštinu do editačních jazyků:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

Následující příklad kódu ukazuje, jak nastavit ruštinu jako výchozí jazyk úprav:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cpp" >}}

## Optimalizace dokumentu pro konkrétní verzi Word

Metoda [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) umožňuje optimalizovat obsah dokumentu a také výchozí chování Aspose.Words pro konkrétní verzi Microsoft Word. Tuto metodu můžete použít k zabránění Microsoft Word v zobrazení pásu karet "režim kompatibility" při načítání dokumentu. Všimněte si, že možná budete muset také nastavit vlastnost `Compliance` na Iso29500_2008_Transitional nebo vyšší.

Následující příklad kódu ukazuje, jak optimalizovat obsah dokumentu pro Microsoft Word 2016:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cpp" >}}
