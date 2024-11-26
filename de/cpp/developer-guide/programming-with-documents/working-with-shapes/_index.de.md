---
title: Arbeiten mit Formen in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Formen
linktitle: Arbeiten mit Formen
type: docs
description: "Einführung in die Auszeichnungssprache für Formen, Erstellen von Formen verschiedener Typen mit C++."
weight: 280
url: /de/cpp/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

In diesem Thema wird erläutert, wie programmgesteuert mit Formen mit Aspose.Words gearbeitet wird.

Die Formen in Aspose.Words stellen ein Objekt in der Zeichenebene dar, z. B. ein AutoShape-, Textfeld-, Freiform-, OLE-Objekt, ActiveX-Steuerelement oder Bild. Ein Word-Dokument kann eine oder mehrere verschiedene Formen enthalten. Formen des Dokuments werden durch die Klasse [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) dargestellt.

## Form mit Document Builder einfügen

Sie können Inline-Formen mit dem angegebenen Typ und der angegebenen Größe und frei schwebende Formen mit der angegebenen Position, Größe und Textumbruchart mit der Methode [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/) in ein Dokument einfügen. Die **InsertShape** -Methode ermöglicht das Einfügen von DML -Formen in das Dokumentmodell. Das Dokument muss in dem Format gespeichert werden, das DML -Formen unterstützt, andernfalls werden solche Knoten beim Speichern des Dokuments in VML -Formen konvertiert.

Das folgende Codebeispiel zeigt, wie diese Arten von Formen in das Dokument eingefügt werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## Seitenverhältnis gesperrt einstellen

Mit Aspose.Words können Sie angeben, ob das Seitenverhältnis der Form über die Eigenschaft [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/) gesperrt ist.

Das folgende Codebeispiel zeigt, wie Sie mit der Eigenschaft **AspectRatioLocked** arbeiten:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## Formlayout in Zelle festlegen

Sie können auch angeben, ob die Form innerhalb oder außerhalb einer Tabelle angezeigt wird, indem Sie die Eigenschaft [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/) verwenden.

Das folgende Codebeispiel zeigt, wie Sie mit der Eigenschaft **IsLayoutInCell** arbeiten:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## Erstellen Sie ein Snip-Eckrechteck

Sie können mit Aspose.Words ein Snip-Eckrechteck erstellen. Die Formtypen sind *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* und *DiagonalCornersRounded.*

Die DML -Form wird mit der **InsertShape** -Methode mit diesen Formtypen erstellt. Diese Typen können nicht zum Erstellen von VML-Formen verwendet werden. Der Versuch, eine Form mithilfe des öffentlichen Konstruktors der Klasse "Shape" zu erstellen, löst die Ausnahme "NotSupportedException" aus.

Das folgende Codebeispiel zeigt, wie diese Art von Formen in das Dokument eingefügt werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## Tatsächliche Formgrenzpunkte abrufen

Mit Aspose.Words API können Sie die Position und Größe der Form, die den Block enthält, in Punkten relativ zum Anker der obersten Form ermitteln. Verwenden Sie dazu die Eigenschaft [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/).

Das folgende Codebeispiel zeigt, wie Sie mit der Eigenschaft **BoundsInPoints** arbeiten:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## Horizontales Linienformat

Aspose.Words API stellt die Eigenschaft [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) bereit, um auf die Eigenschaften der horizontalen Regelform zuzugreifen. Die Klasse **HorizontalRuleFormat** legt grundlegende Eigenschaften wie Höhe, Farbe, Farbton usw. offen. für die Formatierung einer horizontalen Linie.

Das folgende Codebeispiel zeigt, wie **HorizontalRuleFormat** festgelegt wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## OLE-Objekt als Symbol einfügen

Aspose.Words API bietet die **Shape** → **InsertOleObjectAsIcon**-Funktion zum Einfügen eines eingebetteten oder verknüpften OLE -Objekts als Symbol in das Dokument. Mit dieser Funktion können Sie die Symboldatei und die Beschriftung angeben. Der Objekttyp `OLE` soll anhand der Dateierweiterung erkannt werden.

Das folgende Codebeispiel zeigt, wie Sie das Objekt OLE als Symbol in das Dokument einfügen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

Die maximale Größe des Symbols muss für die korrekte Anzeige 32x32 betragen.

{{% /alert %}}
