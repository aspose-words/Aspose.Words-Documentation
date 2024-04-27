---
title: Arbeiten mit Formen in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Formen
linktitle: Arbeiten mit Formen
type: docs
description: "Einführung in die Form von Markup-Sprache, Erstellen von Formen verschiedener Typen mit Java."
weight: 280
url: /de/java/working-with-shapes/
---

Dieses Thema diskutiert, wie man mit Formen programmmatisch arbeitet Aspose.Words.

Die Formen in Aspose.Words ein Objekt in der Zeichenschicht darstellen, wie ein AutoShape, Textfeld, Freeform, OLE-Objekt, ActiveX-Steuerung oder Bild. Ein Word-Dokument kann eine oder mehrere verschiedene Formen enthalten. Formen des Dokuments werden durch die [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Klasse.

## Form einfügen mit Dokumenten-Baukasten

Sie können inline Form mit spezifizierter Art und Größe und freier Form mit der angegebenen Position, Größe und Textumschlag-Typ in ein Dokument mit dem [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) Methode. Die **InsertShape** Ein Verfahren erlaubt das Einfügen von DML-Form in das Dokumentmodell. Das Dokument muss im Format gespeichert werden, das DML-Formulare unterstützt, andernfalls werden solche Knoten in VML-Form umgewandelt, während die Dokumentenspeicherung.

Das folgende Codebeispiel zeigt, wie diese Formen in das Dokument eingefügt werden können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Set Aspect Ratio geschlossen

Verwendung Aspose.Words, Sie können festlegen, ob das Aspektverhältnis der Form durch die [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) Eigentum.

Das folgende Codebeispiel zeigt, wie mit dem **AspectRatioLocked** Eigentum:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Set Form Layout in Zelle

Sie können auch angeben, ob die Form innerhalb einer Tabelle oder außerhalb davon mit der [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) Eigentum.

Das folgende Codebeispiel zeigt, wie mit dem **IsLayoutInCell** Eigentum:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Corners Snipped hinzufügen

Sie können ein Schnip Ecke Rechteck erstellen Aspose.Words. Die Formen sind *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* und *DiagonalCornersRounded.*

Die DML-Form wird mit **InsertShape** Verfahren mit diesen Formen. Diese Typen können nicht verwendet werden, um VML-Formen zu erstellen. Versuch, Form zu schaffen, indem der öffentliche Konstrukteur der Klasse "Shape" die Ausnahme "NotSupportedException" erhöht.

Das folgende Codebeispiel zeigt, wie diese Formen in das Dokument eingefügt werden können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Erhalten Sie echte Form Bounds Punkte

Verwendung Aspose.Words API, Sie können die Lage und Größe der Form, die Block in Punkten, bezogen auf den Anker der obersten Form erhalten. Um dies zu tun, verwenden Sie die [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) Eigentum.

Das folgende Codebeispiel zeigt, wie mit dem **BoundsInPoints** Eigentum:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Vertical Anchor angeben

Sie können die Text vertikale Ausrichtung innerhalb einer Form mit der [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) Eigentum.

Das folgende Codebeispiel zeigt, wie mit dem **VerticalAnchor** Eigentum:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Smart erkennen Kunstform

Aspose.Words auch zu erkennen, ob die Form eine `SmartArt` Objekt. Um dies zu tun, verwenden Sie die [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) Eigentum.

Das folgende Codebeispiel zeigt, wie mit dem **HasSmartArt** Eigentum:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Format der horizontalen Regel

Sie können horizontale Regelform in ein Dokument mit der [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) Methode.

Aspose.Words API bietet [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) Eigenschaft, auf die Eigenschaften der horizontalen Regelform zuzugreifen. Die [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) class stellt grundlegende Eigenschaften wie Größe, Farbe, NoShade etc. für die Formatierung einer horizontalen Regel aus.

Das folgende Codebeispiel zeigt, wie man **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
