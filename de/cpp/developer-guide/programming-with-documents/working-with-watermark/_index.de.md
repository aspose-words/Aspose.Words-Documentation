---
title: Arbeiten mit Wasserzeichen in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Wasserzeichen
linktitle: Arbeiten mit Wasserzeichen
type: docs
description: "Manipulation des Dokumentwasserzeichens mit C++."
weight: 340
url: /de/cpp/working-with-watermark/
timestamp: 2024-01-30-16-22-34
---

In diesem Thema wird erläutert, wie Sie mit Aspose.Words programmgesteuert mit Wasserzeichen arbeiten. Ein Wasserzeichen ist ein Hintergrundbild, das hinter dem Text in einem Dokument angezeigt wird. Ein Wasserzeichen kann einen Text oder ein Bild enthalten, das durch die Klasse [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) dargestellt wird.

## Hinzufügen eines Wasserzeichens zu einem Dokument

In Microsoft Word kann ein Wasserzeichen einfach mit dem Befehl Wasserzeichen einfügen in ein Dokument eingefügt werden. Aspose.Words stellt die Klasse [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) zum Hinzufügen oder Entfernen von Wasserzeichen in Dokumenten bereit. Aspose.Words stellt die [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)-Aufzählung bereit, die drei mögliche Arten von Wasserzeichen (Text, Bild und Keine) definiert, mit denen gearbeitet werden soll.

### Text-Wasserzeichen hinzufügen

Das folgende Codebeispiel zeigt, wie Sie ein Textwasserzeichen in ein Dokument einfügen, indem Sie [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) mit der Methode [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/) definieren.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### Bild-Wasserzeichen hinzufügen

Das folgende Codebeispiel zeigt, wie Sie ein Bildwasserzeichen in ein Dokument einfügen, indem Sie [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) mit der Methode [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/) definieren.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

Das Wasserzeichen kann auch mit der Formklasse eingefügt werden. Es ist sehr einfach, eine beliebige Form oder ein beliebiges Bild in eine Kopf- oder Fußzeile einzufügen und so ein Wasserzeichen jeder erdenklichen Art zu erstellen. Das folgende Codebeispiel fügt ein Wasserzeichen in ein Word-Dokument ein.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## Wasserzeichen aus einem Dokument entfernen

Die Klasse [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) stellt die Methode remove bereit, um das Wasserzeichen aus einem Dokument zu entfernen.

Das folgende Codebeispiel zeigt, wie Sie ein Wasserzeichen aus Dokumenten entfernen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

Wenn die Wasserzeichen mit dem Klassenobjekt [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) hinzugefügt werden, müssen Sie zum Entfernen des Wasserzeichens aus einem Dokument beim Einfügen nur den Namen der Wasserzeichenform festlegen und dann die Wasserzeichenform mit einem zugewiesenen Namen entfernen.

Das folgende Codebeispiel zeigt Ihnen, wie Sie den Namen der Wasserzeichenform festlegen und aus dem Dokument entfernen:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## Fügen Sie ein Wasserzeichen in die Tabellenzelle ein

Manchmal müssen Sie ein Wasserzeichen / Bild in die Zelle einer Tabelle einfügen und es außerhalb der Tabelle anzeigen. Sie können die Eigenschaft [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/) verwenden. Diese Eigenschaft ruft ein Flag ab oder legt es fest, das angibt, ob das Shape innerhalb oder außerhalb einer Tabelle angezeigt wird. Beachten Sie, dass diese Eigenschaft nur funktioniert, wenn Sie das Dokument für Microsoft Word 2010 mit der Methode [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) optimieren.

Das folgende Codebeispiel zeigt, wie diese Eigenschaft verwendet wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
