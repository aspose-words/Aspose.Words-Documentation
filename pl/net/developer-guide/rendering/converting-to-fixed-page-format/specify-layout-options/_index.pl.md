---
title: Określ opcje układu w C#
second_title: Aspose.Words dla .NET
articleTitle: Określ opcje układu
linktitle: Określ opcje układu
description: "Określ opcje układu dla różnych układów dokumentów za pomocą C#."
type: docs
weight: 10
url: /pl/net/specify-layout-options/
---

Aspose.Words umożliwia tworzenie dokumentów wyjściowych o różnych układach, w zależności od parametrów określonych we właściwościach klasy [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/). Niektóre z tych właściwości przypominają niektóre opcje menu interfejsu użytkownika Microsoft Word – zostaną one opisane w tym artykule.

Pełną listę parametrów, takich jak [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) do obliczania numerów stron w ciągłej sekcji, która ponownie rozpoczyna numerowanie stron, lub [IgnorePrinterMetrics](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) do ignorowania opcji zgodności "Użyj metryk drukarki do układu dokumentu", zobacz stronę klas [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/).

## Formatowanie znaków

Aspose.Words pozwala zarządzać znacznikami formatowania za pomocą następujących właściwości:

- [ShowHiddenText](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showhiddentext/) – wartość `Boolean` określająca, czy renderowany jest ukryty tekst.
- [ShowParagraphMarks](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showparagraphmarks/) – wartość `Boolean`, która określa, czy renderowane są znaki znaczników akapitu.

Strona przedstawiona w poniższym przykładzie zawiera trzy akapity. Drugi jest ukryty. Użytkownik może zmienić opcję **ShowHiddenText**, aby wyświetlić ten ukryty tekst na stronie. Ponadto każdy akapit ma na końcu znak akapitu. Znak akapitu zwykle nie jest widoczny, chyba że właściwość **ShowParagraphMarks** jest ustawiona tak, aby go renderować.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

W Microsoft Word parametry te ustawia się za pomocą okna dialogowego "Plik → Opcje → Wyświetlanie" w następujący sposób:

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## Komentarze i poprawki

Dzięki Aspose.Words możesz renderować komentarze do dokumentów, które będą wyglądać tak samo jak w Microsoft Word. Aby określić, czy komentarze mają być renderowane, użyj właściwości [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/).

W Microsoft Word ten parametr ustawia się za pomocą okna dialogowego "Opcje śledzenia zmian", jak pokazano poniżej:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

Aspose.Words umożliwia także wyświetlanie wersji w dokumencie. Użyj właściwości [RevisionOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/revisionoptions/) klasy **LayoutOptions**, aby określić, czy mają być wyświetlane wersje dokumentu. Aby kontrolować ich wygląd (kolor podświetlenia wersji, kolor paska wersji itp.), użyj klasy [RevisonOptions](https://reference.aspose.com/words/net/aspose.words.layout/revisionoptions/).

Wersje można także wyświetlać jako komentarze do treści. W tym celu należy wykorzystać właściwość [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) i wartość [ShowInBalloons](https://reference.aspose.com/words/net/aspose.words.layout/commentdisplaymode/).

Poniższy przykład kodu pokazuje, jak dostosować wyświetlanie wersji:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

Poniższy obraz pokazuje, jak Aspose.Words renderuje komentarze i usuwa wersje:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="komentarze_and_rewizje_example_aspose_words_net" style="width:800px"/>

## Narzędzie do kształtowania tekstu do zaawansowanego renderowania typografii

Właściwość [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) umożliwia ustawienie funkcji kształtowania tekstu, a także obsługi funkcji `OpenType`.

Użyj kształtowania tekstu do przetwarzania dokumentów w następujących głównych przypadkach:

- W dokumencie zastosowano kerning, kształtowanie liczb, formy liczbowe lub ligatury.
- W dokumencie zastosowano złożone skrypty, takie jak arabski, khmerski, tajski itp.

{{% alert color="primary" %}}

Kształtowanie tekstu zostanie włączone tylko podczas eksportowania dokumentu do formatu PDF lub XPS.

{{% /alert %}}
