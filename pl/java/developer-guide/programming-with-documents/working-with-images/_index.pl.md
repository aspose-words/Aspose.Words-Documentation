---
title: Praca z Obrazy w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z obrazami
linktitle: Praca z obrazami
type: docs
description: "Kształty obrazów w szczegółach i zaawansowanych funkcji dostarczonych przez Aspose.Words zamiast Java."
weight: 300
url: /pl/java/working-with-images/
---

Aspose.Words pozwala użytkownikom pracować z obrazami w bardzo elastyczny sposób. W tym artykule, można zbadać tylko niektóre z możliwości pracy z obrazami.

## Jak wyodrębnić obrazy z dokumentu {#how-to-extract-images-from-a-document}

Wszystkie obrazy są przechowywane wewnątrz **Shape** węzły w dokumencie. Aby wyodrębnić wszystkie obrazy lub obrazy o określonym typie z dokumentu, wykonaj następujące czynności:

- Użyj [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) metoda wyboru wszystkich węzłów kształtu.
- Iterate poprzez kolekcje węzłów.
- Sprawdź [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) Posiadłość boolean.
- Ekstrakcja danych obrazu za pomocą [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) nieruchomości.
- Zapisz dane obrazu do pliku.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Jak wpisać kod kreskowy na każdej stronie dokumentu {#how-to-insert-barcode-on-each-documen-page}

Ten przykład pozwala na dodanie tych samych lub różnych kodów kreskowych na wszystkich lub konkretnych stronach dokumentu Word. Nie ma bezpośredniego sposobu na dodanie kodów kreskowych na wszystkich stronach dokumentu, ale można użyć [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) oraz [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) metody przechodzenia do dowolnej sekcji lub nagłówków / stóp i wstawiania obrazów kodu kreskowego, jak można zobaczyć w poniższym kodzie

Poniższy przykład kodu pokazuje, jak umieścić obrazek kodu kreskowego na każdej stronie dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Zablokuj wskaźnik ostrości obrazu {#lock-aspect-ratio-of-image}

Stosunek kształtu geometrycznego jest stosunkiem jego rozmiarów w różnych wymiarach. Można zablokować proporcje obrazu za pomocą [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). Domyślna wartość współczynnika kształtu zależy od [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Jest. true zamiast `ShapeType.Image` oraz false dla innych typów kształtów.

Poniższy przykład kodu pokazuje, jak pracować z proporcjami:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Jak uzyskać rzeczywiste bounds kształtów w punktach {#how-to-get-actual-bounds-of-shape-in-points}

Jeśli chcesz rzeczywiste bounding pole kształtu jako renderowane na stronie, można to osiągnąć za pomocą [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) nieruchomości.

Poniższy przykład kodu pokazuje jak korzystać z tej właściwości:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Obrazy zbożowe

Uprawa obrazu zazwyczaj odnosi się do usunięcia niechcianych zewnętrznych części obrazu, aby pomóc poprawić kadrowanie. Jest również stosowany do usuwania niektórych części obrazu w celu zwiększenia koncentracji na danym obszarze.

Poniższy przykład kodu pokazuje, jak to osiągnąć używając Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Zapisywanie zdjęć jako WMF

Aspose.Words zapewnia funkcjonalność, aby zapisać wszystkie dostępne obrazy w dokumencie [WMF](https://docs.fileformat.com/image/wmf/)format podczas konwersji DOCX do RTF.

Poniższy przykład kodu pokazuje, jak zapisać obrazy jako WMF z RTF zapisać opcje:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
