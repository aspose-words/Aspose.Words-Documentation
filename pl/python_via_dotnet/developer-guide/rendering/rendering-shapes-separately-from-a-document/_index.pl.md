---
title: Kształty oddzielnie od dokumentu
second_title: Aspose.Words dla Python via .NET
articleTitle: Renderowanie kształtów oddzielnie od dokumentu
linktitle: Renderowanie kształtów oddzielnie od dokumentu
description: "Wyodrębnij różne obiekty graficzne, takie jak obrazy, pola tekstowe zawierające akapity lub kształty strzałek podczas przetwarzania dokumentu i wyeksportuj je do lokalizacji zewnętrznej za pomocą Python."
type: docs
weight: 40
url: /pl/python-net/rendering-shapes-separately-from-a-document/
---

Podczas przetwarzania dokumentów częstym zadaniem jest wyodrębnienie wszystkich obrazów znajdujących się w dokumencie i wyeksportowanie ich do lokalizacji zewnętrznej. To zadanie staje się proste dzięki Aspose.Words API, który już zapewnia funkcjonalność wyodrębniania i zapisywania danych obrazu. Czasami jednak może zaistnieć potrzeba wyodrębnienia w podobny sposób innych typów treści graficznych reprezentowanych przez inny typ obiektu rysunkowego, na przykład pole tekstowe zawierające akapity, kształty strzałek i mały obraz. Nie ma prostego sposobu renderowania tego obiektu, ponieważ jest to kombinacja poszczególnych elementów treści. Możesz także spotkać się z przypadkiem, gdy zawartość została zgrupowana w obiekt, który wygląda jak pojedynczy obraz.

Aspose.Words zapewnia funkcjonalność wyodrębniania tego typu treści w taki sam sposób, w jaki można wyodrębnić prosty obraz z kształtu jako renderowaną treść. W tym artykule opisano, jak wykorzystać tę funkcję do renderowania kształtów niezależnie od dokumentu.

## Typy kształtów w Aspose.Words

Cała zawartość warstwy rysunku dokumentu jest reprezentowana przez węzeł [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) lub [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) w module obiektu dokumentu Aspose.Words (DOM). Taka zawartość może obejmować pola tekstowe, obrazy, autokształty, obiekty OLE itp. Niektóre pola są również importowane w postaci kształtów, np. pole `INCLUDEPICTURE`.

