---
title: Možnosti a vzhled dokumentů slov
second_title: Aspose.Words místo Java
articleTitle: Práce s možnostmi a vzhledem slovních dokumentů
linktitle: Práce s možnostmi a vzhledem slovních dokumentů
description: "Kontrola vzhledu dokumentů Word s přihlédnutím k rozdílu mezi různými Microsoft Word verze používající Java."
type: docs
weight: 40
url: /cs/java/work-with-word-document-options-and-appearance/
---

Někdy je třeba změnit vzhled dokumentu, například nastavení jazykových preferencí nebo počet řádků na stránku.Aspose.Words poskytuje schopnost kontrolovat, jak bude dokument zobrazen, a také některé další možnosti. Tento článek popisuje takové možnosti.

## Nastavit možnosti zobrazení dokumentu

Můžete ovládat, jak bude dokument zobrazen v Microsoft Word s použitím [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) třída. Například můžete nastavit hodnotu zoomu dokumentu pomocí [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) vlastnost, nebo režim zobrazení pomocí [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) majetek.

Následující příklad kódu ukazuje, jak zajistit, aby byl dokument zobrazen na 50% při otevření v Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

Pro tento příklad si můžete stáhnout soubor šablony [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 nepíše žádný zoom faktor do dokumentu a již nenastavuje výchozí zoom z hodnoty napsané do dokumentu, místo toho se zdá, že používá zoom faktor posledního otevřeného dokumentu.

{{% /alert %}}

## Nastavit možnosti zobrazení stránky

Pokud chcete nastavit počet znaků na řádek, použijte [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) majetek. Můžete také nastavit počet řádků na stránku pro dokument Word [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) vlastnost získat nebo nastavit počet řádků na stránku v síti dokumentů.

{{% alert color="primary" %}}

In Microsoft Word, stejné parametry můžete nastavit pomocí záložky "Document Grid" v dialogovém okně "Page Setup" pouze při instalaci asijské jazykové podpory.

{{% /alert %}}

Následující příklad kódu ukazuje, jak nastavit počet znaků na řádek a počet řádků na stránku pro Microsoft Word dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Nastavit předvolby jazyka

Zobrazení dokumentu v Microsoft Word závisí na tom, které jazyky jsou pro tento dokument nastaveny jako výchozí hodnoty. Pokud nejsou ve výchozích hodnotách nastaveny žádné jazyky, Microsoft Word získává informace z dialogového okna "Nastavit jazykovou předvolbu" , které lze například nalézt v části "Plán → Možnosti → Jazyk" Microsoft Word 2019.

S Aspose.Words, můžete také nastavit jazykové preference pomocí [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) třída. Upozorňujeme také, že pro správné zobrazení vašeho dokumentu je nutné nastavit Microsoft Word Verze, že proces načítání dokumentu by měl odpovídat? [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) majetek.

{{% alert color="primary" %}}

Jestliže Aspose.Words Vygenerovaný dokument nevypadá podle očekávání, zkontrolujte **LanguagePreferences** a **MswVersion** hodnoty a v případě potřeby je nastavte tak, aby odpovídaly nastavení pro vaše Microsoft Word verze.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat japonsky k editaci jazyků:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

Následující příklad kódu ukazuje, jak nastavit ruština jako výchozí editační jazyk:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Optimalizovat dokument pro konkrétní Slovní verze

The [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) metoda umožňuje optimalizovat obsah dokumentu, stejně jako výchozí Aspose.Words Chování pro konkrétní verzi Microsoft Word. Můžete použít tuto metodu k prevenci Microsoft Word Zobrazení režimu Kompatibility při nakládání dokumentů. Všimněte si, že můžete také potřebovat nastavit `Compliance` vlastnictví Iso29500_2008_ Přechodné nebo vyšší.

Následující příklad kódu ukazuje, jak optimalizovat obsah dokumentu pro Microsoft Word 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
