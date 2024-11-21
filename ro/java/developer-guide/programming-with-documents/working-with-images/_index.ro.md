---
title: Lucrul cu imagini în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu imagini
linktitle: Lucrul cu imagini
type: docs
description: "Forme de imagine în detalii și caracteristici avansate oferite de Aspose.Words pentru Java."
weight: 300
url: /ro/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words permite utilizatorilor să lucreze cu imagini într-un mod foarte flexibil. În acest articol, puteți explora doar câteva dintre posibilitățile de lucru cu imagini.

## Cum se extrag imagini dintr-un Document {#how-to-extract-images-from-a-document}

Toate imaginile sunt stocate în interiorul **Shape** noduri într-un Document. Pentru a extrage din document toate imaginile sau imaginile cu un anumit tip, urmați acești pași:

- Utilizați metoda [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) pentru a selecta toate nodurile de formă.
- Iterați prin colecțiile de noduri rezultate.
- Verificați proprietatea booleană [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage).
- Extrageți datele imaginii folosind proprietatea [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData).
- Salvați datele imaginii într-un fișier.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Cum se introduce codul de bare pe fiecare pagină de Document {#how-to-insert-barcode-on-each-documen-page}

Acest exemplu vă permite să adăugați aceleași sau diferite coduri de bare pe toate sau anumite pagini ale unui document Word. Nu există o modalitate directă de a adăuga coduri de bare pe toate paginile unui document, dar puteți utiliza metodele [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) și [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) pentru a vă deplasa la orice secțiune sau anteturi/subsoluri și pentru a introduce imaginile codului de bare după cum puteți vedea în următorul cod.

Următorul exemplu de cod arată cum să inserați o imagine de cod de bare pe fiecare pagină a unui document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Blocați raportul de Aspect al imaginii {#lock-aspect-ratio-of-image}

Raportul de aspect al unei forme geometrice este raportul dintre dimensiunile sale în diferite dimensiuni. Puteți bloca raportul de aspect al unei imagini folosind [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). Valoarea implicită a raportului de aspect al formei depinde de [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Este adevărat pentru `ShapeType.Image` și fals pentru alte tipuri de forme.

Următorul exemplu de cod arată cum să lucrați cu raportul de aspect:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Cum să obțineți limitele reale ale formei în Puncte {#how-to-get-actual-bounds-of-shape-in-points}

Dacă doriți caseta de delimitare reală a formei așa cum este redată pe pagină, puteți realiza acest lucru utilizând proprietatea [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints).

Următorul exemplu de cod arată cum să utilizați această proprietate:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Decupați Imagini

Decuparea unei imagini se referă de obicei la îndepărtarea părților exterioare nedorite ale unei imagini pentru a ajuta la îmbunătățirea încadrării. Este, de asemenea, utilizat pentru eliminarea unora dintre porțiunile unei imagini pentru a crește focalizarea pe o anumită zonă.

Următorul exemplu de cod arată cum se poate realiza acest lucru folosind Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Salvarea imaginilor ca WMF

Aspose.Words oferă funcționalitate pentru a salva toate imaginile disponibile într - un document [WMF ](https://docs.fileformat.com/image/wmf/)formatați în timp ce convertiți DOCX în RTF.

Următorul exemplu de cod arată cum să salvați imaginile ca WMF cu RTF opțiuni de salvare:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
