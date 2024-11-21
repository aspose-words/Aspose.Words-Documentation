---
title: Praca z kształtami w C#
second_title: Aspose.Words dla .NET
articleTitle: Praca z kształtami
linktitle: Praca z kształtami
description: "Wprowadzenie do języka znaczników kształtów, tworzenie kształtów różnych typów przy użyciu C#."
type: docs
weight: 280
url: /pl/net/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

W tym temacie omówiono sposób programowej pracy z kształtami przy użyciu formatu Aspose.Words.

Kształty w formacie Aspose.Words reprezentują obiekt w warstwie rysunku, taki jak Autokształt, pole tekstowe, dowolny kształt, obiekt OLE, formant ActiveX lub obraz. Dokument programu Word może zawierać jeden lub więcej różnych kształtów. Kształty w Aspose.Words są reprezentowane przez klasę [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/).

## Wstawianie kształtów za pomocą narzędzia Document Builder

Za pomocą metody [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/) możesz wstawić do dokumentu kształt osadzony o określonym typie i rozmiarze oraz kształt swobodny o określonej pozycji, rozmiarze i typie zawijania tekstu. Metoda **InsertShape** umożliwia wstawienie do modelu dokumentu kształtu DML. Dokument musi zostać zapisany w formacie obsługującym kształty DML, w przeciwnym razie podczas zapisywania dokumentu takie węzły zostaną skonwertowane do kształtu VML.

Poniższy przykład kodu pokazuje, jak wstawić tego typu kształty do dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## Ustaw współczynnik proporcji zablokowany

Używając Aspose.Words, możesz określić, czy proporcje kształtu mają być blokowane poprzez właściwość [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/).

Poniższy przykład kodu pokazuje, jak pracować z właściwością **AspectRatioLocked**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Ustaw układ kształtu w komórce

Możesz także określić, czy kształt ma być wyświetlany wewnątrz tabeli, czy poza nią, za pomocą właściwości [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/).

Poniższy przykład kodu pokazuje, jak pracować z właściwością **IsLayoutInCell**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Utwórz prostokąt z narożnika Snip

Za pomocą Aspose.Words możesz utworzyć prostokąt z wyciętym narożnikiem. Typy kształtów to *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded* i *DiagonalCornersRounded.*

Dla tych typów kształtów kształt DML jest tworzony metodą **InsertShape**. Tych typów nie można używać do tworzenia kształtów VML. Próba utworzenia kształtu przy użyciu publicznego konstruktora klasy "Shape" wywołuje wyjątek "NotSupportedException".

Poniższy przykład kodu pokazuje, jak wstawić tego typu kształty do dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Zdobądź rzeczywiste punkty granic kształtu

Używając Aspose.Words API, możesz uzyskać lokalizację i rozmiar kształtu zawierającego blok w punktach, w stosunku do kotwicy najwyższego kształtu. Aby to zrobić, użyj właściwości [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/).

Poniższy przykład kodu pokazuje, jak pracować z właściwością **BoundsInPoints**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Określ zaczepienie pionowe

Wyrównanie tekstu w pionie w kształcie można określić za pomocą właściwości [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/).

Poniższy przykład kodu pokazuje, jak pracować z właściwością **VerticalAnchor**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## Wykryj kształt grafiki SmartArt

Aspose.Words pozwala również wykryć, czy kształt ma obiekt `SmartArt`. Aby to zrobić, użyj właściwości [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/).

Poniższy przykład kodu pokazuje, jak pracować z właściwością **HasSmartArt**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Wstaw linię poziomą do dokumentu

Możesz wstawić kształt linii poziomej do dokumentu za pomocą metody [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/).

Poniższy przykład kodu pokazuje, jak to zrobić:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API udostępnia właściwość [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) umożliwiającą dostęp do właściwości kształtu linii poziomej. Klasa [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) udostępnia podstawowe właściwości, takie jak Height, Color, NoShade itp., służące do formatowania linii poziomej.

Poniższy przykład kodu pokazuje, jak ustawić **HorizontalRuleFormat**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Importuj kształty z matematycznym XMLem jako kształty do DOM

Możesz użyć właściwości [ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/), aby przekonwertować kształty za pomocą EquationXML na obiekty Office Math. Domyślna wartość tej właściwości odpowiada zachowaniu Microsoft Word, tj. kształty z równaniem XML nie są konwertowane na obiekty matematyczne pakietu Office.

Poniższy przykład kodu pokazuje, jak konwertować kształty na obiekty pakietu Office Math:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
