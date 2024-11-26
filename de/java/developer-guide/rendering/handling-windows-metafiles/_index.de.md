---
title: Behandlung von Windows Metadateien in Java
second_title: Aspose.Words für Java
articleTitle: Umgang mit Windows Metadateien
linktitle: Umgang mit Windows Metadateien
description: "Aspose.Words für Java implementiert einen eigenen Windows Metadatei-Player zum Abspielen von Metadateiformaten auf allen Plattformen und unterstützt die Handhabung der grundlegenden Metadateifunktionen und kann einen Fallback auf einen anderen Typ von Metadatei-Player durchführen."
type: docs
weight: 30
url: /de/java/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Das Metadateiformat Windows ist ein Bilddateiformat, das sowohl Vektor- als auch Rastergrafiken enthalten kann. Dieses Format wird zum Speichern von Grafikdaten im Speicher oder in Dateien auf der Festplatte verwendet. Eine Metadatei speichert eine Liste von Funktionsaufrufen in der Windows -Grafikgeräteschnittstelle (GDI), die ausgeführt werden müssen, um das Bild auf dem Bildschirm anzuzeigen. Das System interpretiert und führt diese Befehle im Anzeigekontext aus.

Früher war die Metadatei Windows das einzige von Microsoft Word unterstützte Vektorbildformat. Microsoft Word unterstützt jetzt auch das SVG -Format, aber das Metadateiformat wird immer noch häufig in Word-Dokumenten verwendet. Metadatei könnte auch ein Austauschformat für einige andere Anwendungen sein, z. B. Microsoft Visio. Im Wesentlichen besteht der Hauptzweck von Metadateien darin, den Austausch grafischer Informationen zwischen Windows Anwendungen sicherzustellen.

Es gibt 3 Versionen der Metadatei Windows:

- WMF - speichert den Anruf auf 16 Bit GDI.
- EMF - speichert den Aufruf von Win32 /GDI.
- EMF+ Metadatei speichert den Aufruf von GDI+. EMF+ Metadatei kann auch dual sein und dieselbe Grafik mit EMF - und EMF+ -Teilen beschreiben.

Das bestehende Problem mit der Metadatei Windows besteht darin, dass sie von den meisten Nicht-Word-Formaten, in denen Dokumente normalerweise gespeichert werden, nicht unterstützt wird. Daher ist es erforderlich, das Metadateiformat in andere Raster- oder Vektorformate zu konvertieren. Es ist einfach, Windows Metadatei in ein Rasterbild auf .NET zu konvertieren, indem es einfach an GDI+ übergeben wird, aber es ist auf anderen Plattformen nicht möglich, da selbst GDI+ nicht die Funktionalität zum Extrahieren der Vektorgrafiken bietet aus der Metadatei. Um diese Probleme zu lösen, implementiert Aspose.Words einen eigenen Windows Metadatei-Player, der sowohl Vektor- als auch Rastergrafiken im Metadateiformat auf allen Plattformen abspielen kann.

## Steuern des Metadatei-Players Aspose.Words

Mit der Klasse [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) können Sie den Metadatei-Player steuern. Beispielsweise können Sie mit der Eigenschaft [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) festlegen, wie Metadateibilder gerendert werden sollen, was bei der Konvertierung in Bitmaps eine besondere Bedeutung hat (siehe auch die Eigenschaft [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions)).

## Unterstützung von Raster-Operationen

Raster-Operationen sind eine komplexe Metadatei-Funktion, die derzeit nur begrenzt unterstützt wird. Raster-Operationen sind in den Metadateiformaten WMF und EMF verfügbar. Das Metadateiformat EMF+ verwendet keine Rasteroperationen direkt, sondern kann EMF-Teile, eingebettete WMF- oder EMF-Metadateien enthalten.

Es gibt binäre und ternäre Rasteroperationen:

- Binäre Rasteroperationen werden auf Stiftzeichnungsbefehle angewendet, z. B. zum Zeichnen von Linien und Kurven. Beim Zeichnen einer Linie wird die Stiftfarbe mit der Ziel-Bitmap-Farbe (der Farbe des entsprechenden Pixels auf der Geräteoberfläche) kombiniert, indem festgelegte bitweise logische Operationen mit hexadezimalen Farbwerten verwendet werden. Das folgende Bildbeispiel veranschaulicht den Effekt aller 16 binären Raster-Operationen, die auf 20 verschiedene Farbbalken angewendet wurden. Die vertikalen Farbbalken werden zuerst gezeichnet, die horizontalen Balken werden nach jeder binären Rasteroperation gezeichnet. In den einfachen Fällen zeichnet R2_BLACK Schwarz, R2_NOT kehrt die Farbe um, R2_NOP ändert den Hintergrund nicht und R2_WHITE zeichnet Weiß.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- Ternäre Rasteroperationen werden beim Zeichnen von Bitmap-Bildern angewendet. Sie kombinieren die Farben der entsprechenden Bitmap-Bildpixel, des Pinsels und der Ziel-Bitmap mithilfe bitweiser logischer Operationen mit angegebenen hexadezimalen Farbwerten. Einer der häufigsten Zwecke der Verwendung von ternären Rasteroperationen ist die Emulation von Transparenz. Das Bild im folgenden Beispiel zeigt, wie die Symboltransparenz emuliert werden kann. Es gibt zwei Arten von Bitmaps: die S/W-Masken-Bitmap und die Farb-Bitmap. Zuerst wird die Maskenbitmap mit der SRCAND-Rasteroperation gezeichnet. Es ändert den undurchsichtigen Symbolbereich in Schwarzweiß, wobei der transparente Bereich unverändert bleibt. Dann wird die zweite Bitmap mit der SRCINVERT-Rasteroperation gezeichnet. Es zeigt die Farbpixel im schwarzen Bereich an, wobei der transparente Bereich unverändert bleibt.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

Rasteroperationen können nicht direkt in Vektorgrafiken konvertiert werden. Aspose.Words emuliert Rasteroperationen, indem die von Rasteroperationen betroffene Geräteoberfläche teilweise gerastert wird. Zu diesem Zweck wird die Eigenschaft [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) verwendet.

{{% alert color="primary" %}}

Während binäre Rasteroperationen derzeit nicht unterstützt werden und die begrenzte Anzahl von ternären Rasteroperationen von Aspose.Words unterstützt wird, kann es die grundlegenden Fälle der Konvertierung in Vektorgrafiken direkt behandeln, zum Beispiel, R2_BLACK, R2_WHITE, R2_NOP. Außerdem wirkt sich die Rasterung der Geräteoberfläche erheblich auf die Leistung aus, insbesondere wenn es sich um eine erhebliche Anzahl von Raster-Vorgangsdatensätzen handelt.

{{% /alert %}}

Das unten gezeigte Beispiel zeigt, wie Aspose.Words eine Metadatei in eine Bitmap rendert, wenn es nicht möglich ist, einige der Metadatendatensätze korrekt in Vektorgrafiken zu rendern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
