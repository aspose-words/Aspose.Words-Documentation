---
title: Možnosti a vzhled Word dokument
second_title: Aspose.Words místo .NET
articleTitle: Práce s možnostmi a vzhledem slovních dokumentů
linktitle: Práce s možnostmi a vzhledem slovních dokumentů
description: "Kontrola vzhledu dokumentů Word s přihlédnutím k rozdílu mezi různými Microsoft Word verze používající C#."
type: docs
weight: 40
url: /cs/net/work-with-word-document-options-and-appearance/
---

Někdy je třeba změnit vzhled dokumentu, například nastavení jazykových preferencí nebo počet řádků na stránku.Aspose.Words poskytuje schopnost kontrolovat, jak bude dokument zobrazen, a také některé další možnosti. Tento článek popisuje takové možnosti.

## Nastavit možnosti zobrazení dokumentu

Můžete ovládat, jak bude dokument zobrazen v Microsoft Word s použitím [ViewOptions](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/) třída. Například můžete nastavit hodnotu zoomu dokumentu pomocí [ZoomPercent](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/zoompercent/) vlastnost nebo režim zobrazení pomocí [ViewType](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/viewtype/) majetek.

Následující příklad kódu ukazuje, jak zajistit, aby byl dokument zobrazen na 50% při otevření v Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

Pro tento příklad si můžete stáhnout soubor šablony [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 nepíše žádný zoom faktor do dokumentu a již nenastavuje výchozí zoom z hodnoty napsané do dokumentu, místo toho se zdá, že používá zoom faktor posledního otevřeného dokumentu.

{{% /alert %}}

## Nastavit možnosti zobrazení stránky

Pokud chcete nastavit počet znaků na řádek, použijte [CharactersPerLine](https://reference.aspose.com/words/net/aspose.words/pagesetup/charactersperline/) majetek. Můžete také nastavit počet řádků na stránku pro dokument Word [LinesPerPage](https://reference.aspose.com/words/net/aspose.words/pagesetup/linesperpage/) vlastnost získat nebo nastavit počet řádků na stránku v síti dokumentů.

{{% alert color="primary" %}}

In Microsoft Word, stejné parametry lze nastavit pomocí záložky "Document Grid" v dialogovém okně "Page Setup" pouze při instalaci asijské jazykové podpory.

{{% /alert %}}

Následující příklad kódu ukazuje, jak nastavit počet znaků na řádek a počet řádků na stránku pro Microsoft Word doklad:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## Nastavit předvolby jazyka

Zobrazení dokumentu v Microsoft Word závisí na tom, které jazyky jsou pro tento dokument nastaveny jako výchozí hodnoty. Pokud nejsou ve výchozích hodnotách nastaveny žádné jazyky, Microsoft Word získává informace z dialogového okna "Nastavit jazykovou předvolbu" , které lze například nalézt pod "File → Možnosti → Jazyk" v Microsoft Word 2019.

S Aspose.Words, můžete také nastavit jazykové preference pomocí [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) třída. Upozorňujeme také, že pro správné zobrazení vašeho dokumentu je nutné nastavit Microsoft Word Verze, že proces načítání dokumentu by měl odpovídat? [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) majetek.

{{% alert color="primary" %}}

Jestliže Aspose.Words Vygenerovaný dokument nevypadá podle očekávání, zkontrolujte **LanguagePreferences** a **MswVersion** hodnoty a v případě potřeby je nastavte tak, aby odpovídaly nastavení pro vaše Microsoft Word verze.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat japonsky k editaci jazyků:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

Následující příklad kódu ukazuje, jak nastavit ruština jako výchozí editační jazyk:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## Optimalizujte dokument pro konkrétní Slovní verze

• [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) metoda umožňuje optimalizovat obsah dokumentu i výchozí Aspose.Words chování u konkrétní verze Microsoft Word. Můžete použít tuto metodu, aby se zabránilo Microsoft Word Zobrazení režimu Kompatibility při nakládání dokumentů. Všimněte si, že můžete také potřebovat nastavit `Compliance` Vlastnost Iso29500_2008_ Přechodná nebo vyšší.

Následující příklad kódu ukazuje, jak optimalizovat obsah dokumentu Microsoft Word 2016:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
