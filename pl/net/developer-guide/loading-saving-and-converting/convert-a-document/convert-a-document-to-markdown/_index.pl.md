---
title: Konwertuj dokument na Markdown w formacie C#
second_title: Aspose.Words dla .NET
articleTitle: Konwertuj dokument na Markdown
linktitle: Konwertuj dokument na Markdown
type: docs
description: "Konwertuj dokument w dowolnym obsługiwanym formacie ładowania na Markdown i odwrotnie, używając C#."
keywords: how to convert a document to markdown c#
weight: 40
url: /pl/net/convert-a-document-to-markdown/
---

Markdown to popularny format używany do oznaczania tekstu i jego dalszej konwersji do formatu HTML, PDF, DOCX lub innego. Wielu programistów wybiera ten format do pisania dokumentacji, przygotowywania artykułów do publikacji na blogach, opisywania projektów i tak dalej.

Markdown jest tak popularny, ponieważ łatwo jest pracować z tym formatem, a także można go po prostu przekonwertować na inne formaty. Z tego powodu Aspose.Words umożliwia konwersję dokumentu w formacie [dowolny obsługiwany format ładowania](https://reference.aspose.com/words/net/aspose.words/loadformat/) do Markdown i odwrotnie – Aspose.Words obsługuje także najpopularniejszy format [zapisz formaty](https://reference.aspose.com/words/net/aspose.words/saveformat/).

Obecnie aktywnie rozwijana jest funkcjonalność pracy z formatem Markdown, aby zapewnić więcej możliwości wygodnej i komfortowej pracy z dokumentami.

## Konwertuj dokument

Aby przekonwertować dokument do formatu Markdown wystarczy załadować dokument w dowolnym obsługiwanym formacie lub programowo utworzyć nowy. Następnie należy zapisać dokument w formacie Markdown.

Poniższy przykład kodu pokazuje, jak przekonwertować DOCX na Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cs" >}}

Możesz także określić folder fizyczny, w którym chcesz zapisywać obrazy podczas eksportowania dokumentu do formatu Markdown. Domyślnie Aspose.Words zapisuje obrazy w tym samym folderze, w którym zapisywany jest plik dokumentu, ale można zmienić to zachowanie, korzystając z właściwości [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/).

Określenie folderu za pomocą **ImagesFolder** jest również przydatne, jeśli zapisujesz dokument w strumieniu, a Aspose.Words nie ma folderu do zapisywania obrazów.

Jeśli określony **ImagesFolder** nie istnieje, zostanie utworzony automatycznie.

Poniższy przykład kodu pokazuje, jak określić folder dla obrazów podczas zapisywania dokumentu w strumieniu:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cs" >}}

## Określ opcje zapisu podczas konwersji do formatu Markdown

Aspose.Words zapewnia możliwość wykorzystania klasy [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) do pracy z zaawansowanymi opcjami podczas zapisywania dokumentu w formacie Markdown. Większość właściwości dziedziczy lub przeciąża właściwości, które już istnieją w innych klasach przestrzeni nazw [Aspose.Words.Saving](https://reference.aspose.com/words/net/aspose.words.saving/). Oprócz nich dodano także szereg właściwości specyficznych dla formatu Markdown. Na przykład właściwość [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) do kontrolowania wyrównania treści w tabelach lub [ImageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) i [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) do kontrolowania sposobu zapisywania obrazów po konwersji dokumentu do formatu Markdown.

## Obsługiwane funkcje Markdown

Aspose.Words obsługuje obecnie następujące funkcje Markdown, które w większości są zgodne ze specyfikacją `CommonMark` w Aspose.Words API i są reprezentowane jako odpowiednie style lub formatowanie bezpośrednie:

* Nagłówki to akapity ze stylami Nagłówek 1 – Nagłówek 6
* Cytaty blokowe to akapity zawierające słowo "Cytat" w nazwie stylu
* IndentedCode to akapity zawierające "IndentedCode" w nazwie stylu
* FencedCode to akapity zawierające "FencedCode" w nazwie stylu
* InlineCode jest uruchamiany z "InlineCode" w nazwie stylu `Font`
* Linie poziome to akapity w kształcie `HorizontalRule`
* Odważne podkreślenie
* Podkreślenie kursywą
* Formatowanie przekreślone
* Listy to akapity numerowane lub wypunktowane
* Tabele są reprezentowane przez klasę `Table`
* Linki są reprezentowane jako klasa `FieldHyperlink`

Poniższy przykład pokazuje, jak utworzyć dokument z pewnymi stylami i zapisać go w formacie Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cs" >}}

Wynik tego przykładowego kodu pokazano poniżej.

![markdown-example-aspose-words-net](/words/net/convert-a-document-to-markdown/markdown-example.png)

## Przydatne porady

Istnieje kilka niuansów i interesujących przypadków, po dowiedzeniu się, które z plików Markdown można pracować bardziej elastycznie i wygodnie. Przykładowo istnieje możliwość wykorzystania:

* SetextHeading, który umożliwia tworzenie nagłówków wieloliniowych w Markdown, podczas gdy zwykłe nagłówki w Markdown mogą być tylko jednowierszowe. SetextHeading opiera się na stylu "Nagłówek N", a jego poziom może wynosić tylko 1 lub 2. Jeśli N w "Nagłówku N" jest większe lub równe 2, wówczas odpowiadający mu styl SetextHeading jest oparty na "Nagłówku 2", w przeciwnym razie na "Nagłówek 1".
* Różne znaczniki dla pierwszego poziomu list punktowanych ("-", "+" lub "*", domyślnym znacznikiem jest "-".) i różne typy numeracji dla list uporządkowanych (""." lub ")", domyślnym znacznikiem jest ".").
