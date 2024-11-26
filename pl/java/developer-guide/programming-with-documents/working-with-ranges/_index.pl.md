---
title: Praca z Ranges w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z Ranges
linktitle: Praca z Ranges
description: "Wprowadzenie do zakresu funkcji w Aspose.Words zamiast Java."
type: docs
weight: 130
url: /pl/java/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

W Aspose.Words, a Range jest "płaskim oknem" do innego modelu dokumentu.

{{% /alert %}}

Jeśli pracowałeś z Microsoft Word Automatyzacja, prawdopodobnie wiesz, że jednym z głównych narzędzi do badania i modyfikacji zawartości dokumentu jest `Range` obiekt. Zakres jest jak "okno" w treści dokumentu i formatowanie.

Aspose.Words ma również [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) klasa i jest przeznaczony do wyglądu i działania podobnie do **Range** w Microsoft Word. Chociaż **Range** nie może obejmować arbitralnej części dokumentu i nie posiada **Start** oraz **End**, można uzyskać dostęp do zakresu objętego przez dowolny węzeł dokumentu, w tym [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Sam. Innymi słowy, każdy węzeł ma swój własny zakres. W **Range** obiekt pozwala na dostęp do tekstu, zakładek i pól formatowania w ramach zakresu.

## Pobieranie zwykłego tekstu

Użyj [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) właściwość do pobrania zwykłego, niesformatowanego tekstu zakresu.

Poniższy przykład kodu pokazuje jak uzyskać zwykły, niesformatowany tekst zakresu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Usuń tekst

W `Range` klasa pozwala na usunięcie wszystkich znaków zakresu przez wywołanie [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

Poniższy przykład kodu pokazuje jak usunąć wszystkie znaki zakresu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 
