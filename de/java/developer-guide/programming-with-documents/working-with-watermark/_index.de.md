---
title: Arbeiten mit Wasserzeichen in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Wasserzeichen
linktitle: Arbeiten mit Wasserzeichen
type: docs
description: "Manipulation des Dokumentwasserzeichens mit Java."
weight: 70
url: /de/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

In diesem Thema wird erläutert, wie Sie mit Aspose.Words programmgesteuert mit einem Wasserzeichen arbeiten. Ein Wasserzeichen ist ein Hintergrundbild, das hinter dem Text in einem Dokument angezeigt wird. Ein Wasserzeichen kann einen Text oder ein Bild enthalten, das durch die Klasse [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) dargestellt wird.

{{% alert color="primary" %}}

**Online ausprobieren**

Sie können diese Funktionalität mit unserem ausprobieren [Kostenloses Online Wasserzeichen für Dokumente](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Hinzufügen eines Wasserzeichens zu einem Dokument

In Microsoft Word kann ein Wasserzeichen einfach mit dem Befehl Wasserzeichen einfügen in ein Dokument eingefügt werden. Aspose.Words stellt die Klasse [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) zum Hinzufügen oder Entfernen von Wasserzeichen in Dokumenten bereit. Aspose.Words stellt die [WatermarkType](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)-Aufzählung bereit, die drei mögliche Arten von Wasserzeichen (Text, Bild und Keine) definiert, mit denen gearbeitet werden soll.

### Text-Wasserzeichen hinzufügen

Das folgende Codebeispiel zeigt, wie Sie ein Textwasserzeichen in ein Dokument einfügen, indem Sie [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) mit der Methode [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) definieren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Bild-Wasserzeichen hinzufügen

Das folgende Codebeispiel zeigt, wie Sie ein Bildwasserzeichen in ein Dokument einfügen, indem Sie [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) mit der Methode [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) definieren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

Das Wasserzeichen kann auch mit der Formklasse eingefügt werden. Es ist sehr einfach, eine beliebige Form oder ein beliebiges Bild in eine Kopf- oder Fußzeile einzufügen und so ein Wasserzeichen jeder erdenklichen Art zu erstellen.

Das folgende Codebeispiel fügt ein Wasserzeichen in ein Word-Dokument ein:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Wasserzeichen aus einem Dokument entfernen

Die Klasse [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) bietet die Methode `Remove` zum Entfernen des Wasserzeichens aus einem Dokument.

Die folgenden Codebeispiele zeigen, wie Sie ein Wasserzeichen aus Dokumenten entfernen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Um das Wasserzeichen aus einem Dokument zu entfernen, müssen Sie beim Einfügen nur den Namen der Wasserzeichenform festlegen und dann die Wasserzeichenform durch einen zugewiesenen Namen entfernen.

Das folgende Codebeispiel zeigt Ihnen, wie Sie den Namen der Wasserzeichenform festlegen und aus dem Dokument entfernen:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Fügen Sie ein Wasserzeichen in eine Tabellenzelle ein

Manchmal müssen Sie ein Wasserzeichen / Bild in die Zelle einer Tabelle einfügen und es außerhalb der Tabelle anzeigen. Sie können die Eigenschaft [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) verwenden. Diese Eigenschaft ruft ein Flag ab oder legt es fest, das angibt, ob das Shape innerhalb oder außerhalb einer Tabelle angezeigt wird. Beachten Sie, dass diese Eigenschaft nur funktioniert, wenn Sie das Dokument für Microsoft Word 2010 mit der Methode [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) optimieren.

Das folgende Codebeispiel zeigt, wie diese Eigenschaft verwendet wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
