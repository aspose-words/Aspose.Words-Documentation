---
title: Arbeiten mit Wasserzeichen in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Wasserzeichen
linktitle: Arbeiten mit Wasserzeichen
description: "Manipulation von Dokumentwasserzeichen mit C#."
type: docs
weight: 340
url: /de/net/working-with-watermark/
---

In diesem Thema wird erläutert, wie Sie mithilfe von Aspose.Words programmgesteuert mit Wasserzeichen arbeiten. Ein Wasserzeichen ist ein Hintergrundbild, das hinter dem Text in einem Dokument angezeigt wird. Ein Wasserzeichen kann einen Text oder ein Bild enthalten, das durch die [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/)-Klasse dargestellt wird.

{{% alert color="primary" %}}

**Versuchen Sie es online**

Sie können diese Funktionalität mit unserem [Kostenloses Wasserzeichen für Online Dokumente](https://products.aspose.app/words/watermark) ausprobieren.

{{% /alert %}}

## Fügen Sie einem Dokument ein Wasserzeichen hinzu

In Microsoft Word kann mit dem Befehl "Wasserzeichen einfügen" ganz einfach ein Wasserzeichen in ein Dokument eingefügt werden. Aspose.Words stellt die [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/)-Klasse zum Hinzufügen oder Entfernen von Wasserzeichen in Dokumenten bereit. Aspose.Words stellt die [Wasserzeichentyp](https://reference.aspose.com/words/net/aspose.words/watermark/type/)-Aufzählung bereit, die drei mögliche Arten von Wasserzeichen (Text, Bild und Keine) definiert, mit denen gearbeitet werden kann

### Textwasserzeichen hinzufügen

Das folgende Codebeispiel zeigt, wie Sie ein Textwasserzeichen in ein Dokument einfügen, indem Sie [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) mithilfe der [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext)-Methode definieren:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Bildwasserzeichen hinzufügen

Das folgende Codebeispiel zeigt, wie Sie ein Bildwasserzeichen in ein Dokument einfügen, indem Sie [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) mithilfe der [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage)-Methode definieren:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

Das Wasserzeichen kann auch mithilfe der Formklasse eingefügt werden. Es ist sehr einfach, beliebige Formen oder Bilder in eine Kopf- oder Fußzeile einzufügen und so ein Wasserzeichen jeder erdenklichen Art zu erstellen.

Das folgende Codebeispiel fügt ein Wasserzeichen in ein Word-Dokument ein:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) herunterladen.

{{% /alert %}}


## Wasserzeichen aus einem Dokument entfernen

Die [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/)-Klasse stellt die Methode "remove" bereit, um das Wasserzeichen aus einem Dokument zu entfernen.

Das folgende Codebeispiel zeigt, wie Sie ein Wasserzeichen aus Dokumenten entfernen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

Wenn die Wasserzeichen mithilfe des [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/)-Klassenobjekts hinzugefügt werden, müssen Sie zum Entfernen des Wasserzeichens aus einem Dokument beim Einfügen nur den Namen der Wasserzeichenform festlegen und dann die Wasserzeichenform über einen zugewiesenen Namen entfernen.

Das folgende Codebeispiel zeigt Ihnen, wie Sie den Namen der Wasserzeichenform festlegen und diese aus dem Dokument entfernen:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## Fügen Sie einer Tabellenzelle ein Wasserzeichen hinzu

Manchmal müssen Sie ein Wasserzeichen/Bild in die Zelle einer Tabelle einfügen und es außerhalb der Tabelle anzeigen. Dazu können Sie die [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/)-Eigenschaft verwenden. Diese Eigenschaft ruft ein Flag ab oder legt es fest, das angibt, ob die Form innerhalb oder außerhalb einer Tabelle angezeigt wird. Beachten Sie, dass diese Eigenschaft nur funktioniert, wenn Sie das Dokument für Microsoft Word 2010 mithilfe der [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/)-Methode optimieren.

Das folgende Codebeispiel zeigt, wie diese Eigenschaft verwendet wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
