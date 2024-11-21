---
title: Lucrul cu imagini în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu imagini
linktitle: Lucrul cu imagini
description: "Formele imaginilor în detaliile și caracteristicile avansate furnizate de Aspose.Words pentru .NET."
type: docs
weight: 300
url: /ro/net/working-with-images/
timestamp: 2024-05-02-11-51-44
---

Aspose.Words permite utilizatorilor să lucreze cu imagini într-un mod foarte flexibil. În acest articol, poți explora doar câteva dintre posibilitățile de a lucra cu imagini.

## Cum să Inserezi o imagine {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) oferă mai multe suprascrieri ale metodei [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) care îți permite să inserezi o imagine în linie sau plutitoare. Dacă imaginea este un fișier EMF sau WMF meta-fișier, acesta va fi introdus în document în format de fișier meta. Toate celelalte imagini vor fi stocate în formatul PNG. Metoda **InsertImage** poate folosi imagini din diferite surse:

- Din fișier sau `URL` trecând un `String` parametru [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/)
- De la un flux prin trecerea unui `Stream` parametru **InsertImage**
- Din obiectul Imagine prin transmiterea unui parametru imagine **InsertImage**
- din matricea de octeți prin transmiterea unui parametru de matrice de octeți **InsertImage**

Pentru fiecare dintre cele **InsertImage** metode există suprascrieri suplimentare care îți permit să inserezi o imagine cu următoarele opțiuni:
- Inline sau plutitoare la o poziție specifică, de exemplu, **InsertImage**
- Scala procentuală sau dimensiune personalizată, de exemplu, **InsertImage**; mai mult, metoda **InsertImage** returnează un obiect [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) care tocmai a fost creat și inserat astfel încât să puteți modifica în continuare proprietățile formei

### Cum să introduceți o imagine în linie {#insert-an-inline-image}

Treceți un șir unic reprezentând un fișier care conține imaginea la **InsertImage** pentru a insera imaginea în document ca o imagine în linie

Exemplul de cod următor arată cum să inserezi o imagine în linie la poziția cursorului într-un document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### Cum să inserezi o imagine plutitoare {#insert-a-floating-image}

Exemplul următor de cod arată cum să inserezi o imagine plutitoare dintr-un fișier sau `URL` la o poziție și dimensiune specificate:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## Cum să extragi imagini dintr-un document {#how-to-extract-images-from-a-document}

Toate imaginile sunt stocate în **Shape** noduri într-un [Document](https://reference.aspose.com/words/net/aspose.words/document/). Pentru a extrage toate imaginile sau imagini de tip specific din document, urmați acești pași:

- Utilizaţi metoda [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) pentru a selecta toate nodurile **Shape**.
- Parcurge colecțiile de noduri rezultante.
- Verificați proprietatea booleană [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/).
- Extrage datele imaginii folosind proprietatea [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/).
- Salvați datele imaginii într-un fișier.

Exemplul de cod următor arată cum să extragi imagini dintr-un document și să le salvezi ca fișiere:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Cum să inserez un cod de bare pe fiecare pagină de document {#how-to-insert-barcode-on-each-documen-page}

Acest exemplu demonstrează cum să adaugi același sau coduri de bare diferite pe toate sau paginile specifice ale unui document Word. Nu există o modalitate directă de a adăuga bare pe toate paginile unui document, dar puteți folosi metodele **MoveToSection**, **MoveToHeaderFooter** și **InsertImage** pentru a trece la orice secțiune sau antet/ subsol și pentru a insera imaginile cu bare ca puteți vedea în codul următor.

Exemplul de cod următor arată cum se introduce o imagine cu coduri de bare pe fiecare pagină dintr-un document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Bloca raportul de aspect al imaginii {#lock-aspect-ratio-of-image}

Raportul de aspect al unei forme geometrice este raportul dintre dimensiunile sale în diferite dimensiuni. Poţi bloca raportul dintre laturi al imaginii folosind [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/). Valoarea implicită a raportului de aspect al formei depinde de [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Este *true* pentru `ShapeType.Image` și *false* pentru tipurile de forme alte.

Exemplul de cod de mai sus arată cum se lucrează cu raportul de aspecte:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Cum să obţii limitele reale ale formei în puncte {#how-to-get-actual-bounds-of-shape-in-points}

Dacă doriți caseta delimitatoare reală a formei așa cum este redată pe pagină, puteți obține acest lucru folosind proprietatea [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/).

Exemplul de cod următor arată cum se folosește această proprietate:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Crop Images {#crop-images}

Decuparea unei imagini se referă de obicei la eliminarea părților exterioare neplăcute ale unei imagini pentru a ajuta la îmbunătățirea încadrării. Se folosește, de asemenea, pentru eliminarea unor părți dintr-o imagine pentru a crește focalizarea pe o anumită zonă.

Exemplul de cod următor arată cum să realizezi acest lucru folosind Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Salvează imaginile ca WMF {#save-images-as-wmf}

Aspose.Words oferă funcționalitatea de a salva toate imaginile disponibile dintr-un document la [WMF](https://docs.fileformat.com/image/wmf/) format în timp ce se convertește DOCX pentru RTF.

Exemplul de cod următor arată cum să salvezi imagini ca WMF cu opțiuni de salvare RTF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
