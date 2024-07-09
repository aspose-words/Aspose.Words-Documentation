---
title: Utwórz lub wczytaj dokument w Java
second_title: Aspose.Words zamiast Java
articleTitle: Utwórz lub wczytaj dokument
linktitle: Utwórz lub wczytaj dokument
type: docs
weight: 10
url: /pl/java/create-or-load-a-document/
description: "Aspose.Words umożliwia utworzenie pustego dokumentu lub wczytanie go z pliku lub strumienia za pomocą Java."
---

Prawie każde zadanie, które chcesz wykonać z Aspose.Words wymaga wczytania dokumentu. W `Document` klasa reprezentuje dokument załadowany do pamięci. Dokument posiada kilka przeciążonych konstruktorów, które pozwalają na utworzenie pustego dokumentu lub załadowanie go z pliku lub strumienia. Dokument może być wczytany w dowolnym formacie obciążenia obsługiwanym przez Aspose.Words. Lista wszystkich obsługiwanych formatów obciążenia znajduje się na stronie [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) wyliczenie.

## Utwórz nowy dokument {#create-a-new-document}

Wezwiemy [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) konstruktor bez parametrów do tworzenia nowego pustego dokumentu. Jeśli chcesz wygenerować dokument programowo, najprostszym sposobem jest użycie [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) klasy, aby dodać zawartość dokumentu.

Poniższy przykład kodu pokazuje, jak utworzyć dokument za pomocą buildera dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Zauważ wartości domyślne:

- pusty dokument zawiera jedną sekcję z domyślnymi parametrami, jeden pusty akapit, niektóre style dokumentu. Właściwie ten dokument jest taki sam jak wynik utworzenia "nowego dokumentu" w Microsoft Word.
- Rozmiar papieru jest [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Wczytaj dokument

Aby załadować istniejący dokument w którymkolwiek z [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) formaty, przekazać nazwę pliku lub strumień do jednego z konstruktorów dokumentu. Format wczytanego dokumentu jest automatycznie określony przez jego rozszerzenie.

### Wczytaj z pliku {#load-from-a-file}

Prześlij nazwę pliku jako ciąg do konstruktora dokumentu, aby otworzyć istniejący dokument z pliku.

Poniższy przykład kodu pokazuje jak otworzyć dokument z pliku:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Ładunek ze strumienia {#load-from-a-stream}

Aby otworzyć dokument ze strumienia, wystarczy przekazać obiekt strumieniowy, który zawiera dokument do konstruktora dokumentu.

Poniższy przykład kodu pokazuje jak otworzyć dokument ze strumienia:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
