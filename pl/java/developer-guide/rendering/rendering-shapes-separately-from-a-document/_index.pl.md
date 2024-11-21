---
title: Kształty renderowania Oddzielnie od dokumentu
second_title: Aspose.Words zamiast Java
articleTitle: Kształty renderowania Oddzielnie od dokumentu
linktitle: Kształty renderowania Oddzielnie od dokumentu
description: "Wyciągać różne obiekty graficzne, takie jak obrazy, pole tekstowe zawierające akapity lub kształty strzałek, podczas przetwarzania dokumentu, i eksportować je do zewnętrznej lokalizacji za pomocą Java."
type: docs
weight: 40
url: /pl/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Podczas przetwarzania dokumentów wspólnym zadaniem jest wydobycie wszystkich obrazów znalezionych w dokumencie i wywiezienie ich do miejsca zewnętrznego. To zadanie staje się proste z Aspose.Words API, która już zapewnia funkcjonalność do pobierania i zapisywania danych obrazu. Jednak czasami można chcieć podobnie wyodrębnić inne rodzaje treści graficznych, które są reprezentowane przez inny typ obiektu rysowania, na przykład pole tekstowe zawierające akapity, kształty strzałek i mały obraz. Nie ma prostego sposobu renderowania tego obiektu, ponieważ jest to kombinacja poszczególnych elementów treści. Można również napotkać przypadek, gdy zawartość została zgrupowana w obiekt, który wygląda jak jeden obraz.

Aspose.Words zapewnia funkcjonalność do ekstrakcji tego typu treści w ten sam sposób można pobrać prosty obraz z kształtu jako treści renderowanej. Ten artykuł opisuje, jak wykorzystać tę funkcjonalność do renderowania kształtów niezależnie od dokumentu.

## Rodzaje kształtów Aspose.Words

Cała zawartość w warstwie rysunku dokumentu jest reprezentowana przez [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) lub [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) węzeł Aspose.Words Moduł obiektu dokumentu (DOM). Taka zawartość może być pola tekstowe, obrazy, autoShapes, obiekty OLE, itp. Niektóre pola są również importowane jako kształty, na przykład, `INCLUDEPICTURE` Pole.

Prosty obraz jest reprezentowany przez **Shape** węzeł [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). Ten węzeł kształtu nie ma węzłów dziecięcych, ale dane obrazu zawarte w węźle kształtu mogą być dostępne przez [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) nieruchomości. Z drugiej strony, kształt może być również złożony z wielu węzłów dziecięcych. Na przykład, kształt pola tekstowego, który jest reprezentowany przez [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) nieruchomości, może być złożony z wielu węzłów, takich jak [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) oraz [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). Większość kształtów może obejmować **Paragraph** oraz **Table** węzły poziomu blokady. Są to te same węzły, które pojawiają się w głównym ciele. Kształty są zawsze częściami niektórych punktów, albo zawarte bezpośrednio inline lub zakotwiczone do **Ustęp** ale "pływające" gdziekolwiek na stronie dokumentu.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Dokument może również zawierać kształty zgrupowane razem. Groupw Microsoft Word wybierając wiele obiektów i klikając "Group"w prawym menu.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

W Aspose.Words, te grupy kształtów są reprezentowane przez [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) węzeł. Mogą one być również wywoływane w ten sam sposób, aby uczynić całą grupę do obrazu.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Format DOCX może zawierać specjalne typy obrazów, takie jak schematy lub wykresy. Kształty te są również reprezentowane przez **Shape** węzeł Aspose.Words, co również zapewnia podobną metodę renderowania ich jako obrazów. Kształt nie może zawierać innego kształtu jako dziecko, chyba że jest to obraz (**ShapeType.Image**). Na przykład: Microsoft Word nie pozwala na umieszczenie pola tekstowego w innym polu tekstowym.

Opisane powyżej typy kształtu stanowią specjalną metodę renderowania kształtów przez [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) Klasa. Przykładem **ShapeRenderer** klasa jest pobierana dla **Shape** lub **GroupShape** przez **GetShapeRenderer** metody lub przez podanie **Shape** do konstruktora **ShapeRenderer** Klasa. Klasa ta zapewnia dostęp do członków, które umożliwiają nadanie kształtu:

- Plik na dysku przy użyciu [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) przeciążenie metody
- Strumień przy użyciu [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) przeciążenie metody
- Grafika Obiekt za pomocą [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) oraz [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) metody

{{% alert color="primary" %}}

Podczas renderowania <span notrans="<span notrans=" **Shape**"=""></span>", > musi być częścią hierarchii dokumentów. Jeśli **Shape** nie jest częścią drzewa dokumentów, wtedy dane wyjściowe będą puste po wywołaniu **ShapeRenderer** metody.

{{% /alert %}}

## Renderowanie pliku lub strumienia

