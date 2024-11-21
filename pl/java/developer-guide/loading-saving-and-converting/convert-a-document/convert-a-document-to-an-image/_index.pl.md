---
title: Konwertuj dokument do obrazka w Java
second_title: Aspose.Words zamiast Java
articleTitle: Konwertuj dokument na obrazek
linktitle: Konwertuj dokument na obrazek
type: docs
description: "Konwertuj dokument do formatu obrazu (JPG, PNG itp.). Utwórz podgląd dokumentu lub utworzyć skanowanie dokumentu, aby wysłać fakturę za pomocą Java."
weight: 35
url: /pl/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Czasami wymagane jest uzyskanie obrazu zamiast dokumentów w innych formatach, takich jak DOCX lub PDF. Na przykład, musisz dodać podgląd każdej strony dokumentu na swojej stronie internetowej lub aplikacji lub utworzyć "skanowanie" dokumentu, aby wysłać fakturę. Jest to moment, kiedy może być konieczne przekonwertowanie dokumentu w dowolnym [obsesyjny format obcowania](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) do obrazu, ponownie, w dowolnym [obseslugiwany format zapasu](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Przelicz do formatu obrazka

Podobnie jak w przypadku wszystkich już opisanych przykładów konwersji, należy utworzyć nowy dokument lub załadować istniejący dokument w dowolnym obsługiwanym formacie, dokonać niezbędnych zmian i zapisać go w dowolnym dostępnym formacie obrazu, na przykład JPEG, PNG lub BMP.

Poniższy przykład kodu pokazuje jak przekonwertować DOCX do JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Określa opcje Zapisz podczas konwersji na obrazek

Aspose.Words zapewnia Państwu [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) klasa, która daje większą kontrolę nad tym, jak dokumenty są zapisywane w różnych formatach obrazu. Niektóre właściwości tej klasy dziedziczą lub przeciążają właściwości klas podstawowych, takich jak: [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) lub [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), ale istnieją również opcje specyficzne dla zapisywania obrazów.

Można określić strony, które mają być konwertowane do formatu obrazu za pomocą [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) nieruchomości. Na przykład, może być stosowany, jeśli potrzebujesz tylko podglądu dla pierwszej lub dla określonej strony.

Można również kontrolować jakość obrazu wyjściowego i format pikseli przy użyciu następujących właściwości - [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), jak również skonfigurować ustawienia kolorów obrazu, używając następujących właściwości - [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

Istnieją również właściwości, które odnoszą się do określonego formatu, na przykład, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) lub [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

Poniższy przykład kodu pokazuje jak stworzyć podgląd pierwszej strony dokumentu z zastosowaniem kilku dodatkowych ustawień:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
