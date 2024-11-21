---
title: Umgang mit Windows-Metadateien in C#
second_title: Aspose.Words für .NET
articleTitle: Umgang mit Windows-Metadateien
linktitle: Umgang mit Windows-Metadateien
description: "Aspose.Words für .NET implementiert seinen eigenen Windows-Metadatei-Player, um das Metadateiformat auf allen Plattformen abzuspielen, unterstützt die Handhabung der grundlegenden Metadateifunktionen und kann mithilfe von C# auf einen anderen Typ von Metadatei-Player zurückgreifen."
type: docs
weight: 30
url: /de/net/handling-windows-metafiles/
timestamp: 2024-07-10-14-38-57
---

Das Windows-Metadateiformat ist ein Bilddateiformat, das sowohl Vektor- als auch Rastergrafiken enthalten kann. Dieses Format wird zum Speichern von Grafikdaten im Speicher oder in Dateien auf der Festplatte verwendet. Eine Metadatei speichert eine Liste von Funktionsaufrufen im Windows Graphics Device Interface (GDI), die ausgeführt werden müssen, um das Bild auf dem Bildschirm anzuzeigen. Das System interpretiert und führt diese Befehle im Anzeigekontext aus.

Früher war Windows Metafile das einzige von Microsoft Word unterstützte Vektorbildformat. Microsoft Word unterstützt jetzt auch das SVG-Format, das Metadateiformat wird jedoch immer noch häufig in Word-Dokumenten verwendet. Außerdem könnte Metafile ein Austauschformat für einige andere Anwendungen sein, beispielsweise Microsoft Visio. Der Hauptzweck von Metafile besteht im Wesentlichen darin, den Austausch grafischer Informationen zwischen Windows-Anwendungen sicherzustellen.

Es gibt 3 Versionen der Windows-Metadatei:

- WMF – speichert Anrufe an 16-Bit-GDI.
- EMF – speichert Aufrufe an Win32/GDI.
- EMF+-Metadatei speichert Aufruf an GDI+. Die EMF+-Metadatei kann auch dual sein und dieselben Grafiken mit EMF- und EMF+-Teilen beschreiben.

Das bestehende Problem mit der Windows-Metadatei besteht darin, dass sie von den meisten Nicht-Word-Formaten, in denen Dokumente normalerweise gespeichert werden, nicht unterstützt wird. Daher ist es erforderlich, das Metafile-Format in andere Raster- oder Vektorformate zu konvertieren. Es ist einfach, eine Windows-Metadatei in ein Rasterbild auf .NET umzuwandeln, indem man sie einfach an GDI+ übergibt. Auf anderen Plattformen ist dies jedoch nicht möglich, da nicht einmal GDI+ die Funktionalität zum Extrahieren der Vektorgrafiken aus der Metadatei bietet. Um diese Probleme zu lösen, implementiert Aspose.Words seinen eigenen Windows-Metafile-Player, der auf allen Plattformen sowohl Vektor- als auch Rastergrafiken im Metafile-Format abspielen kann.

## Steuern des Aspose.Words Metafile Players

