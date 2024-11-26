---
title: Renderowanie kształtów oddzielnie od dokumentu
second_title: Aspose.Words dla .NET
articleTitle: Renderowanie kształtów oddzielnie od dokumentu
linktitle: Renderowanie kształtów oddzielnie od dokumentu
description: "Wyodrębnij różne obiekty graficzne, takie jak obrazy, pola tekstowe zawierające akapity lub kształty strzałek podczas przetwarzania dokumentu i wyeksportuj je do lokalizacji zewnętrznej za pomocą C#."
type: docs
weight: 40
url: /pl/net/rendering-shapes-separately-from-a-document/
timestamp: 2024-07-10-14-38-57
---

Podczas przetwarzania dokumentów częstym zadaniem jest wyodrębnienie wszystkich obrazów znajdujących się w dokumencie i wyeksportowanie ich do lokalizacji zewnętrznej. To zadanie staje się proste dzięki Aspose.Words API, który już zapewnia funkcjonalność wyodrębniania i zapisywania danych obrazu. Czasami jednak może zaistnieć potrzeba wyodrębnienia w podobny sposób innych typów treści graficznych reprezentowanych przez inny typ obiektu rysunkowego, na przykład pole tekstowe zawierające akapity, kształty strzałek i mały obraz. Nie ma prostego sposobu renderowania tego obiektu, ponieważ jest to kombinacja poszczególnych elementów treści. Możesz także spotkać się z przypadkiem, gdy zawartość została zgrupowana w obiekt, który wygląda jak pojedynczy obraz.

Aspose.Words zapewnia funkcjonalność wyodrębniania tego typu treści w taki sam sposób, w jaki można wyodrębnić prosty obraz z kształtu jako renderowaną treść. W tym artykule opisano, jak wykorzystać tę funkcję do renderowania kształtów niezależnie od dokumentu.

## Typy kształtów w Aspose.Words

Cała zawartość warstwy rysunku dokumentu jest reprezentowana przez węzeł [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) lub [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) w module obiektu dokumentu Aspose.Words (DOM). Taka zawartość może obejmować pola tekstowe, obrazy, autokształty, obiekty OLE itp. Niektóre pola są również importowane w postaci kształtów, np. pole `INCLUDEPICTURE`.

