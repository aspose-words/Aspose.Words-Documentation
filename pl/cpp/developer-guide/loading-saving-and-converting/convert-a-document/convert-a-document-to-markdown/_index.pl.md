---
title: Konwertuj dokument na Markdown w C++
second_title: Aspose.Words dla C++
articleTitle: Konwertuj dokument na Markdown
linktitle: Konwertuj dokument na Markdown
type: docs
description: "Konwertuj dokument w dowolnym obsługiwanym formacie ładowania na Markdown i odwrotnie za pomocą C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /pl/cpp/convert-a-document-to-markdown/
timestamp: 2024-10-21-08-52-03
---

Markdown to popularny format używany do oznaczania tekstu i jego dalszej konwersji na HTML, PDF, DOCX, lub inne formaty. Wielu programistów wybiera ten format do pisania dokumentacji, przygotowywania artykułów do publikacji na blogach, opisywania projektów i tak dalej.

Markdown jest tak popularny, ponieważ łatwo jest pracować z tym formatem, a także można go po prostu przekonwertować na inne formaty. Z tego powodu Aspose.Words zapewnia możliwość konwersji dokumentu w [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) na Markdown i odwrotnie – Aspose.Words obsługuje również najpopularniejszy [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

Teraz aktywnie rozwijana jest funkcjonalność pracy z formatem Markdown, aby zapewnić więcej możliwości wygodnej i wygodnej pracy z dokumentami.

## Konwertuj dokument

Aby przekonwertować dokument na Markdown, wystarczy załadować dokument w dowolnym obsługiwanym formacie lub programowo utworzyć nowy. Następnie musisz zapisać dokument w formacie Markdown.

Poniższy przykład kodu pokazuje, jak przekonwertować DOCX na Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

Możesz także określić folder fizyczny, w którym chcesz zapisywać obrazy podczas eksportowania dokumentu do formatu Markdown. Domyślnie Aspose.Words zapisuje obrazy w tym samym folderze, w którym zapisany jest plik dokumentu, ale można zastąpić to zachowanie za pomocą właściwości [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/).

Określenie folderu za pomocą **ImagesFolder** jest również przydatne, jeśli zapisujesz dokument w strumieniu, a Aspose.Words nie ma folderu do zapisywania obrazów.

Jeśli określony **ImagesFolder** nie istnieje, zostanie utworzony automatycznie.

Poniższy przykład kodu pokazuje, jak określić folder dla obrazów podczas zapisywania dokumentu w strumieniu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## Określ opcje zapisu podczas konwersji na Markdown

Aspose.Words zapewnia możliwość używania klasy [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) do pracy z zaawansowanymi opcjami podczas zapisywania dokumentu w formacie Markdown. Większość właściwości dziedziczy lub przeciąża właściwości, które już istnieją w innych klasach przestrzeni nazw [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/). Oprócz nich dodano również szereg właściwości specyficznych dla formatu Markdown. Na przykład właściwość [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) do kontrolowania wyrównania zawartości w tabelach lub [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) i [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) do kontrolowania sposobu zapisywania obrazów po konwersji dokumentu do formatu Markdown.

## Obsługiwane Funkcje Markdown

Aspose.Words Obecnie obsługuje następujące funkcje Markdown, które w większości są zgodne ze specyfikacją `CommonMark` w Aspose.Words API i są reprezentowane jako odpowiednie style lub bezpośrednie formatowanie:

* Nagłówki to akapity ze stylami Heading 1 - Heading 6
* Blockquotes to akapity z "cytatem" w nazwie stylu
* IndentedCode to akapity z "IndentedCode" w nazwie stylu
* FencedCode to akapity z "FencedCode" w nazwie stylu
* InlineCode są przebiegami z "InlineCode" w nazwie stylu `Font`
* Reguły poziome to akapity o kształcie `HorizontalRule`
* Odważne podkreślenie
* Akcent kursywą
* StrikeThrough formatowanie
* Listy są ponumerowane lub punktowane akapity
* Tabele są reprezentowane przez klasę `Table`
* Linki są reprezentowane jako klasa `FieldHyperlink`

Poniższy przykład pokazuje, jak utworzyć dokument z niektórymi stylami i zapisać go w Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

Wynik tego przykładu kodu pokazano poniżej.

![markdown-example-aspose-words-cpp](markdown-example.png)

## Przydatne Wskazówki

Istnieje kilka niuansów i ciekawych przypadków, dowiedziawszy się, że możesz pracować z plikami Markdown bardziej elastycznie i wygodnie. Na przykład istnieje możliwość użycia:

* SetextHeading umożliwia tworzenie nagłówków wielowierszowych w Markdown, podczas gdy zwykłe nagłówki w Markdown mogą być tylko Jednowierszowe. SetextHeading jest oparty na stylu "Nagłówek N", a jego poziom może wynosić tylko 1 lub 2. Jeśli N w " nagłówku N "jest większe lub równe 2, to odpowiadające SetextHeading jest oparte na" Heading 2", w przeciwnym razie na"Heading 1".
* Różne znaczniki dla pierwszego poziomu list punktowanych ("-", "+" lub "*", domyślnym znacznikiem jest "-".) i różne typy numeracji dla uporządkowanych list ("." lub ")", domyślnym znacznikiem jest ".").