Mit der [MetafileRenderingOptions](https://reference.aspose.com/words/de/net/aspose.words.saving/metafilerenderingoptions/)-Klasse können Sie den Metadatei-Player steuern. Beispielsweise können Sie mithilfe der [RenderingMode](https://reference.aspose.com/words/de/net/aspose.words.saving/metafilerenderingoptions/renderingmode/)-Eigenschaft bestimmen, wie Metadateibilder gerendert werden sollen, was bei der Konvertierung in Bitmaps eine besondere Bedeutung hat (siehe auch die [MetafileRenderingOptions](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/)-Eigenschaft).

Das Speichern in einer Bitmap funktioniert auf anderen Plattformen als .NET anders. Während das .NET GDI+-Rendering eine Referenz ist, die selbst für das komplexeste Metadateiformat nahezu perfekt funktioniert, kann es auf anderen Plattformen zu Problemen führen oder überhaupt nicht unterstützt werden.

## Unterstützung von Rasteroperationen

Bei Rasteroperationen handelt es sich um eine komplexe Metadateifunktion, die derzeit nur begrenzt unterstützt wird. Rasteroperationen sind in den Metadateiformaten WMF und EMF verfügbar. Das EMF+-Metadateiformat verwendet Rasteroperationen nicht direkt, kann aber EMF-Teile, eingebettete WMF- oder EMF-Metadateien enthalten.

Es gibt binäre und ternäre Rasteroperationen:

- Binäre Rasteroperationen werden auf Stiftzeichenbefehle angewendet, z. B. das Zeichnen von Linien und Kurven. Beim Zeichnen einer Linie wird die Stiftfarbe mit der Ziel-Bitmap-Farbe (der Farbe des entsprechenden Pixels auf der Geräteoberfläche) kombiniert, indem bestimmte bitweise logische Operationen mit Hex-Farbwerten verwendet werden. Das folgende Bildbeispiel veranschaulicht die Wirkung aller 16 binären Rasteroperationen, die auf 20 verschiedene Farbbalken angewendet werden. Die vertikalen Farbbalken werden zuerst gezeichnet, die horizontalen Balken werden gezeichnet, nachdem jede binäre Rasteroperation angewendet wurde. In den einfachen Fällen zeichnet R2_BLACK Schwarz, R2_NOT kehrt die Farbe um, R2_NOP ändert den Hintergrund nicht und R2_WHITE zeichnet Weiß.

<img src="/words/net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="Handling-Windows-Metafiles-Aspose-Words-Net-1" style="width:650px"/>

- Beim Zeichnen von Bitmap-Bildern werden ternäre Rasteroperationen angewendet. Sie kombinieren Farben der entsprechenden Bitmap-Bildpixel, des Pinsels und der Ziel-Bitmap, indem sie bitweise logische Operationen mit angegebenen Hex-Farbwerten verwenden. Einer der häufigsten Zwecke der Verwendung ternärer Rasteroperationen ist die Emulation von Transparenz. Das im folgenden Beispiel bereitgestellte Bild zeigt, wie die Symboltransparenz emuliert werden kann. Es gibt zwei Arten von Bitmaps: die S/W-Masken-Bitmap und die Farb-Bitmap. Zunächst wird die Maskenbitmap mit der Rasteroperation SRCAND gezeichnet. Dadurch wird der undurchsichtige Symbolbereich in Schwarzweiß geändert, während der transparente Bereich unverändert bleibt. Anschließend wird die zweite Bitmap mit der Rasteroperation SRCINVERT gezeichnet. Die Farbpixel werden im schwarzen Bereich angezeigt, während der transparente Bereich unverändert bleibt.

<img src="/words/net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="Handling-Windows-Metafiles-Aspose-Words-Net-2" style="width:650px"/>

Rasteroperationen können nicht direkt in Vektorgrafiken konvertiert werden. Aspose.Words emuliert Rasteroperationen, indem es die von Rasteroperationen betroffene Geräteoberfläche teilweise rastern. Zu diesem Zweck wird die [EmulateRasterOperations](https://reference.aspose.com/words/de/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/)-Eigenschaft verwendet.

{{% alert color="primary" %}}

Während binäre Rasteroperationen derzeit nicht unterstützt werden und die begrenzte Anzahl ternärer Rasteroperationen von Aspose.Words unterstützt wird, kann es die grundlegenden Fälle der Konvertierung in Vektorgrafiken direkt verarbeiten, zum Beispiel R2_BLACK, R2_WHITE, R2_NOP. Außerdem wirkt sich die Rasterung der Geräteoberfläche erheblich auf die Leistung aus, insbesondere wenn eine erhebliche Anzahl von Rasteroperationsdatensätzen beteiligt ist.

{{% /alert %}}

Das unten gezeigte Beispiel zeigt, wie Aspose.Words eine Metadatei in eine Bitmap umwandelt, wenn es nicht möglich ist, einige Metadateidatensätze korrekt in Vektorgrafiken umzuwandeln:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cs" >}}

## Metadatei-Fallback-Einstellungen

Aspose.Words unterstützt einige der komplexesten oder seltensten Metadateifunktionen nicht. Benutzer können die [IWarningCallBack](https://reference.aspose.com/words/de/net/aspose.words/iwarningcallback/)-Schnittstelle implementieren und Warnmeldungen erhalten. Wenn Aspose.Words in einer Metadatei auf nicht unterstützte Funktionen stößt, gibt es eine Warnmeldung mit [WarningSource](https://reference.aspose.com/words/de/net/aspose.words/warningsource/).**Metafile** aus. In diesem Fall führt Aspose.Words möglicherweise einen Fallback auf einen anderen Typ von Metadatei-Player durch. Außerdem wird die Warnmeldung zum Fallback ausgegeben.

Erstens führt Aspose.Words einen Fallback vom Vektor-Metadatei-Player auf Raster durch, der durch die [RenderingMode](https://reference.aspose.com/words/de/net/aspose.words.saving/metafilerenderingoptions/renderingmode/)-Eigenschaft gesteuert wird. Wenn die Fallback-Funktion deaktiviert ist, versucht Aspose.Words, einige Ersatzgrafiken anstelle der nicht unterstützten Funktionen zu rendern.

Aspose.Words spielt die Metadatei mithilfe von GDI+ auf .NET erfolgreich im Raster ab, was diese Rückrufoption sicher macht.

Zweitens gibt es eine Option für die EMF+ Dual-Metadatei, um von der Wiedergabe des EMF+-Teils auf den EMF-Teil zurückzugreifen. Es wird von [EmfPlusDualRenderingMode](https://reference.aspose.com/words/de/net/aspose.words.saving/metafilerenderingoptions/emfplusdualrenderingmode/) gesteuert. Wenn beim Abspielen des EMF-Teils Probleme auftreten, kann auch ein Fallback auf Raster durchgeführt werden.

Was Rasteroperationen betrifft: Wenn [EmulateRasterOperations](https://reference.aspose.com/words/de/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/) deaktiviert ist, gelten Rasteroperationen als nicht unterstützt, was einen Fallback auf den Bitmap-Metadatei-Player auslöst, wenn dieser aktiviert ist. Wenn Sie also über eine Metadatei mit Rasteroperationen verfügen, aber keine Rasteroperationsemulation verwenden und dennoch die Vektorausgabe mit Ersatzgrafiken erhalten möchten, wählen Sie [MetafileRenderingMode](https://reference.aspose.com/words/de/net/aspose.words.saving/metafilerenderingmode/).**Vector** aus.
