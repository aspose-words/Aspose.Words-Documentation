---
title: Handhabung Windows Metafiles in Java
second_title: Aspose.Words für Java
articleTitle: Handhabung Windows Metafiles
linktitle: Handhabung Windows Metafiles
description: "Aspose.Words für Java setzt eigene Windows Metafile-Player, um Metafile-Format auf allen Plattformen zu spielen und unterstützt die Handhabung der grundlegenden Metafile-Funktionen und kann Fallback zu einer anderen Art von Metafile-Player durchführen."
type: docs
weight: 30
url: /de/java/handling-windows-metafiles/
---

Windows Metafile Format ist ein Bilddateiformat, das sowohl Vektor- als auch Rastergrafiken enthalten kann. Dieses Format wird verwendet, um Grafikdaten in Speicher- oder On-Disk-Dateien zu speichern. Eine Metadatei speichert eine Liste von Funktionsaufrufen in der Windows Grafik Geräteschnittstelle (GDI), die ausgeführt werden muss, um das Bild auf dem Bildschirm anzuzeigen. Das System interpretiert und führt diese Befehle im Anzeigekontext aus.

Früher, Windows Metafile war das einzige Vektorbildformat, das von Microsoft Word. Microsoft Word unterstützt nun auch das SVG-Format, aber das Metafile-Format wird noch häufig in Word-Dokumenten verwendet. Metafile könnte auch ein Austauschformat für einige andere Anwendungen sein, wie zum Beispiel Microsoft Visio. Im Wesentlichen besteht der Hauptzweck von Metafile darin, den Austausch von grafischen Informationen zwischen Windows Anwendungen.

Es gibt 3 Versionen von Windows Metafile:

- WMF – Läden rufen zu 16bit GDI.
- EMF – Läden rufen an Win32/GDI.
- EMF+ Metafile-Stores rufen GDI+ an. EMF+ Metafile kann auch dual sein und die gleichen Grafiken mit EMF und EMF+ Teilen beschreiben.

Das bestehende Problem mit Windows Metafile ist, dass es nicht von den meisten nicht-Word-Formaten unterstützt wird, auf die Dokumente in der Regel gespeichert werden. Daher ist es erforderlich, das Metafile-Format in andere Raster- oder Vektorformate zu konvertieren. Es ist einfach zu konvertieren Windows Metafile zu einem Rasterbild auf .NET durch einfaches Übergeben an GDI+, aber es ist auf anderen Plattformen nicht möglich, da selbst GDI+ nicht die Funktionalität bietet, die Vektorgrafiken aus Metafile zu extrahieren. Um diese Probleme zu lösen, Aspose.Words setzt eigene Windows Metafile-Player, der in der Lage ist, Metafile-Format sowohl Vektor- als auch Rastergrafiken auf allen Plattformen zu spielen.

## Steuerung der Aspose.Words Metafile Player

Die [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) class ermöglicht es Ihnen, den Metadatei-Player zu steuern. So können Sie z.B. feststellen, wie Metadateibilder mit Hilfe der [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) Eigenschaft, die eine besondere Bedeutung bei der Konvertierung in Bitmaps hat (siehe auch die [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) Eigentum).

## Unterstützung von Rasteroperationen

Rasteroperationen sind eine komplexe Metadatei-Funktion, die derzeit begrenzte Unterstützung hat. Rasteroperationen sind in WMF- und EMF-Metadateiformaten verfügbar. Das EMF+ Metafile-Format verwendet nicht direkt Rasteroperationen, sondern kann EMF-Teile, eingebettete WMF- oder EMF-Metadateien enthalten.

Es gibt binäre und ternäre Rasteroperationen:

- Binäre Rasteroperationen werden auf Stift-Zeichnungsbefehle angewendet, wie z.B. Zeichenlinien und Kurven. Beim Zeichnen einer Zeile wird die Stiftfarbe mit der Ziel-Bitmap-Farbe (die Farbe des entsprechenden Pixels auf der Geräteoberfläche) kombiniert, indem bestimmte bitweise logische Operationen mit Hex-Farbwerten verwendet werden. Das nachfolgende Bildbeispiel verdeutlicht die Wirkung aller 16 binären Rasteroperationen, die auf 20 verschiedene Farbbarren angewendet werden. Die vertikalen Farbstäbe werden zuerst gezeichnet, die horizontalen Balken werden nach jedem binären Rastervorgang gezogen. Für die einfachen Fälle, R2_BLACK zieht schwarz, R2_NOT umgekehrt die Farbe, R2_NOP den Hintergrund nicht ändert, und R2_WHITE zieht weiß.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- Ternäre Rasteroperationen werden beim Zeichnen von Bitmap-Bildern angewendet. Sie kombinieren Farben von entsprechenden Bitmap-Bildpixeln, der Bürste und der Zielbitmap, indem sie bitweise logische Operationen mit vorgegebenen Hex-Farbwerten verwenden. Eines der häufigsten Zwecke der Verwendung von ternären Rasteroperationen ist die Emulation der Transparenz. Das im folgenden Beispiel bereitgestellte Bild zeigt, wie Icontransparenz emuliert werden kann. Es gibt zwei Arten von Bitmaps: die b/w Maske Bitmap und die Farbe Bitmap. Zunächst wird die Maskenbitmap mit dem SRCAND-Raster-Betrieb gezeichnet. Es ändert den opaken Ikonenbereich nach schwarz und weiß, so dass der transparente Bereich unverändert bleibt. Dann wird die zweite Bitmap mit der SRCINVERT Rasteroperation gezeichnet. Es zeigt die Farbpixel auf dem schwarzen Bereich, so dass der transparente Bereich unverändert bleibt.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

Rasteroperationen können nicht direkt in Vektorgrafiken umgewandelt werden. Aspose.Words emuliert Rasteroperationen durch teilweise Rasterung der von Rasteroperationen betroffenen Geräteoberfläche. Zu diesem Zweck [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) Eigentum wird verwendet.

{{% alert color="primary" %}}

Während die binären Raster-Operationen derzeit nicht unterstützt werden und die begrenzte Anzahl der ternären Raster-Operationen von Aspose.Words, es kann die grundlegenden Fälle der Umwandlung in Vektorgrafiken direkt behandeln, zum Beispiel R2_BLACK, R2_WHITE, R2_NOP. Auch die Rasterung der Geräteoberfläche wirkt sich deutlich auf die Leistung aus, insbesondere wenn es sich um die signifikante Anzahl von Raster-Betriebsaufzeichnungen handelt.

{{% /alert %}}

Das nachfolgende Beispiel zeigt, wie Aspose.Words macht eine Metadatei zu einer Bitmap, wenn es nicht möglich ist, einige der Metafile-Daten korrekt auf Vektorgrafiken zu übertragen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
