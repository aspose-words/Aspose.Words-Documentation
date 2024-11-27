---
title: Renderowanie kształtów oddzielnie od dokumentu
second_title: Aspose.Words dla C++
articleTitle: Renderowanie kształtów oddzielnie od dokumentu
linktitle: Renderowanie kształtów oddzielnie od dokumentu
description: "Wyodrębnij różne obiekty graficzne, takie jak obrazy, pole tekstowe zawierające akapity lub kształty strzałek, podczas przetwarzania dokumentu i wyeksportuj je do lokalizacji zewnętrznej."
type: docs
weight: 40
url: /pl/cpp/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Podczas przetwarzania dokumentów częstym zadaniem jest wyodrębnienie wszystkich obrazów znajdujących się w dokumencie i wyeksportowanie ich do lokalizacji zewnętrznej. To zadanie staje się proste dzięki Aspose.Words API, który już zapewnia funkcję wyodrębniania i zapisywania danych obrazu. Czasami jednak możesz chcieć podobnie wyodrębnić inne typy zawartości graficznej, które są reprezentowane przez inny typ obiektu rysunku, na przykład pole tekstowe zawierające akapity, kształty strzałek i mały obraz. Nie ma prostego sposobu renderowania tego obiektu, ponieważ jest to połączenie poszczególnych elementów treści. Możesz również napotkać przypadek, gdy zawartość została zgrupowana w obiekt, który wygląda jak pojedynczy obraz.

Aspose.Words zapewnia funkcjonalność wyodrębniania tego typu treści w taki sam sposób, w jaki można wyodrębnić prosty obraz z kształtu jako renderowaną zawartość. W tym artykule opisano, jak wykorzystać tę funkcję do renderowania kształtów niezależnie od dokumentu.

## Typy kształtów w Aspose.Words

Cała zawartość warstwy rysunku dokumentu jest reprezentowana przez węzeł [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) lub [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) w module obiektu dokumentu Aspose.Words (DOM). Takimi treściami mogą być pola tekstowe, obrazy, AutoShapes, OLE obiekty itp. Niektóre pola są również importowane jako kształty, na przykład pole `INCLUDEPICTURE`.

Prosty obraz jest reprezentowany przez węzeł **Shape** z [ShapeType.Image](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Ten węzeł kształtu nie ma węzłów potomnych, ale do danych obrazu zawartych w tym węźle kształtu można uzyskać dostęp za pomocą właściwości [Shape.ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/). Z drugiej strony kształt może również składać się z wielu węzłów potomnych. Na przykład kształt pola tekstowego, który jest reprezentowany przez właściwość [ShapeType.TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/), może składać się z wielu węzłów, takich jak [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) i [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/). Większość kształtów może zawierać węzły na poziomie bloków **Paragraph** i **Table**. Są to te same węzły, które pojawiają się w głównym ciele. Kształty są zawsze częściami jakiegoś akapitu, umieszczonymi bezpośrednio w wierszu lub zakotwiczonymi w **Paragraph,**, ale "unoszącymi się" w dowolnym miejscu strony dokumentu.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-1](rendering-shapes-separately-from-a-document-1.png)

Dokument może również zawierać kształty, które są zgrupowane razem. Grupowanie można włączyć w Microsoft Word, wybierając wiele obiektów i klikając "Grupuj" w menu prawym przyciskiem myszy.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-2](rendering-shapes-separately-from-a-document-2.png)

W Aspose.Words te grupy kształtów są reprezentowane przez węzeł `GroupShape`. Można je również wywołać w ten sam sposób, aby renderować całą grupę do obrazu.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-3](rendering-shapes-separately-from-a-document-3.png)

Format DOCX może zawierać specjalne typy obrazów, takie jak diagramy lub wykresy. Kształty te są również reprezentowane przez węzeł **Shape** w Aspose.Words, który zapewnia również podobną metodę renderowania ich jako obrazów. Z założenia kształt nie może zawierać innego kształtu jako dziecka, chyba że ten kształt jest obrazem (**ShapeType.Image**). Na przykład Microsoft Word nie pozwala na wstawienie pola tekstowego do innego pola tekstowego.

