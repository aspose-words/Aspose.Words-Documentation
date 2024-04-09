---
title: Zadejte možnosti rozložení v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Upřesnit možnosti rozložení
linktitle: Upřesnit možnosti rozložení
description: "Upřesnit rozložení Možnosti pro různé rozvržení dokumentů pomocí Python."
type: docs
weight: 10
url: /cs/python-net/specify-layout-options/
---

Aspose.Words umožňuje vytvářet výstupní dokumenty s různými rozloženími, v závislosti na parametrech uvedených ve vlastnostech [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) třída. Některé z těchto vlastností připomínají některé z Microsoft Word možnosti menu uživatelského rozhraní a budou popsány v tomto článku.

Pro úplný seznam parametrů jako například [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) pro výpočet čísel stránek v kontinuální části, která restartuje číslování stránky, nebo [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) ignorovat "Použijte metriky tiskárny pro nastavení dokumentu" volba kompatibility, viz [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) třídní stránka.

## Formátování značek

Aspose.Words umožňuje spravovat formátovací značky pomocí následujících vlastností:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) A `Boolean` hodnota, která určuje, zda je skrytý text vykreslen.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) A `Boolean` hodnota, která určuje, zda jsou vykresleny znaky odstavců.

Stránka zobrazená v následujícím příkladu obsahuje tři odstavce. Ten druhý je schovaný. Uživatel může změnit [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) možnost zobrazení tohoto skrytého textu na stránce. Každý odstavec má také na konci značku odstavce. Značka odstavce obvykle není viditelná, pokud [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) majetek je nastaven tak, aby jej vykreslil.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

In Microsoft Word, tyto parametry jsou nastaveny pomocí dialogového okna "File → Options → Display":

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## Připomínky a revize

S Aspose.Words, můžete podat připomínky k dokumentu, které budou vypadat stejně jako v Microsoft Word. Pro upřesnění, zda jsou předloženy připomínky, použijte [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) majetek.

In Microsoft Word, Tento parametr je nastaven pomocí dialogového okna Možnosti změn Tracku, jak je uvedeno níže:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

Také, Aspose.Words umožňuje zobrazení revizí v dokumentu. Použijte [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) majetek [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) třída pro stanovení, zda jsou revize dokumentu zobrazeny. Pro kontrolu jejich vzhledu (zvýraznění zraku barva, barva revizní lišty, atd.), použijte [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/) třída.

Můžete také mít revize zobrazeny jako komentáře k obsahu. Pro tento účel použijte [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) majetek a [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons) hodnota.

Následující příklad kódu ukazuje, jak přizpůsobit revize zobrazení:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

Obrázek níže ukazuje, jak Aspose.Words uvádí komentáře a revize Smazat:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>