W [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) metoda zapewnia przeciążenia, które renderują kształt bezpośrednio do pliku lub strumienia. Oba przeładunki akceptują przykład [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) klasa, która pozwala definiować opcje renderowania kształtu. Działa to tak samo jak [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) Metoda. Nawet jeśli ten parametr jest wymagany, możesz podać wartość null, określając, że nie ma własnych opcji.

Kształt może być eksportowany w dowolnym formacie obrazka określonym w [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) wyliczenie. Na przykład, obraz może być renderowany jako obraz rastrowy, takie jak JPEG poprzez określenie [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) wyliczenie, lub jako obraz wektorowy, takie jak EMF poprzez określenie [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

Poniższy przykład kodu ilustruje nadanie kształtu obrazowi EMF oddzielnie od dokumentu i zapisywanie na dysku:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

Poniższy przykład kodu ilustruje nadanie kształtu obrazowi JPEG oddzielnie od dokumentu i zapisywanie do strumienia:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

W **ImageSaveOptions** klasa pozwala na określenie różnych opcji, które kontrolują sposób renderowania obrazu. Opisaną powyżej funkcjonalność można zastosować w ten sam sposób do **GroupShape** oraz **Shape** węzły.

## Wypożyczanie `Graphics` Obiekt

Renderowanie bezpośrednio do **Graphics** obiekt pozwala na zdefiniowanie własnych ustawień i stanu **Graphics** obiekt. Wspólny scenariusz zakłada przekształcenie kształtu bezpośrednio w **Graphics** obiekt odzyskany z Windows Forma albo Bitmap. Kiedy **Shape** węzeł jest renderowany, ustawienia będą miały wpływ na wygląd kształtu. Na przykład, można obracać lub skalować kształt za pomocą **RotateTransform** lub **ScaleTransform** metody **Graphics** obiekt.

Poniższy przykład pokazuje, jak zmienić kształt **Graphics** obiekt oddzielnie od dokumentu i zastosować rotację do renderowanego obrazu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

Podobnie [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) metoda [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)metoda dziedziczona od [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) jest przydatny do tworzenia miniatur zawartości dokumentu. Rozmiar kształtu jest określony za pośrednictwem konstruktora. W **RenderToSize** metoda akceptuje **Graphics** obiekt, współrzędne X i Y pozycji obrazu oraz rozmiar obrazu (szerokość i wysokość), który zostanie narysowany na obrazku **Graphics** obiekt.

W **Shape** może być renderowane do określonej skali za pomocą [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) metoda dziedziczona od [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) Klasa. Jest to podobne do [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) metoda akceptująca te same główne parametry. Różnica pomiędzy tymi dwoma metodami jest taka, że z **ShapeRenderer.RenderToScale** metoda, zamiast dosłownego rozmiaru, wybrać zmienną wartość, która skaluje kształt podczas renderowania. Jeśli wartość float równa się 1.0 powoduje, że kształt jest renderowany przy 100% jego oryginalnego rozmiaru. Wartość zmienna 0,5 zmniejszy rozmiar obrazu o połowę.

## Renderowanie obrazu kształtu

W [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) klasa reprezentuje obiekty w warstwie rysunku, takie jak autoShape, text box, freeform, OLE obiekt, ActiveX kontroli, lub obraz. Korzystanie z **Shape** klasy, można tworzyć lub modyfikować kształty w Microsoft Word dokument. Ważną właściwością kształtu jest jego [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Kształty różnych typów mogą mieć różne możliwości w dokumencie Word. Na przykład, tylko obrazy i kształty OLE mogą mieć obrazy wewnątrz nich, podczas gdy większość kształtów może mieć tylko tekst.

Poniższy przykład pokazuje, jak wykonać obraz kształtu na obrazek JPEG oddzielnie od dokumentu i zapisać go na dysku:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Pobieranie rozmiaru kształtu

W [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) klasa zapewnia również funkcjonalność, aby odzyskać rozmiar kształtu w pikselach poprzez [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) Metoda. Metoda ta akceptuje dwa parametry float (Single) - skalę i DPI, które są wykorzystywane do obliczania wielkości kształtu, gdy kształt jest renderowany. Metoda zwraca [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) obiekt, który zawiera szerokość i wysokość obliczonego rozmiaru. Jest to przydatne, gdy jest wymagane, aby znać rozmiar renderowanego kształtu z wyprzedzeniem, na przykład podczas tworzenia nowej mapy Bitmap z renderowanego wyjścia.

Poniższy przykład pokazuje jak stworzyć nowy obiekt Bitmap i Graphics o szerokości i wysokości renderowanego kształtu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

Podczas stosowania **RenderToSize** lub **RenderToScale** metody, rozmiar renderowanego obrazu jest również zwracany w [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) obiekt. Można to przypisać do zmiennej i w razie potrzeby wykorzystać.

W **SizeInPoints** właściwość zwraca rozmiar kształtu mierzony w punktach (patrz [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). Wynik jest `SizeF` obiekt zawierający szerokość i wysokość.
