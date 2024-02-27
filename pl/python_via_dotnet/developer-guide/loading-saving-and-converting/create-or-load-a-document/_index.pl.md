---
title: Utwórz lub załaduj dokument w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Utwórz lub załaduj dokument
linktitle: Utwórz lub załaduj dokument
type: docs
url: /pl/python-net/create-or-load-a-document/
description: "Utwórz pusty dokument lub załaduj go z pliku lub strumienia za pomocą Python."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
---

Prawie każde zadanie, które chcesz wykonać w Aspose.Words, wiąże się z załadowaniem dokumentu. Klasa [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) reprezentuje dokument załadowany do pamięci. Dokument zawiera kilka przeciążonych konstruktorów, umożliwiających utworzenie pustego dokumentu lub załadowanie go z pliku lub strumienia. Dokument można załadować w dowolnym formacie ładowania obsługiwanym przez Aspose.Words. Listę wszystkich obsługiwanych formatów ładowania można znaleźć w wyliczeniu [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/).

## Utwórz nowy dokument

Wywołamy konstruktor [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) bez parametrów, aby utworzyć nowy pusty dokument. Jeśli chcesz programowo wygenerować dokument, najprostszym sposobem jest użycie klasy [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) w celu dodania zawartości dokumentu.

Poniższy przykład kodu pokazuje, jak utworzyć dokument za pomocą narzędzia do tworzenia dokumentów:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Zwróć uwagę na wartości domyślne:

- Pusty dokument zawiera jedną sekcję z domyślnymi parametrami, jeden pusty akapit i niektóre style dokumentu. Właściwie ten dokument jest taki sam, jak wynik utworzenia "Nowego dokumentu" w Microsoft Word.
- Rozmiar papieru dokumentu to [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter).

{{% /alert %}}

## Załaduj dokument

Aby załadować istniejący dokument w dowolnym formacie [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/), należy przekazać nazwę pliku lub strumień do jednego z konstruktorów [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Format załadowanego dokumentu jest automatycznie określany na podstawie jego rozszerzenia.

### Załaduj z pliku

Przekaż nazwę pliku jako ciąg znaków do konstruktora [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), aby otworzyć istniejący dokument z pliku.

Poniższy przykład kodu pokazuje, jak otworzyć dokument z pliku:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

### Załaduj ze strumienia

Aby otworzyć dokument ze strumienia, po prostu przekaż obiekt strumienia zawierający dokument do konstruktora [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Poniższy przykład kodu pokazuje, jak otworzyć dokument ze strumienia:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
