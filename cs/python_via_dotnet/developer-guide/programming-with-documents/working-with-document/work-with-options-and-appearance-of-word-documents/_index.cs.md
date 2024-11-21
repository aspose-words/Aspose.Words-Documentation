---
title: Možnosti a vzhled Word dokument
second_title: Aspose.Words místo Python
articleTitle: Práce s možnostmi a vzhledem slovních dokumentů
linktitle: Práce s možnostmi a vzhledem slovních dokumentů
description: "Kontrola vzhledu dokumentů Word s přihlédnutím k rozdílu mezi různými Microsoft Word verze používající Python."
type: docs
weight: 40
url: /cs/python-net/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Někdy je třeba změnit vzhled dokumentu, například nastavení jazykových preferencí nebo počet řádků na stránku.Aspose.Words poskytuje schopnost kontrolovat, jak bude dokument zobrazen, a také některé další možnosti. Tento článek popisuje takové možnosti.

## Nastavit možnosti zobrazení dokumentu

Můžete ovládat, jak bude dokument zobrazen v Microsoft Word s použitím [ViewOptions](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/) třída. Například můžete nastavit hodnotu zoomu dokumentu pomocí [zoom_percent](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/zoom_percent/) vlastnost nebo režim zobrazení pomocí [view_type](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/view_type/) majetek.

Následující příklad kódu ukazuje, jak zajistit, aby byl dokument zobrazen na 50% při otevření v Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetViewOption.py" >}}

{{% alert color="primary" %}}

Pro tento příklad si můžete stáhnout soubor šablony [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 nepíše žádný zoom faktor do dokumentu a již nenastavuje výchozí zoom z hodnoty napsané do dokumentu, místo toho se zdá, že používá zoom faktor posledního otevřeného dokumentu.

{{% /alert %}}

## Nastavit možnosti zobrazení stránky

Pokud chcete nastavit počet znaků na řádek, použijte [characters_per_line](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/characters_per_line/) majetek. Můžete také nastavit počet řádků na stránku pro dokument Word [lines_per_page](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/lines_per_page/) vlastnost získat nebo nastavit počet řádků na stránku v síti dokumentů.

{{% alert color="primary" %}}

In Microsoft Word, stejné parametry lze nastavit pomocí záložky "Document Grid" v dialogovém okně "Page Setup" pouze při instalaci asijské jazykové podpory.

{{% /alert %}}

Následující příklad kódu ukazuje, jak nastavit počet znaků na řádek a počet řádků na stránku pro Microsoft Word doklad:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentPageSetup.py" >}}

## Nastavit předvolby jazyka

Zobrazení dokumentu v Microsoft Word závisí na tom, které jazyky jsou pro tento dokument nastaveny jako výchozí hodnoty. Pokud nejsou ve výchozích hodnotách nastaveny žádné jazyky, Microsoft Word získává informace z dialogového okna "Nastavit jazykovou předvolbu" , které lze například nalézt pod "File → Možnosti → Jazyk" v Microsoft Word 2019.

S Aspose.Words, můžete také nastavit jazykové preference pomocí [LanguagePreferences](https://reference.aspose.com/words/python-net/aspose.words.loading/languagepreferences/) třída. Upozorňujeme také, že pro správné zobrazení vašeho dokumentu je nutné nastavit Microsoft Word Verze, že proces načítání dokumentu by měl odpovídat? [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) majetek.

{{% alert color="primary" %}}

Jestliže Aspose.Words Vygenerovaný dokument nevypadá podle očekávání, zkontrolujte [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) a [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) hodnoty a v případě potřeby je nastavte tak, aby odpovídaly nastavení pro vaše Microsoft Word verze.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat japonsky k editaci jazyků:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

Následující příklad kódu ukazuje, jak nastavit ruština jako výchozí editační jazyk:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetRussianAsDefaultEditingLanguage.py" >}}

## Optimalizujte dokument pro konkrétní Slovní verze

• [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) metoda umožňuje optimalizovat obsah dokumentu i výchozí Aspose.Words chování u konkrétní verze Microsoft Word. Můžete použít tuto metodu, aby se zabránilo Microsoft Word Zobrazení režimu Kompatibility při nakládání dokumentů. Všimněte si, že můžete také potřebovat nastavit [compliance](https://reference.aspose.com/words/python-net/aspose.words/document/compliance/) majetek [ISO29500_2008_TRANSITIONAL](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlcompliance/#iso29500_2008_transitional) nebo výš.

Následující příklad kódu ukazuje, jak optimalizovat obsah dokumentu Microsoft Word 2016:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-OptimizeForMsWord.py" >}}
