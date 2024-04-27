---
title: Zadejte možnosti rozložení v Java
second_title: Aspose.Words místo Java
articleTitle: Zadejte možnosti rozložení
linktitle: Zadejte možnosti rozložení
description: "Vytvořit výstupní dokumenty s různými rozloženími v závislosti na parametrech uvedených v dokumentu pomocí Java."
type: docs
weight: 10
url: /cs/java/specify-layout-options/
---

Aspose.Words umožňuje vytvářet výstupní dokumenty s různými rozvrženími, v závislosti na parametrech uvedených v [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) majetek **Document**. Tato vlastnost připomíná některé z Microsoft Word možnosti uživatelského rozhraní popsané v tomto článku.

Pro úplný seznam parametrů jako například [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) pro výpočet čísel stránek v kontinuální části, která restartuje číslování stránky, nebo [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) ignorovat "Použijte metriky tiskárny pro nastavení dokumentu" volba kompatibility, viz [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) třídní stránka.

## Formátování značek

Aspose.Words umožňuje spravovat formátovací značky pomocí následujících vlastností:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) A `Boolean` hodnota, která určuje, zda je skrytý text přeložen.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) A `Boolean` hodnota, která určuje, zda jsou vykresleny znaky odstavců.

Stránka znázorněná v následujícím příkladu obsahuje tři odstavce. Ten druhý je schovaný. Uživatel může změnit **ShowHiddenText** možnost zobrazit tento text na stránce. Každý odstavec má také na konci značku odstavce. Značka odstavce obvykle není viditelná, pokud **ShowParagraphMarks** majetek je nastaven tak, aby jej vykreslil.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

In Microsoft Word, tyto parametry jsou nastaveny pomocí dialogového okna "File → Options → Display":

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Připomínky a revize

S Aspose.Words, můžete podat dokument komentáře, které budou vypadat stejně jako v Microsoft Word. Pro upřesnění, zda jsou připomínky předloženy, použijte [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) majetek.

In Microsoft Word, Tento parametr je nastaven pomocí dialogového okna Možnosti změn Tracku, jak je uvedeno níže:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

Také, Aspose.Words umožňuje zobrazení revizí v dokumentu. Použijte [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) majetek **LayoutOptions** třída pro určení, zda jsou revize dokumentu zobrazeny. Pro kontrolu jejich vzhledu (zvýraznění zraku barva, barva revizní lišty, atd.), použijte [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) třída.

Můžete také mít revize zobrazeny jako komentáře k obsahu. Pro tento účel použijte [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) majetek a [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) hodnota.

Následující příklad kódu ukazuje, jak přizpůsobit revize zobrazení:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

Obrázek níže ukazuje, jak Aspose.Words uvádí komentáře a revize Smazat:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Tvarování textu pro pokročilé typografie

The [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) vlastnost umožňuje nastavení funkce tvarování textu, stejně jako `OpenType` funkce podpory.

Použijte textové tvarování pro zpracování dokumentů v těchto hlavních případech:

- Dokument používá Kerning, Numeral Shaping, Numeral Forms, nebo Ligatures.
- Dokument používá Complex Scripts, jako je arabština, Khmer, Thai, atd.

{{% alert color="primary" %}}

Formování textu bude povoleno pouze při exportu dokumentu do PDF nebo XPS.

{{% /alert %}}
