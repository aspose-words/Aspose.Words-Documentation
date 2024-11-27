---
title: Utwórz lub załaduj dokument w C++
second_title: Aspose.Words dla C++
articleTitle: Utwórz lub załaduj dokument
linktitle: Utwórz lub załaduj dokument
type: docs
description: "Utwórz pusty dokument lub załaduj go z pliku lub strumienia za pomocą C++."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /pl/cpp/create-or-load-a-document/
timestamp: 2024-01-27-14-07-04
---

Prawie każde zadanie, które chcesz wykonać za pomocą Aspose.Words, wymaga załadowania dokumentu. Klasa `Document` reprezentuje dokument załadowany do pamięci. Dokument ma kilka przeciążonych konstruktorów umożliwiających utworzenie pustego dokumentu lub załadowanie go z pliku lub strumienia. Dokument można załadować w dowolnym formacie obciążenia obsługiwanym przez Aspose.Words. Aby zapoznać się z listą wszystkich obsługiwanych formatów ładowania, zobacz wyliczenie [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/).

## Utwórz nowy dokument {#create-a-new-document}

Wywołamy konstruktor [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) bez parametrów, aby utworzyć nowy pusty dokument. Jeśli chcesz wygenerować dokument programowo, najprostszym sposobem jest użycie klasy [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder) do dodania zawartości dokumentu.

Poniższy przykład kodu pokazuje, jak utworzyć dokument za pomocą narzędzia do tworzenia dokumentów:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

Zwróć uwagę na wartości domyślne:

- Pusty dokument zawiera jedną sekcję z parametrami domyślnymi, jeden pusty akapit, niektóre style dokumentu. W rzeczywistości ten dokument jest taki sam, jak wynik utworzenia "nowego dokumentu" w Microsoft Word.
- Rozmiar papieru dokumentu to [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Załaduj dokument

Aby załadować istniejący dokument w dowolnym formacie `LoadFormat`, przekaż nazwę pliku lub strumień do jednego z konstruktorów dokumentu. Format załadowanego dokumentu jest automatycznie określany przez jego rozszerzenie.

### Załaduj z pliku {#load-from-a-file}

Przekaż nazwę pliku jako ciąg znaków do konstruktora dokumentu, aby otworzyć istniejący dokument z pliku.

Poniższy przykład kodu pokazuje, jak otworzyć dokument z pliku:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### Załaduj ze strumienia {#load-from-a-stream}

Aby otworzyć dokument ze strumienia, po prostu przekaż obiekt stream zawierający dokument do konstruktora dokumentu.

Poniższy przykład kodu pokazuje, jak otworzyć dokument ze strumienia:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
