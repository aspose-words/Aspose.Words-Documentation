---
title: Określ opcje układu w Java
second_title: Aspose.Words zamiast Java
articleTitle: Określ opcje układu
linktitle: Określ opcje układu
description: "Tworzenie dokumentów wyjściowych z różnymi układami, w zależności od parametrów podanych w dokumencie Java."
type: docs
weight: 10
url: /pl/java/specify-layout-options/
---

Aspose.Words umożliwia tworzenie dokumentów wyjściowych z różnymi układami, w zależności od parametrów podanych w [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) Własność **Document**. Ta nieruchomość przypomina niektóre z Microsoft Word opcje menu interfejsu użytkownika opisane w tym artykule.

Pełny wykaz parametrów, takich jak: [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) do obliczania numerów stron w ciągłej sekcji, która ponownie uruchamia numerację stron, lub [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) ignorowanie opcji kompatybilności "Użyj wskaźników drukarki do określenia dokumentu", zobacz [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) strona klasowa.

## Znaki formatowania

Aspose.Words pozwala zarządzać znakami formatującymi przy użyciu następujących właściwości:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) - a `Boolean` wartość, która określa czy ukryty tekst jest renderowany.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) - a `Boolean` wartość, która określa, czy znaki znaków paragrafu są renderowane.

Strona przedstawiona w poniższym przykładzie zawiera trzy akapity. Drugi jest ukryty. Użytkownik może zmienić **ShowHiddenText** opcja wyświetlenia tego ukrytego tekstu na stronie. Ponadto każdy akapit ma znak na końcu. Znak punktu zazwyczaj nie jest widoczny, chyba że **ShowParagraphMarks** nieruchomość jest ustawiona do renderowania.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

W Microsoft Word, parametry te są ustawione za pomocą okna dialogowego "Plik → Opcje → Wyświetlacz" w następujący sposób:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Uwagi i zmiany

Z Aspose.Words, można renderować komentarze dokumentów, które będą wyglądać tak samo jak w Microsoft Word. Aby określić, czy komentarze są składane, należy użyć [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) nieruchomości.

W Microsoft Word, parametr ten jest ustawiony przy użyciu okna dialogowego "Track Changes Options", jak pokazano poniżej:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

Poza tym, Aspose.Words pozwala wyświetlić poprawki w dokumencie. Użyj [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) Własność **LayoutOptions** klasa określająca, czy są wyświetlane korekty dokumentu. Aby kontrolować ich wygląd (zmiana podświetlania koloru, zmiana koloru paska, itp.), należy użyć [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) Klasa.

Możesz również wyświetlić korekty jako komentarze do treści. W tym celu należy użyć [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) nieruchomości i [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) wartość.

Poniższy przykład kodu pokazuje jak dostosować wyświetlacz korekt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

Poniższy obrazek pokazuje jak Aspose.Words powoduje komentarze i usuwa poprawki:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Shaper tekstowy dla zaawansowanego renderingu typograficznego

W [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) właściwość pozwala ustawić funkcjonalność kształtowania tekstu, a także `OpenType` obsługa funkcji.

Użyj tekstu do przetwarzania dokumentów w następujących głównych przypadkach:

- Dokument wykorzystuje Kerning, Numeral Shaping, Numeral Forms lub Ligacje.
- Dokument wykorzystuje złożone skrypty, takie jak arabski, Khmer, tajski itp.

{{% alert color="primary" %}}

Kształtowanie tekstu będzie możliwe tylko przy eksporcie dokumentu do PDF lub XPS.

{{% /alert %}}
