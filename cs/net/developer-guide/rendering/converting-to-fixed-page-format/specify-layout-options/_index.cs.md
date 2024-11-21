---
title: Zadejte možnosti rozložení v C#
second_title: Aspose.Words místo .NET
articleTitle: Upřesnit možnosti rozložení
linktitle: Upřesnit možnosti rozložení
description: "Upřesnit rozložení Možnosti pro různé rozvržení dokumentů pomocí C#."
type: docs
weight: 10
url: /cs/net/specify-layout-options/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words umožňuje vytvářet výstupní dokumenty s různými rozloženími, v závislosti na parametrech uvedených ve vlastnostech [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) třída. Některé z těchto vlastností připomínají některé z Microsoft Word možnosti menu uživatelského rozhraní a budou popsány v tomto článku.

Pro úplný seznam parametrů jako například [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) pro výpočet čísel stránek v kontinuální části, která restartuje číslování stránky, nebo [IgnorePrinterMetrics](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) ignorovat "Použijte metriky tiskárny pro nastavení dokumentu" volba kompatibility, viz [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) třídní stránka.

## Formátování značek

Aspose.Words umožňuje spravovat formátovací značky pomocí následujících vlastností:

- [ShowHiddenText](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showhiddentext/) A `Boolean` hodnota, která určuje, zda je skrytý text vykreslen.
- [ShowParagraphMarks](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showparagraphmarks/) A `Boolean` hodnota, která určuje, zda jsou vykresleny znaky odstavců.

Stránka zobrazená v následujícím příkladu obsahuje tři odstavce. Ten druhý je schovaný. Uživatel může změnit **ShowHiddenText** možnost zobrazení tohoto skrytého textu na stránce. Každý odstavec má také na konci značku odstavce. Značka odstavce obvykle není viditelná, pokud **ShowParagraphMarks** majetek je nastaven tak, aby jej vykreslil.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

In Microsoft Word, tyto parametry jsou nastaveny pomocí dialogového okna "File → Options → Display":

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## Připomínky a revize

S Aspose.Words, můžete podat připomínky k dokumentu, které budou vypadat stejně jako v Microsoft Word. Pro upřesnění, zda jsou předloženy připomínky, použijte [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) majetek.

In Microsoft Word, Tento parametr je nastaven pomocí dialogového okna Možnosti změn Tracku, jak je uvedeno níže:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

Také, Aspose.Words umožňuje zobrazení revizí v dokumentu. Použijte [RevisionOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/revisionoptions/) majetek **LayoutOptions** třída pro stanovení, zda jsou revize dokumentu zobrazeny. Pro kontrolu jejich vzhledu (zvýraznění zraku barva, barva revizní lišty, atd.), použijte [RevisonOptions](https://reference.aspose.com/words/net/aspose.words.layout/revisionoptions/) třída.

Můžete také mít revize zobrazeny jako komentáře k obsahu. Pro tento účel použijte [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) majetek a [ShowInBalloons](https://reference.aspose.com/words/net/aspose.words.layout/commentdisplaymode/) hodnota.

Následující příklad kódu ukazuje, jak přizpůsobit revize zobrazení:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

Obrázek níže ukazuje, jak Aspose.Words uvádí komentáře a revize Smazat:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## Tvarování textu pro pokročilé typografie

• [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) vlastnost umožňuje nastavit funkci formování textu, stejně jako `OpenType` funkce podpory.

Použijte textové tvarování pro zpracování dokumentů v těchto hlavních případech:

- Dokument používá Kerning, Numeral Shaping, Numeral Forms, nebo Ligatures.
- Dokument používá Complex Scripts, jako je arabština, Khmer, Thai, atd.

{{% alert color="primary" %}}

Formování textu bude povoleno pouze při exportu dokumentu do PDF nebo XPS.

{{% /alert %}}
