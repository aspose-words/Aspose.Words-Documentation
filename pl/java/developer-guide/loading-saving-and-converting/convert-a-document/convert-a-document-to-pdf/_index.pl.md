---
title: Konwertuj dokument do PDF w Java
second_title: Aspose.Words zamiast Java
articleTitle: Konwertuj dokument do PDF
linktitle: Konwertuj dokument do PDF
description: "Konwersja dokumentu w formacie Word lub innego obsługiwanego formatu do PDF, który zachowuje oryginalny wygląd dokumentu podczas renderowania na różnych platformach przy użyciu Java."
type: docs
weight: 10
url: /pl/java/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

Możliwość łatwej i niezawodnej konwersji dokumentów z jednego formatu na inny jest kluczową cechą Aspose.Words. Jednym z najbardziej popularnych formatów do konwersji jest PDF - utrwalony format układu, który zachowuje oryginalny wygląd dokumentu podczas renderowania na różnych platformach. Określenie "renderowanie" jest używane w Aspose.Words opis procesu konwersji dokumentu na format pliku, który jest paginowany lub ma pojęcie stron.

## Konwertuj Word Document do PDF {#convert-a-word-document-to-pdf}

Konwersja z Worda na PDF jest raczej skomplikowanym procesem wymagającym kilku etapów obliczeń. Aspose.Words układ silnika naśladuje sposób Microsoft Wordsilnik układu strony działa, dzięki czemu dokumenty wyjściowe PDF wyglądają jak najbliżej tego, co można zobaczyć w Microsoft Word.

Z Aspose.Words można programowo przekonwertować dokument z formatu DOC lub DOCX do PDF bez użycia Microsoft Biuro. Ten artykuł wyjaśnia jak przeprowadzić tę konwersję.

{{% alert color="primary" %}}

Należy zauważyć, że liczba stron w dokumencie wpływa na czas konwersji.

{{% /alert %}}

### Konwersja DOCX lub DOC na PDF {#converting-doc-or-docx-to-pdf}

Konwersja z formatu dokumentu DOC lub DOCX na format PDF w Aspose.Words jest bardzo łatwe i może być wykonane tylko z dwóch linii kodu, które:

1. Wczytaj dokument do [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) obiekt wykorzystujący jeden z jego konstruktorów poprzez podanie nazwy dokumentu wraz z rozszerzeniem jego formatu.
1. Wywołaj jednego z [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) metody **Document** obiekt i określić pożądany format wyjścia jako PDF, wprowadzając nazwę pliku z rozszerzeniem. "PDF".

Poniższy przykład kodu pokazuje, jak przekonwertować dokument z DOCX do PDF za pomocą `Save` Metoda:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

Czasami konieczne jest określenie dodatkowych opcji, które mogą mieć wpływ na wynik zapisu dokumentu jako PDF. Opcje te można określić za pomocą [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) klasa, zawierająca właściwości określające sposób wyświetlania wyjścia PDF.

Należy pamiętać, że przy tej samej technice można przekonwertować dowolny format flow- układ dokumentu do formatu PDF.

{{% /alert %}}

### Konwertuj do różnych plików PDF Normy {#converting-to-various-pdf-standards}

Aspose.Words zapewnia [PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)wyliczenie wspierające konwersję DOC lub DOCX na różne standardy formatu PDF (takie jak PDF 1.7, PDF 1.5 itp.).

Poniższy przykład kodu pokazuje, jak przekonwertować dokument do PDF 1.7 za pomocą [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) zgodnie z PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Konwertuj obrazy do PDF

Konwersja na PDF nie jest ograniczona przez Microsoft Word formaty dokumentów. Każdy format obsługiwany przez Aspose.Words, w tym programowo utworzone, mogą być również konwertowane do PDF. Na przykład, możemy przekonwertować obrazy jednostronicowe, takie jak JPEG, PNG, BMP, EMF lub WMF, jak również obrazy wielostronicowe, takie jak TIFF i GIF, do PDF.

Poniższy przykład kodu pokazuje jak przekonwertować obrazy JPEG i TIFF do PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Aby ten kod działał, musisz dodać odniesienia do Aspose.Words, Java.awt.image i javax. imageio klasy pakietów do projektu.

## Zmniejsz format PDF Rozmiar wyjścia

Podczas zapisywania do PDF możesz określić, czy chcesz zoptymalizować wyjście. Aby to zrobić, musisz ustawić [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) do true, a następnie zbędne zagnieżdżone płótna i puste płótna zostaną usunięte, sąsiad glyphs z tym samym formatowaniem będzie zwięzłe.

Poniższy przykład kodu pokazuje jak zoptymalizować wyjście:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

Korzystanie z **OptimizeOutput** właściwość może wpływać na dokładność wyświetlania treści.

{{% /alert %}}

## Zobacz również

- Artykuł [Renderowanie](/words/pl/java/rendering/) więcej informacji na temat formatów fixed- page i flow- layout
- Artykuł [Konwersja na formacie strony Naprawiono](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) więcej informacji na temat układu strony
- Artykuł [Określ opcje renderowania podczas konwersji na PDF](/words/pl/java/specify-rendering-options-when-converting-to-pdf/) więcej informacji na temat korzystania z `PdfSaveOptions` klasa
