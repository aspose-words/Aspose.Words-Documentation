---
title: Arbeiten mit Formen in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Formen
linktitle: Arbeiten mit Formen
type: docs
description: "Einführung in die Auszeichnungssprache für Formen, Erstellen von Formen verschiedener Typen mit Java."
weight: 280
url: /de/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

In diesem Thema wird erläutert, wie programmgesteuert mit Formen mit Aspose.Words gearbeitet wird.

Die Formen in Aspose.Words stellen ein Objekt in der Zeichenebene dar, z. B. ein AutoShape-, Textfeld-, Freiform-, OLE-Objekt, ein ActiveX-Steuerelement oder ein Bild. Ein Word-Dokument kann eine oder mehrere verschiedene Formen enthalten. Formen des Dokuments werden durch die Klasse [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) dargestellt.

## Form mit Document Builder einfügen

Sie können Inline-Formen mit dem angegebenen Typ und der angegebenen Größe und frei schwebende Formen mit der angegebenen Position, Größe und Textumbruchart mit der Methode [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) in ein Dokument einfügen. Die **InsertShape** -Methode ermöglicht das Einfügen von DML -Formen in das Dokumentmodell. Das Dokument muss in dem Format gespeichert werden, das DML -Formen unterstützt, andernfalls werden solche Knoten beim Speichern des Dokuments in VML -Formen konvertiert.

Das folgende Codebeispiel zeigt, wie diese Arten von Formen in das Dokument eingefügt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Seitenverhältnis gesperrt einstellen

Mit Aspose.Words können Sie angeben, ob das Seitenverhältnis der Form über die Eigenschaft [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) gesperrt ist.

Das folgende Codebeispiel zeigt, wie Sie mit der Eigenschaft **AspectRatioLocked** arbeiten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Formlayout in Zelle festlegen

Sie können auch angeben, ob die Form innerhalb oder außerhalb einer Tabelle angezeigt wird, indem Sie die Eigenschaft [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) verwenden.

Das folgende Codebeispiel zeigt, wie Sie mit der Eigenschaft **IsLayoutInCell** arbeiten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Fügen Sie abgeschnittene Ecken hinzu

Sie können mit Aspose.Words ein Snip-Eckrechteck erstellen. Die Formtypen sind *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* und *DiagonalCornersRounded.*

Die DML -Form wird mit der **InsertShape** -Methode mit diesen Formtypen erstellt. Diese Typen können nicht zum Erstellen von VML-Formen verwendet werden. Der Versuch, eine Form mithilfe des öffentlichen Konstruktors der Klasse "Shape" zu erstellen, löst die Ausnahme "NotSupportedException" aus.

Das folgende Codebeispiel zeigt, wie diese Art von Formen in das Dokument eingefügt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Tatsächliche Formgrenzpunkte abrufen

Mit Aspose.Words API können Sie die Position und Größe der Form, die den Block enthält, in Punkten relativ zum Anker der obersten Form ermitteln. Verwenden Sie dazu die Eigenschaft [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints).

Das folgende Codebeispiel zeigt, wie Sie mit der Eigenschaft **BoundsInPoints** arbeiten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Vertikalen Anker angeben

Sie können die vertikale Textausrichtung innerhalb einer Form mit der Eigenschaft [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) angeben.

Das folgende Codebeispiel zeigt, wie Sie mit der Eigenschaft **VerticalAnchor** arbeiten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## SmartArt-Form erkennen

Aspose.Words erlaubt auch zu erkennen, ob die Form ein `SmartArt` Objekt hat. Verwenden Sie dazu die Eigenschaft [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt).

Das folgende Codebeispiel zeigt, wie Sie mit der Eigenschaft **HasSmartArt** arbeiten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Horizontales Linienformat

Sie können eine horizontale Regelform mit der [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) -Methode in ein Dokument einfügen.

Aspose.Words API stellt die [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat)-Eigenschaft bereit, um auf die Eigenschaften der horizontalen Regelform zuzugreifen. Die Klasse [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) macht grundlegende Eigenschaften wie Höhe, Farbe, NoShade usw. verfügbar. für die Formatierung einer horizontalen Linie.

Das folgende Codebeispiel zeigt, wie **HorizontalRuleFormat** gesetzt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
