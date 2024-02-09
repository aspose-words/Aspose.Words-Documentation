---
title: Arbeiten mit Formen in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Formen
linktitle: Arbeiten mit Formen
description: "Einführung in die Form-Markup-Sprache, Erstellen verschiedener Formenformen mit C#."
type: docs
weight: 280
url: /de/net/working-with-shapes/
---

In diesem Thema wird erläutert, wie Sie mithilfe von Aspose.Words programmgesteuert mit Formen arbeiten.

Die Formen in Aspose.Words stellen ein Objekt in der Zeichenebene dar, beispielsweise eine AutoForm, ein Textfeld, eine Freiform, ein OLE-Objekt, ein ActiveX-Steuerelement oder ein Bild. Ein Word-Dokument kann eine oder mehrere verschiedene Formen enthalten. Formen in Aspose.Words werden durch die [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/)-Klasse dargestellt.

## Einfügen von Formen mit Document Builder

Mit der [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/)-Methode können Sie Inline-Formen mit angegebenem Typ und Größe sowie frei schwebende Formen mit angegebener Position, Größe und Textumbruchtyp in ein Dokument einfügen. Die **InsertShape**-Methode ermöglicht das Einfügen einer DML-Form in das Dokumentmodell. Das Dokument muss in dem Format gespeichert werden, das DML-Formen unterstützt, andernfalls werden solche Knoten beim Speichern des Dokuments in VML-Formen konvertiert.

Das folgende Codebeispiel zeigt, wie diese Arten von Formen in das Dokument eingefügt werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## Stellen Sie das Seitenverhältnis auf gesperrt ein

Mit Aspose.Words können Sie über die [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/)-Eigenschaft angeben, ob das Seitenverhältnis der Form gesperrt ist.

Das folgende Codebeispiel zeigt, wie mit der **AspectRatioLocked**-Eigenschaft gearbeitet wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Legen Sie das Formlayout in der Zelle fest

Mithilfe der [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/)-Eigenschaft können Sie außerdem festlegen, ob die Form innerhalb oder außerhalb einer Tabelle angezeigt wird.

Das folgende Codebeispiel zeigt, wie mit der **IsLayoutInCell**-Eigenschaft gearbeitet wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Erstellen Sie ein Snip Corner-Rechteck

Mit Aspose.Words können Sie ein ausgeschnittenes Eckrechteck erstellen. Die Formtypen sind *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded* und *DiagonalCornersRounded.*

Die DML-Form wird mithilfe der **InsertShape**-Methode mit diesen Formtypen erstellt. Diese Typen können nicht zum Erstellen von VML-Formen verwendet werden. Der Versuch, eine Form mithilfe des öffentlichen Konstruktors der Klasse "Shape" zu erstellen, löst die Ausnahme "NotSupportedException" aus.

Das folgende Codebeispiel zeigt, wie diese Art von Formen in das Dokument eingefügt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Erhalten Sie tatsächliche Formbegrenzungspunkte

Mit Aspose.Words API können Sie die Position und Größe des die Form enthaltenden Blocks in Punkten relativ zum Anker der obersten Form ermitteln. Verwenden Sie dazu die [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/)-Eigenschaft.

Das folgende Codebeispiel zeigt, wie mit der **BoundsInPoints**-Eigenschaft gearbeitet wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Geben Sie den vertikalen Anker an

Sie können die vertikale Textausrichtung innerhalb einer Form mithilfe der [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/)-Eigenschaft angeben.

Das folgende Codebeispiel zeigt, wie mit der **VerticalAnchor**-Eigenschaft gearbeitet wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## SmartArt-Form erkennen

Aspose.Words ermöglicht auch die Erkennung, ob die Form ein `SmartArt`-Objekt hat. Verwenden Sie dazu die [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/)-Eigenschaft.

Das folgende Codebeispiel zeigt, wie mit der **HasSmartArt**-Eigenschaft gearbeitet wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Fügen Sie eine horizontale Linie in das Dokument ein

Mit der [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/)-Methode können Sie eine horizontale Linienform in ein Dokument einfügen.

Das folgende Codebeispiel zeigt, wie das geht:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API stellt die [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/)-Eigenschaft bereit, um auf die Eigenschaften der horizontalen Regelform zuzugreifen. Die [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/)-Klasse stellt grundlegende Eigenschaften wie Höhe, Farbe, NoShade usw. für die Formatierung einer horizontalen Linie bereit.

Das folgende Codebeispiel zeigt, wie **HorizontalRuleFormat** festgelegt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Importieren Sie Formen mit Mathe-XML als Formen in DOM

Sie können die [ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/)-Eigenschaft verwenden, um die Formen mit EquationXML in Office Math-Objekte zu konvertieren. Der Standardwert dieser Eigenschaft entspricht dem Microsoft Word-Verhalten, dh Formen mit Gleichungs-XML werden nicht in Office-Matheobjekte konvertiert.

Das folgende Codebeispiel zeigt, wie Formen in Office Math-Objekte konvertiert werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
