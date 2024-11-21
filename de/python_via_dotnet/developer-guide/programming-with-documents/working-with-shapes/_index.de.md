---
title: Arbeiten mit Formen in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit Formen
linktitle: Arbeiten mit Formen
description: "Erstellen und verwalten Sie Formen und andere Objekte in einem Dokument mit Python."
type: docs
weight: 280
url: /de/python-net/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

In diesem Thema wird erläutert, wie Sie mithilfe von Aspose.Words programmgesteuert mit Formen arbeiten.

Die Formen in Aspose.Words stellen ein Objekt in der Zeichenebene dar, beispielsweise eine AutoForm, ein Textfeld, eine Freiform, ein OLE-Objekt, ein ActiveX-Steuerelement oder ein Bild. Ein Word-Dokument kann eine oder mehrere verschiedene Formen enthalten. Formen des Dokuments werden durch die [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Klasse dargestellt.

## Einfügen von Formen mit Document Builder

Mit der [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/)-Methode können Sie Inline-Formen mit angegebenem Typ und Größe sowie frei schwebende Formen mit angegebener Position, Größe und Textumbruchart in ein Dokument einfügen. Die [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/)-Methode ermöglicht das Einfügen einer DML-Form in das Dokumentmodell. Das Dokument muss in dem Format gespeichert werden, das DML-Formen unterstützt, andernfalls werden solche Knoten beim Speichern des Dokuments in VML-Formen konvertiert.

Das folgende Codebeispiel zeigt, wie diese Arten von Formen in das Dokument eingefügt werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Stellen Sie das Seitenverhältnis auf gesperrt ein

Mit Aspose.Words können Sie über die [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/)-Eigenschaft angeben, ob das Seitenverhältnis der Form gesperrt ist.

Das folgende Codebeispiel zeigt, wie mit der **AspectRatioLocked**-Eigenschaft gearbeitet wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Legen Sie das Formlayout in der Zelle fest

Mithilfe der [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/)-Eigenschaft können Sie außerdem festlegen, ob die Form innerhalb oder außerhalb einer Tabelle angezeigt wird.

Das folgende Codebeispiel zeigt, wie mit der **IsLayoutInCell**-Eigenschaft gearbeitet wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Erstellen Sie ein Snip Corner-Rechteck

Mit Aspose.Words können Sie ein ausgeschnittenes Eckrechteck erstellen. Die Formtypen sind [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded) und [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

Die DML-Form wird mithilfe der [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/)-Methode mit diesen Formtypen erstellt. Diese Typen können nicht zum Erstellen von VML-Formen verwendet werden. Der Versuch, eine Form mithilfe des öffentlichen Konstruktors der [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Klasse zu erstellen, löst die Ausnahme "NotSupportedException" aus.

Das folgende Codebeispiel zeigt, wie diese Art von Formen in das Dokument eingefügt wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Erhalten Sie tatsächliche Formbegrenzungspunkte

Mit Aspose.Words API können Sie die Position und Größe des die Form enthaltenden Blocks in Punkten relativ zum Anker der obersten Form ermitteln. Verwenden Sie dazu die [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/)-Eigenschaft.

Das folgende Codebeispiel zeigt, wie mit der **BoundsInPoints**-Eigenschaft gearbeitet wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Geben Sie den vertikalen Anker an

Sie können die vertikale Textausrichtung innerhalb einer Form mithilfe der [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/)-Eigenschaft angeben.

Das folgende Codebeispiel zeigt, wie mit der **VerticalAnchor**-Eigenschaft gearbeitet wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## SmartArt-Form erkennen

Aspose.Words ermöglicht auch die Erkennung, ob die Form ein `SmartArt`-Objekt hat. Verwenden Sie dazu die [has_smart_art-Eigenschaft](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/)-Eigenschaft.

Das folgende Codebeispiel zeigt, wie mit der **HasSmartArt**-Eigenschaft gearbeitet wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Fügen Sie eine horizontale Linie in das Dokument ein

Mit der [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/)-Methode können Sie eine horizontale Linienform in ein Dokument einfügen.

Das folgende Codebeispiel zeigt, wie das geht:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API stellt die [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/)-Eigenschaft bereit, um auf die Eigenschaften der horizontalen Regelform zuzugreifen. Die [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/)-Klasse stellt grundlegende Eigenschaften wie [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) usw. für die Formatierung einer horizontalen Linie bereit.

Das folgende Codebeispiel zeigt, wie [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) festgelegt wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## OLE-Objekt als Symbol einfügen

Aspose.Words API bietet eine **Shape.insert_ole_object_as_icon**-Funktion zum Einfügen eines eingebetteten oder verknüpften OLE-Objekts als Symbol in das Dokument. Mit dieser Funktion können Sie die Symboldatei und die Beschriftung angeben. Der `OLE`-Objekttyp wird anhand der Dateierweiterung erkannt.

Das folgende Codebeispiel zeigt, wie man ein OLE-Objekt als Symbol in das Dokument einfügt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

Für die korrekte Anzeige muss die maximale Größe des Symbols 32 x 32 betragen.

{{% /alert %}}

## Importieren Sie Formen mit Mathe-XML als Formen in DOM

Sie können die [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/)-Eigenschaft verwenden, um die Formen mit EquationXML in Office Math-Objekte zu konvertieren. Der Standardwert dieser Eigenschaft entspricht dem Verhalten von MS Word, dh Formen mit Gleichungs-XML werden nicht in Office-Matheobjekte konvertiert.

Das folgende Codebeispiel zeigt, wie Formen in Office Math-Objekte konvertiert werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