Prosty obraz jest reprezentowany przez węzeł **Shape** [ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Ten węzeł kształtu nie ma węzłów podrzędnych, ale dostęp do danych obrazu zawartych w tym węźle kształtu można uzyskać za pomocą właściwości [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/). Z drugiej strony kształt może składać się z wielu węzłów podrzędnych. Na przykład kształt pola tekstowego reprezentowany przez właściwość [ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) może składać się z wielu węzłów, takich jak [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) i [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/). Większość kształtów może zawierać węzły blokowe **Paragraph** i **Table**. Są to te same węzły, które pojawiają się w korpusie głównym. Kształty są zawsze częścią jakiegoś akapitu, albo umieszczane bezpośrednio w wierszu, albo zakotwiczone w **Ustęp,**, ale "pływające" w dowolnym miejscu strony dokumentu.

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Dokument może również zawierać zgrupowane kształty. Grouping można włączyć w Microsoft Word, zaznaczając wiele obiektów i klikając "Group" w menu wyświetlanym po kliknięciu prawym przyciskiem myszy.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

W Aspose.Words te grupy kształtów są reprezentowane przez węzeł [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/). Można je również wywołać w ten sam sposób, aby wyrenderować całą grupę na obraz.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Format DOCX może zawierać specjalne typy obrazów, takie jak diagramy lub wykresy. Kształty te są również reprezentowane przez węzeł **Shape** w formacie Aspose.Words, który również zapewnia podobną metodę renderowania ich jako obrazów. Z założenia kształt nie może zawierać innego kształtu jako elementu podrzędnego, chyba że ten kształt jest obrazem (**ShapeType.Image**). Na przykład Microsoft Word nie pozwala na wstawienie pola tekstowego do innego pola tekstowego.

Opisane powyżej typy kształtów zapewniają specjalną metodę renderowania kształtów za pomocą klasy [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/). Instancja klasy **ShapeRenderer** jest pobierana dla formatu **Shape** lub **GroupShape** za pomocą metody **GetShapeRenderer** lub poprzez przekazanie **Shape** do konstruktora klasy **ShapeRenderer**. Ta klasa zapewnia dostęp do elementów, które umożliwiają renderowanie kształtu do następujących elementów:

- Plik na dysku przy użyciu metody przeciążenia [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/)
- Przesyłanie strumieniowe przy użyciu przeciążenia metody [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/)
- Obiekt graficzny .NET przy użyciu metod [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) i [RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

Podczas renderowania pliku **Shape** musi on stanowić część hierarchii dokumentów. Jeśli **Shape** nie jest częścią drzewa dokumentu, po wywołaniu metod **ShapeRenderer** renderowane dane wyjściowe będą puste.

{{% /alert %}}

## Renderowanie do pliku lub strumienia

Metoda [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) zapewnia przeciążenia, które renderują kształt bezpośrednio do pliku lub strumienia. Obydwa przeciążenia akceptują instancję klasy [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), która pozwala zdefiniować opcje renderowania kształtu. Działa to w taki sam sposób, jak metoda [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save). Mimo że ten parametr jest wymagany, można przekazać wartość null, określając, że nie ma żadnych opcji niestandardowych.

Kształt można wyeksportować w dowolnym formacie obrazu określonym w wyliczeniu [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/). Na przykład obraz może być renderowany jako obraz rastrowy, taki jak JPEG, określając wyliczenie [SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/), lub jako obraz wektorowy, taki jak EMF, określając [SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/).

Poniższy przykład kodu ilustruje renderowanie kształtu do obrazu EMF niezależnie od dokumentu i zapisywanie na dysku:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

Poniższy przykład kodu ilustruje renderowanie kształtu do obrazu JPEG niezależnie od dokumentu i zapisywanie do strumienia:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

Klasa **ImageSaveOptions** umożliwia określenie różnych opcji kontrolujących sposób renderowania obrazu. Opisaną powyżej funkcjonalność można zastosować w ten sam sposób do węzłów **GroupShape** i **Shape**.

## Renderowanie do obiektu graficznego .NET

Renderowanie bezpośrednio do obiektu **Graphics** umożliwia zdefiniowanie własnych ustawień i stanu obiektu **Graphics**. Typowy scenariusz obejmuje renderowanie kształtu bezpośrednio do obiektu **Graphics** pobranego z formularza Windows lub mapy bitowej. Podczas renderowania węzła **Shape** ustawienia wpłyną na wygląd kształtu. Można na przykład obrócić lub skalować kształt, używając metod **RotateTransform** lub **ScaleTransform** dla obiektu **Graphics**.

Poniższy przykład pokazuje, jak wyrenderować kształt do obiektu .**NET Graphics** niezależnie od dokumentu i zastosować obrót do renderowanego obrazu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

Podobnie jak metoda [RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/), metoda [Renderuj na rozmiar](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) odziedziczona z [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) jest przydatna do tworzenia miniatur treści dokumentu. Rozmiar kształtu jest określany przez konstruktora. Metoda **RenderToSize** akceptuje obiekt **Graphics**, współrzędne X i Y położenia obrazu oraz rozmiar obrazu (szerokość i wysokość), który zostanie narysowany na obiekcie **Graphics**.

Dokument **Shape** można renderować do określonej skali przy użyciu metody [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) odziedziczonej z klasy [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/). Jest to podobne do metody [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/), która akceptuje te same główne parametry. Różnica między tymi dwiema metodami polega na tym, że w przypadku metody **ShapeRenderer.RenderToScale** zamiast rozmiaru dosłownego wybiera się wartość zmiennoprzecinkową, która skaluje kształt podczas jego renderowania. Jeśli wartość float wynosi 1,0, kształt będzie renderowany w 100% w stosunku do jego pierwotnego rozmiaru. Wartość zmiennoprzecinkowa wynosząca 0,5 zmniejszy rozmiar obrazu o połowę.

## Renderowanie obrazu kształtu

Klasa [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) reprezentuje obiekty w warstwie rysunku, takie jak Autokształt, pole tekstowe, dowolny kształt, obiekt OLE, formant ActiveX lub obraz. Korzystając z klasy **Shape**, możesz tworzyć lub modyfikować kształty w dokumencie Microsoft Word. Ważną właściwością kształtu jest jego [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype). Kształty różnych typów mogą mieć różne możliwości w dokumencie programu Word. Na przykład tylko obrazy i kształty OLE mogą zawierać obrazy, podczas gdy większość kształtów może zawierać tylko tekst.

Poniższy przykład pokazuje, jak wyrenderować obraz Shape do obrazu JPEG niezależnie od dokumentu i zapisać go na dysku:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## Pobieranie rozmiaru kształtu

Klasa [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) zapewnia również funkcję pobierania rozmiaru kształtu w pikselach za pomocą metody [GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/). Ta metoda akceptuje dwa parametry float (Single) – skalę i DPI, które są używane do obliczania rozmiaru kształtu podczas renderowania kształtu. Metoda zwraca obiekt [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/), który zawiera szerokość i wysokość obliczonego rozmiaru. Jest to przydatne, gdy wymagana jest wcześniejsza znajomość rozmiaru renderowanego kształtu, na przykład podczas tworzenia nowej mapy bitowej z wyrenderowanego wyniku.

Poniższy przykład pokazuje, jak utworzyć nowy obiekt Bitmap i Graphics z szerokością i wysokością kształtu, który ma być renderowany:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

W przypadku korzystania z metod **RenderToSize** lub **RenderToScale** rozmiar renderowanego obrazu jest również zwracany w obiekcie [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/). Można to przypisać do zmiennej i użyć w razie potrzeby.

Właściwość **SizeInPoints** zwraca rozmiar kształtu mierzony w punktach (zobacz [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/). Wynikiem jest obiekt `SizeF` zawierający szerokość i wysokość.
