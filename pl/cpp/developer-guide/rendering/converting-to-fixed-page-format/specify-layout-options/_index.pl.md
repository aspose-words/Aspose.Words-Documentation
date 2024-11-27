---
title: Określ opcje układu w C++
second_title: Aspose.Words dla C++
articleTitle: Określ Opcje Układu
linktitle: Określ Opcje Układu
description: "Określ opcje układu dla różnych układów dokumentów."
type: docs
weight: 20
url: /pl/cpp/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words umożliwia tworzenie dokumentów wyjściowych z różnymi układami, w zależności od parametrów określonych we właściwości [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) **Document**. Ta właściwość przypomina niektóre opcje menu interfejsu użytkownika Microsoft Word opisane w tym artykule.

Aby uzyskać pełną listę parametrów, takich jak [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/), aby obliczyć numery stron w sekcji ciągłej, która ponownie uruchamia numerację stron, lub [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/), Aby zignorować opcję zgodności "użyj metryk drukarki do rozłożenia dokumentu", zobacz stronę klasy [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options).

## Znaki Formatowania

Aspose.Words umożliwia zarządzanie znacznikami formatowania przy użyciu następujących właściwości:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) - wartość `Boolean`, która określa, czy ukryty tekst jest renderowany.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/) - wartość `Boolean`, która określa, czy znaki znaku akapitu są renderowane.

Strona przedstawiona w poniższym przykładzie zawiera trzy akapity. Drugi jest ukryty. Użytkownik może zmienić opcję **ShowHiddenText**, Aby wyświetlić ten ukryty tekst na stronie. Ponadto każdy akapit ma na końcu znak akapitu. Znak akapitu zwykle nie jest widoczny, chyba że właściwość **ShowParagraphMarks** jest ustawiona na renderowanie.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

W Microsoft Word te parametry są ustawiane za pomocą okna dialogowego" Plik → Opcje → wyświetlacz " w następujący sposób:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## Uwagi i poprawki

Za pomocą Aspose.Words możesz renderować komentarze do dokumentu, które będą wyglądać tak samo jak w Microsoft Word. Aby określić, czy komentarze są renderowane, użyj właściwości [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/).

W Microsoft Word ten parametr jest ustawiany za pomocą okna dialogowego "Opcje śledzenia zmian", jak pokazano poniżej:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

Ponadto Aspose.Words umożliwia wyświetlanie poprawek w dokumencie. Użyj właściwości [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) klasy **LayoutOptions**, aby określić, czy wyświetlane są wersje dokumentu. Aby kontrolować ich wygląd (kolor podświetlenia wersji, kolor paska wersji itp.), Użyj klasy [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/).

Możesz również wyświetlać poprawki jako komentarze do treści. W tym celu użyj właściwości [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/) i wartości [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/).

Poniższy przykład kodu pokazuje, jak dostosować wyświetlanie wersji:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

Poniższy obrazek pokazuje, jak Aspose.Words renderuje komentarze i poprawki usuwania:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## Tekst Shaper dla Zaawansowanego renderowania typografii

Właściwość [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) umożliwia ustawienie funkcji kształtowania tekstu, a także obsługę funkcji `OpenType`.

Użyj kształtowania tekstu do przetwarzania dokumentów w następujących głównych przypadkach:

- Dokument używa kerningu, kształtowania liczb, form liczbowych lub ligatur.
- Dokument wykorzystuje złożone Skrypty, takie jak arabski, Khmerski, Tajski itp.

{{% alert color="primary" %}}

Kształtowanie tekstu zostanie włączone tylko podczas eksportowania dokumentu do PDF LUB XPS.

{{% /alert %}}
