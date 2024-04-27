---
title: Konwertuj dokument do Markdown w Java
second_title: Aspose.Words zamiast Java
articleTitle: Konwertuj dokument do Markdown
linktitle: Konwertuj dokument do Markdown
type: docs
description: "Konwersja dokumentu w dowolnym obsługiwanym formacie obciążenia do Markdown i odwrotnie używając Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /pl/java/convert-a-document-to-markdown/
---

Markdown jest popularnym formatem używanym do znakowania tekstu i jest to dalsze przekształcenie do HTML, PDF, DOCX lub innych formatów. Wielu deweloperów wybiera ten format do pisania dokumentacji, przygotowywania artykułów do publikacji na blogach, opisywania projektów itp.

Markdown jest tak popularny, ponieważ jest łatwy do pracy z tego formatu, jak również może być po prostu przekształcony do innych formatów. Z tego powodu Aspose.Words zapewnia możliwość konwersji dokumentu w [Dowolny obsesyjny format obcowania](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) do Markdown i odwrotnie - Aspose.Words wspiera także najbardziej popularne [Formaty Zapasza](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Teraz funkcjonalność do pracy z Markdown Format jest aktywnie rozwijany, aby zapewnić więcej możliwości wygodnej i wygodnej pracy z dokumentami.

## Konwertuj dokument do Markdown

Aby przekonwertować dokument <span notrans="<span notrans=" Markdown"=""></span>", > wystarczy załadować dokument w dowolnym obsługiwanym formacie lub utworzyć nowy program. Następnie należy zapisać dokument do Markdown format.

Poniższy przykład kodu pokazuje jak przekonwertować DOCX do Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Określ opcje Zapisz podczas konwersji Markdown

Aspose.Words zapewnia możliwość korzystania z [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) klasy do pracy z zaawansowanych opcji podczas zapisywania dokumentu do Markdown format. Oprócz innych właściwości dziedziczenia lub przeciążenia, wiele właściwości, które są specyficzne dla Markdown Dodano również format. Na przykład: [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) właściwość do kontrolowania ustawienia zawartości w tabelach, lub [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) oraz [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) aby kontrolować jak obrazy są zapisywane po konwersji dokumentu do Markdown format.

## Obsługiwane Markdown Cechy

Aspose.Words obecnie obsługuje następujące Markdown funkcje, które w większości następujące `CommonMark` Specyfikacja Aspose.Words API i są reprezentowane jako odpowiednie style lub bezpośrednie formatowanie:

* Nagłówki są akapitami z nagłówkiem 1 - Nagłówek 6 stylów
* Blockcutes są akapity z "Quote" w nazwie stylu
* IndentedCode są akapitami z "IndentedCode" w nazwie stylu
* ogrodzony Kod to akapity z "FencedCode" w nazwie stylu
* InlineCode są uruchomione z "InlineCode" w `Font` nazwa stylu
* Zasady horyzontalne są akapity z `HorizontalRule` kształt
* Śmiały nacisk
* Włoski nacisk
* StrikeThrough formatowanie
* Listy są numerowane lub pogrupowane
* Tabele są reprezentowane z `Table` klasa
* Linki są reprezentowane jako `FieldHyperlink` klasa

Poniższy przykład pokazuje jak stworzyć dokument z niektórymi stylami i zapisać go do Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

Wynik tego przykładu kodu przedstawiono poniżej.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Przydatne wskazówki

Istnieje kilka niuansów i ciekawych przypadków, po dowiedział się, które można pracować z Markdown pliki bardziej elastyczne i wygodne. Na przykład istnieje możliwość użycia:

* SetextNagłówek, który pozwala na tworzenie wielu linii nagłówków w <span notrans="<span notrans=" Markdown"=""></span>", > podczas gdy regularne pozycje w Markdown może być tylko pojedyncza linia. SetextNagłówek jest oparty na stylu "Nagłówek N", a jego poziom może wynosić tylko 1 lub 2. Jeżeli N w "Nagłówek N" jest większy lub równy 2, to odpowiedni SetextNagłówek jest oparty na "Nagłówek 2", inaczej na "Nagłówek 1".
* Różne znaczniki dla pierwszego poziomu list zbulletowanych ("-", "+" lub "*", domyślny znacznik to "-".) oraz różne typy numeracji dla list zamówionych (". lub"), domyślny znacznik to ".").