Prosty obraz jest reprezentowany przez węzeł [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image). Ten węzeł kształtu nie ma węzłów podrzędnych, ale dostęp do danych obrazu zawartych w tym węźle kształtu można uzyskać za pomocą właściwości [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/). Z drugiej strony kształt może składać się z wielu węzłów podrzędnych. Na przykład kształt pola tekstowego reprezentowany przez właściwość [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box) może składać się z wielu węzłów, takich jak [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) i [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Większość kształtów może zawierać węzły na poziomie bloków [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) i [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Są to te same węzły, które pojawiają się w korpusie głównym. Kształty są zawsze częścią jakiegoś akapitu, umieszczoną bezpośrednio w wierszu lub zakotwiczoną w [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), ale "pływającą" w dowolnym miejscu strony dokumentu.

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Dokument może również zawierać zgrupowane kształty. Grouping można włączyć w Microsoft Word, zaznaczając wiele obiektów i klikając "Group" w menu wyświetlanym po kliknięciu prawym przyciskiem myszy.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

W Aspose.Words te grupy kształtów są reprezentowane przez węzeł [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). Można je również wywołać w ten sam sposób, aby wyrenderować całą grupę na obraz.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Format DOCX może zawierać specjalne typy obrazów, takie jak diagramy lub wykresy. Kształty te są również reprezentowane przez węzeł [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) w formacie Aspose.Words, który również zapewnia podobną metodę renderowania ich jako obrazów. Z założenia kształt nie może zawierać innego kształtu jako elementu podrzędnego, chyba że ten kształt jest obrazem ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). Na przykład Microsoft Word nie pozwala na wstawienie pola tekstowego do innego pola tekstowego.

Opisane powyżej typy kształtów zapewniają specjalną metodę renderowania kształtów za pomocą klasy [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Instancja klasy [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) jest pobierana dla formatu [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) lub [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) za pomocą metody [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) lub poprzez przekazanie [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) do konstruktora klasy [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Ta klasa zapewnia dostęp do elementów, które umożliwiają renderowanie kształtu do następujących elementów:

- Plik na dysku
- Strumień

{{% alert color="primary" %}}

Podczas renderowania pliku [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) musi on stanowić część hierarchii dokumentów. Jeśli [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) nie jest częścią drzewa dokumentu, po wywołaniu metod [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) renderowane dane wyjściowe będą puste.

{{% /alert %}}

## Renderowanie do pliku lub strumienia

Metoda [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) zapewnia przeciążenia, które renderują kształt bezpośrednio do pliku lub strumienia. Obydwa przeciążenia akceptują instancję klasy [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), która pozwala zdefiniować opcje renderowania kształtu. Działa to w taki sam sposób, jak metoda [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Mimo że ten parametr jest wymagany, można przekazać wartość null, określając, że nie ma żadnych opcji niestandardowych.

Kształt można wyeksportować w dowolnym formacie obrazu określonym w wyliczeniu [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). Na przykład obraz może być renderowany jako obraz rastrowy, taki jak JPEG, określając wyliczenie [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg), lub jako obraz wektorowy, taki jak EMF, określając [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf).

Poniższy przykład kodu ilustruje renderowanie kształtu do obrazu EMF niezależnie od dokumentu i zapisywanie na dysku:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

Poniższy przykład kodu ilustruje renderowanie kształtu do obrazu JPEG niezależnie od dokumentu i zapisywanie do strumienia:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the vector format EMF.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
        
# Output the image in gray scale
imageOptions.image_color_mode = aw.saving.ImageColorMode.GRAYSCALE

# Reduce the brightness a bit (default is 0.5f).
imageOptions.image_brightness = 0.45
        
stream =  io.FileIO(docs_base.artifacts_dir + "TestFile.RenderToStream_out.jpg", "w+b")

# Save the rendered image to the stream using different options.
r.save(stream, imageOptions)

# Close the stream
stream.close()
{{< /highlight >}}

Klasa [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) umożliwia określenie różnych opcji kontrolujących sposób renderowania obrazu. Opisaną powyżej funkcjonalność można zastosować w ten sam sposób do węzłów [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) i [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Renderowanie obrazu kształtu

Klasa [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) reprezentuje obiekty w warstwie rysunku, takie jak Autokształt, pole tekstowe, dowolny kształt, obiekt OLE, formant ActiveX lub obraz. Korzystając z klasy [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), możesz tworzyć lub modyfikować kształty w dokumencie Microsoft Word. Ważną właściwością kształtu jest jego format [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/). Kształty różnych typów mogą mieć różne możliwości w dokumencie programu Word. Na przykład tylko obrazy i kształty OLE mogą zawierać obrazy, podczas gdy większość kształtów może zawierać tylko tekst.

Poniższy przykład pokazuje, jak wyrenderować obraz Shape do obrazu JPEG niezależnie od dokumentu i zapisać go na dysku:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Pobieranie rozmiaru kształtu

Klasa [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) zapewnia również funkcję pobierania rozmiaru kształtu w pikselach za pomocą metody [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/). Ta metoda akceptuje dwa parametry float (Single) – skalę i DPI, które są używane do obliczania rozmiaru kształtu podczas renderowania kształtu. Metoda zwraca obiekt **Size**, który zawiera szerokość i wysokość obliczonego rozmiaru. Jest to przydatne, gdy wymagane jest wcześniejsze poznanie rozmiaru renderowanego kształtu. Właściwość [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) zwraca rozmiar kształtu mierzony w punktach. Wynikiem jest obiekt **SizeF** zawierający szerokość i wysokość. Możesz także użyć właściwości [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/), aby uzyskać rzeczywiste granice kształtu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


