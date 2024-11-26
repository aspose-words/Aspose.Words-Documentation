---
title: Utwórz lub załaduj dokument w C#
second_title: Aspose.Words dla .NET
articleTitle: Utwórz lub załaduj dokument
linktitle: Utwórz lub załaduj dokument
type: docs
url: /pl/net/create-or-load-a-document/
description: "Utwórz pusty dokument lub załaduj go z pliku lub strumienia za pomocą C#."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
timestamp: 2024-07-09-19-00-42
---

Prawie każde zadanie, które chcesz wykonać w Aspose.Words, wiąże się z załadowaniem dokumentu. Klasa `Document` reprezentuje dokument załadowany do pamięci. Dokument zawiera kilka przeciążonych konstruktorów, umożliwiających utworzenie pustego dokumentu lub załadowanie go z pliku lub strumienia. Dokument można załadować w dowolnym formacie ładowania obsługiwanym przez Aspose.Words. Listę wszystkich obsługiwanych formatów ładowania można znaleźć w wyliczeniu [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/).

## Utwórz nowy dokument {#create-a-new-document}

Wywołamy konstruktor [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) bez parametrów, aby utworzyć nowy pusty dokument. Jeśli chcesz programowo wygenerować dokument, najprostszym sposobem jest użycie klasy [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) w celu dodania zawartości dokumentu.

Poniższy przykład kodu pokazuje, jak utworzyć dokument za pomocą narzędzia do tworzenia dokumentów:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

Zwróć uwagę na wartości domyślne:

- Pusty dokument zawiera jedną sekcję z domyślnymi parametrami, jeden pusty akapit i niektóre style dokumentu. Właściwie ten dokument jest taki sam, jak wynik utworzenia "Nowego dokumentu" w Microsoft Word.
- Rozmiar papieru dokumentu to [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Załaduj dokument {#load-a-document}

Aby załadować istniejący dokument w dowolnym formacie [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/), przekaż nazwę pliku lub strumień do jednego z konstruktorów Document. Format załadowanego dokumentu jest automatycznie określany na podstawie jego rozszerzenia.

### Załaduj z pliku {#load-from-a-file}

Przekaż nazwę pliku jako ciąg do konstruktora Document, aby otworzyć istniejący dokument z pliku.

Poniższy przykład kodu pokazuje, jak otworzyć dokument z pliku:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### Załaduj ze strumienia {#load-from-a-stream}

Aby otworzyć dokument ze strumienia, po prostu przekaż obiekt strumienia zawierający dokument do konstruktora Document.

Poniższy przykład kodu pokazuje, jak otworzyć dokument ze strumienia:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