Typy kształtów opisane powyżej zapewniają specjalną metodę renderowania kształtów za pomocą klasy [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Instancja klasy **ShapeRenderer** jest pobierana dla **Shape** lub **GroupShape** za pomocą metody **GetShapeRenderer** lub przekazując **Shape** do konstruktora klasy **ShapeRenderer**. Ta klasa zapewnia dostęp do członków, które umożliwiają renderowanie kształtu do następujących:

- Plik na dysku przy użyciu metody [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) przeciążenie
- Strumień przy użyciu przeciążenia metody [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)
- Obiekt `Graphics` przy użyciu metod [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/) i [RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

Podczas renderowania **Shape** musi być częścią hierarchii dokumentów. Jeśli **Shape** nie jest częścią drzewa dokumentów, renderowane dane wyjściowe będą puste po wywołaniu metod **ShapeRenderer**.

{{% /alert %}}

## Renderowanie do pliku lub strumienia

Metoda [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) zapewnia przeciążenia, które renderują kształt bezpośrednio do pliku lub strumienia. Oba przeciążenia akceptują wystąpienie klasy [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), która umożliwia zdefiniowanie opcji renderowania kształtu. Działa to w taki sam sposób, jak Metoda [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Nawet jeśli ten parametr jest wymagany, możesz przekazać wartość null, określając, że nie ma opcji niestandardowych.

Kształt można wyeksportować w dowolnym formacie obrazu określonym w wyliczeniu [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Na przykład obraz może być renderowany jako obraz rastrowy, na przykład JPEG, określając wyliczenie `SaveFormat.Jpeg`, lub jako obraz wektorowy, na przykład EMF, określając `SaveFormat.Emf`.

Poniższy przykład kodu ilustruje renderowanie kształtu do obrazu EMF oddzielnie od dokumentu i zapisywanie na dysku:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToDisk.cpp" >}}

Poniższy przykład kodu ilustruje renderowanie kształtu do obrazu JPEG oddzielnie od dokumentu i zapisywanie w strumieniu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToStream.cpp" >}}

Klasa **ImageSaveOptions** umożliwia określenie różnych opcji kontrolujących sposób renderowania obrazu. Funkcjonalność opisaną powyżej można zastosować w ten sam sposób do węzłów **GroupShape** i **Shape**.

## Renderowanie do obiektu graficznego .NET

Renderowanie bezpośrednio do obiektu **Graphics** umożliwia zdefiniowanie własnych ustawień i stanu obiektu **Graphics**. Typowy scenariusz polega na renderowaniu kształtu bezpośrednio do obiektu **Graphics** pobranego z formularza Windows lub mapy bitowej. Po wyrenderowaniu węzła **Shape** ustawienia wpłyną na wygląd kształtu. Na przykład można obracać lub skalować kształt za pomocą metod **RotateTransform** LUB **ScaleTransform** dla obiektu **Graphics**.

Poniższy przykład pokazuje, jak renderować kształt do .**NET Graphics** obiekt oddzielnie od dokumentu i zastosuj obrót do renderowanego obrazu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cpp" >}}

Podobnie jak w przypadku metody [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words/document/rendertosize/), metoda [RenderToSize ](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/)odziedziczona po [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/) jest przydatna do tworzenia miniatur zawartości dokumentu. Rozmiar kształtu jest określany przez konstruktora. Metoda **RenderToSize** akceptuje obiekt **Graphics**, współrzędne X i Y pozycji obrazu oraz Rozmiar obrazu (szerokość i wysokość), który zostanie narysowany na obiekcie **Graphics**.

**Shape** można renderować do określonej skali przy użyciu metody [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) odziedziczonej z klasy [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/). Jest to podobne do metody [Document.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words/document/rendertoscale/), która akceptuje te same główne parametry. Różnica między tymi dwiema metodami polega na tym, że w metodzie **ShapeRenderer.RenderToScale** zamiast rozmiaru dosłownego wybierasz wartość zmiennoprzecinkową, która skaluje kształt podczas jego renderowania. Jeśli wartość zmiennoprzecinkowa jest równa 1.0 powoduje, że kształt jest renderowany w 100% jego pierwotnego rozmiaru. Wartość zmiennoprzecinkowa 0.5 zmniejszy rozmiar obrazu o połowę.

## Renderowanie obrazu kształtu

Klasa [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) reprezentuje obiekty w warstwie rysunku, takie jak AutoShape, pole tekstowe, dowolny kształt, OLE obiekt, formant ActiveX lub obraz. Za pomocą klasy **Shape** można tworzyć lub modyfikować kształty w dokumencie Microsoft Word. Ważną właściwością kształtu jest jego [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Kształty różnych typów mogą mieć różne możliwości w dokumencie Word. Na przykład tylko obrazy i kształty OLE mogą zawierać obrazy, podczas gdy większość kształtów może zawierać tylko tekst.

Poniższy przykład pokazuje, jak renderować obraz kształtu do obrazu JPEG oddzielnie od dokumentu i zapisywać go na dysku:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeImage.cpp" >}}

## Pobieranie rozmiaru kształtu

Klasa [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) zapewnia również funkcję pobierania rozmiaru kształtu w pikselach za pomocą metody [GetSizeInPixels](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/getsizeinpixels/). Ta metoda akceptuje dwa parametry typu float (pojedyncze) – skalę i DPI, które są używane do obliczania rozmiaru kształtu, gdy kształt jest renderowany. Metoda zwraca obiekt `Size`, który zawiera szerokość i wysokość obliczonego rozmiaru. Jest to przydatne, gdy wymagana jest wcześniejsza znajomość rozmiaru renderowanego kształtu, na przykład podczas tworzenia nowej mapy bitowej z renderowanego wyjścia.

Poniższy przykład pokazuje, jak utworzyć nowy obiekt bitmapy i Grafiki o szerokości i wysokości renderowanego kształtu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-FindShapeSizes.cpp" >}}

Podczas korzystania z metod **RenderToSize** lub **RenderToScale**, renderowany Rozmiar obrazu jest również zwracany w obiekcie [SizeF](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/). Można to przypisać do zmiennej i użyć w razie potrzeby.

Właściwość **SizeInPoints** zwraca rozmiar kształtu mierzony w punktach (patrz [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Wynikiem jest obiekt `SizeF` zawierający szerokość i wysokość.
