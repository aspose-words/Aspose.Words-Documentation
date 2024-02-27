---
title: Praca z obrazami w formacie C#
second_title: Aspose.Words dla .NET
articleTitle: Praca z obrazami
linktitle: Praca z obrazami
description: "Szczegóły kształtów obrazów i zaawansowane funkcje oferowane przez Aspose.Words dla .NET."
type: docs
weight: 300
url: /pl/net/working-with-images/
---

Aspose.Words pozwala użytkownikom pracować z obrazami w bardzo elastyczny sposób. W tym artykule możesz poznać tylko niektóre możliwości pracy z obrazami.

## Jak wstawić obraz {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) zapewnia kilka przeciążeń metody [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/), które umożliwiają wstawienie obrazu wbudowanego lub pływającego. Jeśli obraz jest metaplikiem EMF lub WMF, zostanie wstawiony do dokumentu w formacie metapliku. Wszystkie pozostałe obrazy będą przechowywane w formacie PNG. Metoda **InsertImage** może wykorzystywać obrazy z różnych źródeł:

- Z pliku lub `URL`, przekazując parametr `String` [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/)
- Ze strumienia poprzez przekazanie parametru `Stream` **InsertImage**
- Z obiektu Image poprzez przekazanie parametru Image **InsertImage**
- Z tablicy bajtów poprzez przekazanie parametru tablicy bajtów **InsertImage**

Dla każdej z metod **InsertImage** istnieją dalsze przeciążenia, które umożliwiają wstawienie obrazu z następującymi opcjami:
- Inline lub pływający w określonej pozycji, na przykład **InsertImage**
- Skala procentowa lub rozmiar niestandardowy, np. **InsertImage**; ponadto metoda **InsertImage** zwraca obiekt [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), który właśnie został utworzony i wstawiony, dzięki czemu można dalej modyfikować właściwości kształtu

### Jak wstawić obraz śródliniowy {#insert-an-inline-image}

Przekaż pojedynczy ciąg reprezentujący plik zawierający obraz do **InsertImage**, aby wstawić obraz do dokumentu jako grafikę wstawioną

Poniższy przykład kodu pokazuje, jak wstawić obraz osadzony w pozycji kursora do dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### Jak wstawić pływający obraz {#insert-a-floating-image}

Poniższy przykład kodu pokazuje, jak wstawić pływający obraz z pliku lub `URL` w określonej pozycji i rozmiarze:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## Jak wyodrębnić obrazy z dokumentu {#how-to-extract-images-from-a-document}

Wszystkie obrazy są przechowywane w węzłach **Shape** w formacie [Document](https://reference.aspose.com/words/net/aspose.words/document/). Aby wyodrębnić z dokumentu wszystkie obrazy lub obrazy określonego typu, wykonaj następujące kroki:

- Użyj metody [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/), aby wybrać wszystkie węzły **Shape**.
- Iteruj po wynikowych kolekcjach węzłów.
- Sprawdź właściwość logiczną [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/).
- Wyodrębnij dane obrazu za pomocą właściwości [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/).
- Zapisz dane obrazu w pliku.

Poniższy przykład kodu pokazuje, jak wyodrębnić obrazy z dokumentu i zapisać je jako pliki:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Jak wstawić kod kreskowy na każdej stronie dokumentu {#how-to-insert-barcode-on-each-documen-page}

Ten przykład pokazuje, jak dodać te same lub różne kody kreskowe na wszystkich lub określonych stronach dokumentu programu Word. Nie ma bezpośredniego sposobu dodawania kodów kreskowych na wszystkich stronach dokumentu, ale można użyć metod **MoveToSection**, **MoveToHeaderFooter** i **InsertImage**, aby przejść do dowolnej sekcji lub nagłówka/stopki i wstawić obrazy kodów kreskowych, jak widać w poniższym kodzie.

Poniższy przykład kodu pokazuje, jak wstawić obraz kodu kreskowego na każdej stronie dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Zablokuj współczynnik proporcji obrazu {#lock-aspect-ratio-of-image}

Proporcje kształtu geometrycznego to stosunek jego rozmiarów w różnych wymiarach. Możesz zablokować proporcje obrazu za pomocą [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/). Domyślna wartość współczynnika proporcji kształtu zależy od [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Jest to *true* dla `ShapeType.Image` i *false* dla innych typów kształtów.

Poniższy przykład kodu pokazuje, jak pracować ze współczynnikiem proporcji:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Jak uzyskać rzeczywiste granice kształtu w punktach {#how-to-get-actual-bounds-of-shape-in-points}

Jeśli chcesz, aby rzeczywista ramka ograniczająca kształt była renderowana na stronie, możesz to osiągnąć za pomocą właściwości [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/).

Poniższy przykład kodu pokazuje, jak używać tej właściwości:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Przytnij obrazy {#crop-images}

Kadrowanie obrazu zwykle oznacza usunięcie niepożądanych zewnętrznych części obrazu w celu poprawy kadrowania. Służy również do usuwania niektórych części obrazu w celu zwiększenia ostrości na określonym obszarze.

Poniższy przykład kodu pokazuje, jak to osiągnąć za pomocą Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Zapisz obrazy jako WMF {#save-images-as-wmf}

Aspose.Words zapewnia funkcję zapisywania wszystkich dostępnych obrazów w dokumencie do formatu [WMF](https://docs.fileformat.com/image/wmf/) podczas konwersji DOCX do RTF.

Poniższy przykład kodu pokazuje, jak zapisywać obrazy w formacie WMF z opcjami zapisywania w formacie RTF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
