---
title: Konwertuj dokument na Markdown
second_title: Aspose.Words dla Python via .NET
articleTitle: Konwertuj dokument na Markdown
linktitle: Konwertuj dokument na Markdown
type: docs
description: "Konwertuj dokument w dowolnym obsługiwanym formacie ładowania na Markdown i odwrotnie, używając Python."
keywords: how to convert a document to markdown python
weight: 40
url: /pl/python-net/convert-a-document-to-markdown/
---

Markdown to popularny format używany do oznaczania tekstu i jego dalszej konwersji do formatu HTML, PDF, DOCX lub innego. Wielu programistów wybiera ten format do pisania dokumentacji, przygotowywania artykułów do publikacji na blogach, opisywania projektów i tak dalej.

Markdown jest tak popularny, ponieważ łatwo jest pracować z tym formatem, a także można go po prostu przekonwertować na inne formaty. Z tego powodu Aspose.Words umożliwia konwersję dokumentu w formacie [dowolny obsługiwany format ładowania](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) do Markdown i odwrotnie – Aspose.Words obsługuje także najpopularniejszy format [zapisz formaty](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

Obecnie aktywnie rozwijana jest funkcjonalność pracy z formatem Markdown, aby zapewnić więcej możliwości wygodnej i komfortowej pracy z dokumentami.

## Konwertuj dokument

Aby przekonwertować dokument do formatu Markdown wystarczy załadować dokument w dowolnym obsługiwanym formacie lub programowo utworzyć nowy. Następnie należy zapisać dokument w formacie Markdown.

Poniższy przykład kodu pokazuje, jak przekonwertować DOCX na Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

Możesz także określić folder fizyczny, w którym chcesz zapisywać obrazy podczas eksportowania dokumentu do formatu Markdown. Domyślnie Aspose.Words zapisuje obrazy w tym samym folderze, w którym zapisywany jest plik dokumentu, ale można zmienić to zachowanie, korzystając z właściwości [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/).

Określenie folderu za pomocą [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) jest również przydatne, jeśli zapisujesz dokument w strumieniu, a Aspose.Words nie ma folderu do zapisywania obrazów.

Jeśli określony [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) nie istnieje, zostanie utworzony automatycznie.

Poniższy przykład kodu pokazuje, jak określić folder dla obrazów podczas zapisywania dokumentu w strumieniu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-SetImagesFolder.py" >}}

## Określ opcje zapisu podczas konwersji do formatu Markdown

Aspose.Words zapewnia możliwość wykorzystania klasy [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) do pracy z zaawansowanymi opcjami podczas zapisywania dokumentu w formacie Markdown. Większość właściwości dziedziczy lub przeciąża właściwości, które już istnieją w innych klasach [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/). Oprócz nich dodano także szereg właściwości specyficznych dla formatu Markdown. Na przykład właściwość [table_content_alignment](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/table_content_alignment/) do kontrolowania wyrównania treści w tabelach lub [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) do kontrolowania miejsca zapisywania obrazów po konwersji dokumentu do formatu Markdown.

## Obsługiwane funkcje Markdown

Aspose.Words obsługuje obecnie następujące funkcje Markdown, które w większości są zgodne ze specyfikacją `CommonMark` w Aspose.Words API i są reprezentowane jako odpowiednie style lub formatowanie bezpośrednie:

* Nagłówki to akapity ze stylami Nagłówek 1 – Nagłówek 6
* Cytaty blokowe to akapity zawierające "Cytat" w nazwie stylu
* IndentedCode to akapity zawierające "IndentedCode" w nazwie stylu
* FencedCode to akapity zawierające "FencedCode" w nazwie stylu
* InlineCode jest uruchamiany z "InlineCode" w nazwie stylu `Font`
* Linie poziome to akapity w kształcie `HorizontalRule`
* Odważne podkreślenie
* Podkreślenie kursywą
* Formatowanie przekreślone
* Listy to akapity numerowane lub wypunktowane
* Tabele są reprezentowane przez klasę [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
* Linki są reprezentowane jako klasa [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/)

Poniższy przykład pokazuje, jak utworzyć dokument z pewnymi stylami i zapisać go w formacie Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-CreateMarkdownDocument.py" >}}

Wynik tego przykładowego kodu pokazano poniżej.

![markdown-example-aspose-words-net](/words/python-net/convert-a-document-to-markdown/markdown-example.png)

## Przydatne porady

Istnieje kilka niuansów i interesujących przypadków, po dowiedzeniu się, które z plików Markdown można pracować bardziej elastycznie i wygodnie. Przykładowo istnieje możliwość wykorzystania:

* SetextHeading, który umożliwia tworzenie nagłówków wieloliniowych w Markdown, podczas gdy zwykłe nagłówki w Markdown mogą być tylko jednowierszowe. SetextHeading opiera się na stylu "Nagłówek N", a jego poziom może wynosić tylko 1 lub 2. Jeśli N w "Nagłówku N" jest większe lub równe 2, wówczas odpowiadający mu styl SetextHeading jest oparty na "Nagłówku 2", w przeciwnym razie na "Nagłówek 1".
* Różne znaczniki dla pierwszego poziomu list punktowanych ("-", "+" lub "*", domyślnym znacznikiem jest "-".) i różne typy numeracji dla list uporządkowanych (""." lub ")", domyślnym znacznikiem jest ".").
