---
title: Arbeiten mit Wasserzeichen in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit Wasserzeichen
linktitle: Arbeiten mit Wasserzeichen
description: "Erstellen und verwalten Sie Wasserzeichen in einem Dokument mit Python."
type: docs
weight: 340
url: /de/python-net/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

In diesem Thema wird erläutert, wie Sie mithilfe von Aspose.Words programmgesteuert mit Wasserzeichen arbeiten. Ein Wasserzeichen ist ein Hintergrundbild, das hinter dem Text in einem Dokument angezeigt wird. Ein Wasserzeichen kann einen Text oder ein Bild enthalten, das durch die [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/)-Klasse dargestellt wird.

{{% alert color="primary" %}}

**Versuchen Sie es online**

Sie können diese Funktionalität mit unserem [Kostenloses Wasserzeichen für Online Dokumente](https://products.aspose.app/words/watermark) ausprobieren.

{{% /alert %}}

## So fügen Sie einem Dokument ein Wasserzeichen hinzu

In Microsoft Word kann mit dem Befehl "Wasserzeichen einfügen" ganz einfach ein Wasserzeichen in ein Dokument eingefügt werden. Aspose.Words stellt die [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/)-Klasse zum Hinzufügen oder Entfernen von Wasserzeichen in Dokumenten bereit. Aspose.Words stellt die [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/)-Enumeration bereit, die drei mögliche Arten von Wasserzeichen ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image) und [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) definiert, mit denen gearbeitet werden kann

### Textwasserzeichen hinzufügen

Das folgende Codebeispiel zeigt, wie Sie ein Textwasserzeichen in ein Dokument einfügen, indem Sie [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) mithilfe der [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/)-Methode definieren.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### Bildwasserzeichen hinzufügen

Das folgende Codebeispiel zeigt, wie Sie ein Bildwasserzeichen in ein Dokument einfügen, indem Sie [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) mithilfe der [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/)-Methode definieren:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

Das Wasserzeichen kann auch mithilfe der Formklasse eingefügt werden. Es ist sehr einfach, beliebige Formen oder Bilder in eine Kopf- oder Fußzeile einzufügen und so ein Wasserzeichen jeder erdenklichen Art zu erstellen.

Das folgende Codebeispiel fügt ein Wasserzeichen in ein Word-Dokument ein:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Hier](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) herunterladen

{{% /alert %}}


## Wasserzeichen aus einem Dokument entfernen

Die [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/)-Klasse stellt die Methode "remove" bereit, um das Wasserzeichen aus einem Dokument zu entfernen.

Das folgende Codebeispiel zeigt, wie Sie ein Wasserzeichen aus Dokumenten entfernen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

Wenn die Wasserzeichen mithilfe des [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Klassenobjekts hinzugefügt werden, müssen Sie zum Entfernen des Wasserzeichens aus einem Dokument beim Einfügen nur den Namen der Wasserzeichenform festlegen und dann die Wasserzeichenform über einen zugewiesenen Namen entfernen.

Das folgende Codebeispiel zeigt Ihnen, wie Sie den Namen der Wasserzeichenform festlegen und diese aus dem Dokument entfernen:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## Fügen Sie ein Wasserzeichen in die Tabellenzelle ein

Manchmal müssen Sie ein Wasserzeichen/Bild in die Zelle einer Tabelle einfügen und es außerhalb der Tabelle anzeigen. Dazu können Sie die [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/)-Eigenschaft verwenden. Diese Eigenschaft ruft ein Flag ab oder legt es fest, das angibt, ob die Form innerhalb oder außerhalb einer Tabelle angezeigt wird. Beachten Sie, dass diese Eigenschaft nur funktioniert, wenn Sie das Dokument für Microsoft Word 2010 mithilfe der [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/)-Methode optimieren.

Das folgende Codebeispiel zeigt, wie diese Eigenschaft verwendet wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
