---
title: Arbeiten mit Wasserzeichen in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Wasserzeichen
linktitle: Arbeiten mit Wasserzeichen
type: docs
description: "Dokument Wasserzeichen Manipulation mit Java."
weight: 70
url: /de/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

Dieses Thema diskutiert, wie man mit einem Wasserzeichen programmatisch arbeitet Aspose.Words. Ein Wasserzeichen ist ein Hintergrundbild, das hinter dem Text in einem Dokument zeigt. Ein Wasserzeichen kann einen Text oder ein durch die [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) Klasse.

{{% alert color="primary" %}}

**Online testen**

Sie können diese Funktionalität mit unserer [Online Dokument Wasserzeichen](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Hinzufügen eines Wasserzeichens zu einem Dokument

In Microsoft Word, ein Wasserzeichen kann einfach in ein Dokument mit dem Befehl Einfügen Wasserzeichen eingefügt werden. Aspose.Words bietet [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) Klasse, um Wasserzeichen in Dokumenten hinzuzufügen oder zu entfernen. Aspose.Words bietet [Wasser und Wasser Typ](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)Aufzählung, mit der drei mögliche Arten von Wasserzeichen (Text, Bild und Keine) zu arbeiten

### Text hinzufügen Wasserzeichen

Das folgende Codebeispiel zeigt, wie ein Text-Wasserzeichen in einem Dokument eingefügt werden kann, indem [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) Verwendung von [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) Methode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Bild hinzufügen Wasserzeichen

Das folgende Codebeispiel zeigt, wie ein Bild-Wasserzeichen in einem Dokument eingefügt werden kann, indem [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) Verwendung von [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) Methode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

Das Wasserzeichen kann auch mit Formklasse eingesetzt werden. Es ist sehr einfach, jede Form oder Bild in eine Kopfzeile oder Fußzeile einzufügen und so ein Wasserzeichen jeder denkbaren Art zu schaffen.

Im folgenden Codebeispiel wird ein Wasserzeichen in ein Word-Dokument eingefügt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Watermark von einem Dokument entfernen

Die [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) Klasse bietet `Remove` Verfahren zum Entfernen des Wasserzeichens aus einem Dokument.

Die folgenden Codebeispiele zeigen, wie man ein Wasserzeichen aus Dokumenten entfernt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Um das Wasserzeichen aus einem Dokument zu entfernen, müssen Sie beim Einfügen nur den Namen der Wasserzeichenform einstellen und dann die Wasserzeichenform durch einen zugeordneten Namen entfernen.

Das folgende Codebeispiel zeigt Ihnen, wie Sie den Namen der Wasserzeichenform einstellen und aus dem Dokument entfernen können:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Fügen Sie ein Wasserzeichen in eine Tabelle Zelle

Manchmal müssen Sie ein Wasserzeichen / Bild in die Zelle der Tabelle einfügen und es außerhalb der Tabelle anzeigen, können Sie verwenden [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) Eigentum. Diese Eigenschaft erhält oder setzt eine Flagge, die angibt, ob die Form innerhalb einer Tabelle oder außerhalb davon angezeigt wird. Beachten Sie, dass diese Eigenschaft nur funktioniert, wenn Sie das Dokument für Microsoft Word 2010 mit [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) Methode

Das folgende Codebeispiel zeigt, wie diese Eigenschaft genutzt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
