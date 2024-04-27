---
title: Praca z Watermark w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z Watermark
linktitle: Praca z Watermark
type: docs
description: "Manipulowanie znakami wodnymi dokumentów Java."
weight: 70
url: /pl/java/working-with-watermark/
---

Temat ten omawia, jak pracować programowo ze znakiem wodnym za pomocą Aspose.Words. Znak wodny jest obrazem tła, który wyświetla się za tekstem w dokumencie. Znak wodny może zawierać tekst lub obraz reprezentowany przez [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) Klasa.

{{% alert color="primary" %}}

**Spróbuj online**

Możesz spróbować tej funkcjonalności z naszym [Darmowy dokument online znak wadny](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Dodaj znak wodny do dokumentu

W Microsoft Word, znak wodny można łatwo umieścić w dokumencie za pomocą polecenia Wstaw znak wodny. Aspose.Words zapewnia [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) klasa do dodania lub usunięcia znaku wodnego w dokumentach. Aspose.Words zapewnia [Znak Wodny Rodaj](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)wyliczenie określające trzy możliwe typy znaków wodnych (Tekst, Obrazy i Brak) do pracy z

### Dodaj tekst Watermark

Poniższy przykład kodu pokazuje, jak umieścić znak wodny tekst w dokumencie poprzez zdefiniowanie [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) stosowania [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) Metoda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Dodaj znak wodny

Poniższy przykład kodu pokazuje, jak umieścić znak wodny obrazu w dokumencie poprzez zdefiniowanie [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) stosowania [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) Metoda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

Znak wodny można również umieścić za pomocą klasy kształtu. Bardzo łatwo jest umieścić dowolny kształt lub obraz w nagłówku lub stopce i tym samym stworzyć znak wodny każdego wyobrażalnego typu.

Poniższy przykład kodu umieszcza znak wodny w dokumencie Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Usuń znak wodny z dokumentu

W [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) klasa zapewnia `Remove` metoda usuwania znaku wodnego z dokumentu.

Poniższe przykłady kodowe pokazują jak usunąć znak wodny z dokumentów:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Aby usunąć znak wodny z dokumentu, musisz ustawić tylko nazwę znaku wodnego podczas wprowadzania, a następnie usunąć kształt znaku wodnego przez przypisaną nazwę.

Poniższy przykład kodu pokazuje jak ustawić nazwę znaku wodnego i usunąć go z dokumentu:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Dodaj znak wodny do komórki tabeli

Czasami trzeba umieścić znak wodny / obraz w komórce tabeli i wyświetlić go poza tabelą, można użyć [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) nieruchomości. Ta właściwość pobiera lub ustawia flagę wskazującą, czy kształt jest wyświetlany wewnątrz tabeli, czy poza nią. Pamiętaj, że ta właściwość działa tylko wtedy, gdy zoptymalizujesz dokument Microsoft Word 2010 [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) Metoda

Poniższy przykład kodu pokazuje jak korzystać z tej właściwości:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
