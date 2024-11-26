---
title: Zadejte možnosti rozvržení V C++
second_title: Aspose.Words pro C++
articleTitle: Určete Možnosti Rozvržení
linktitle: Určete Možnosti Rozvržení
description: "Určete možnosti rozvržení pro různá rozvržení dokumentů."
type: docs
weight: 20
url: /cs/cpp/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words umožňuje vytvářet výstupní dokumenty s různými rozvrženími v závislosti na parametrech zadaných ve vlastnosti [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) **Document**. Tato vlastnost se podobá některým z možností nabídky uživatelského rozhraní Microsoft Word popsaných v tomto článku.

Úplný seznam parametrů, jako je [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/) pro výpočet čísel stránek v souvislé části, která restartuje číslování stránek, nebo [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/) pro ignorování možnosti kompatibility "použít metriky tiskárny k rozložení dokumentu", najdete na stránce třídy [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options).

## Formátovací Značky

Aspose.Words umožňuje spravovat značky formátování pomocí následujících vlastností:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) - hodnota `Boolean`, která určuje, zda je skrytý text vykreslen.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/) - hodnota `Boolean`, která určuje, zda jsou vykresleny znaky značky odstavce.

Stránka zobrazená v níže uvedeném příkladu obsahuje tři odstavce. Druhý je skrytý. Uživatel může změnit možnost **ShowHiddenText**, aby zobrazil tento skrytý text na stránce. Každý odstavec má na konci také značku odstavce. Značka odstavce obvykle není viditelná, pokud vlastnost **ShowParagraphMarks** není nastavena tak, aby ji vykreslila.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

V Microsoft Word jsou tyto parametry nastaveny pomocí dialogového okna" soubor → Možnosti → zobrazit " následujícím způsobem:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## Komentáře a revize

Pomocí Aspose.Words můžete vykreslit komentáře k dokumentu, které budou vypadat stejně jako v Microsoft Word. Chcete-li určit, zda jsou komentáře vykresleny, použijte vlastnost [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/).

V Microsoft Word je tento parametr nastaven pomocí dialogového okna "sledovat možnosti změn", jak je znázorněno níže:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

Aspose.Words také umožňuje zobrazit revize v dokumentu. Pomocí vlastnosti [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) třídy **LayoutOptions** definujte, zda se zobrazují revize dokumentu. Chcete-li ovládat jejich vzhled (barva zvýraznění revize, barva lišty revize atd.), použijte třídu [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/).

Můžete si také nechat zobrazit revize jako komentáře k obsahu. Pro tento účel použijte vlastnost [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/) a hodnotu [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/).

Následující příklad kódu ukazuje, jak přizpůsobit zobrazení revizí:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

Obrázek níže ukazuje, jak Aspose.Words vykresluje komentáře a odstranění revizí:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## Text Shaper pro pokročilé Vykreslování typografie

Vlastnost [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) umožňuje nastavit funkci tvarování textu a také podporu funkcí `OpenType`.

Použijte tvarování textu pro zpracování dokumentů v následujících hlavních případech:

- Dokument používá vyrovnání párů, tvarování číslic, číselné tvary nebo ligatury.
- Dokument používá složité skripty, jako je arabština,Khmer, thajština atd.

{{% alert color="primary" %}}

Tvarování textu bude povoleno pouze při exportu dokumentu do PDF nebo XPS.

{{% /alert %}}
