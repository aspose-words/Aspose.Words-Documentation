---
title: Android über Java Unterschiede
second_title: Aspose.Words
articleTitle: Aspose.Words für Android über Java Einschränkungen und API Unterschiede
linktitle: Aspose.Words für Android über Java Einschränkungen und API Unterschiede
description: "Aspose.Words für Android über Java Merkmale und API Unterschiede im Vergleich zu regulären Aspose.Words für Java Version."
type: docs
weight: 50
url: /de/java/aspose-words-for-android-via-java-limitations-and-api-differences/
---

## Einschränkungen Aspose.Words für Android über Java API im Vergleich zu Aspose.Words für Java API

ANHANG *Document.print *Methoden sind nicht verfügbar.
ANHANG Sparen in **TIFF** und **BMP** Formate werden nicht unterstützt, obwohl *SaveFormat.TIFF* und *SaveFormat.BMP* sind öffentlich zugänglich Aspose.Words für Android über Java API, aber *UnsupportedOperationException* wird geworfen, wenn diese Speicherformate verwendet werden.
ANHANG Lesung **TIFF** Bilder werden nicht unterstützt.
ANHANG Unterzeichnung **ODT** Dokumente werden noch nicht unterstützt.
ANHANG Barcodes werden nicht unterstützt.
ANHANG Gradienten entlang einer Kurve werden nicht unterstützt
ANHANG Drucken wird nicht unterstützt

## Öffentliche API Unterschiede

- android.graphics. Bitmap wird anstelle von java.awt.image verwendet.Buffered Bild;
- android.graphics. Leinwand wird anstelle von java.awt.image.Graphics2D verwendet;
- android.graphics. Einnahmen F wird anstelle von java.awt.geom.Rectangle2D verwendet. Float;
- android.graphics.Point F wird anstelle von java.awt.geom.Point2D verwendet. Float;
- android.graphics. Rect wird anstelle von java.awt verwendet. Rechteck;
- android.graphics. Point wird anstelle von java.awt verwendet. Punkt.

Siehe die folgende Veröffentlichung API Methoden:

ANHANG com.aspose.words.DocumentBuilder:
   1. InsertImage(Bitmap)
   1. InsertImage(Bitmap, doppelt, doppelt)
   1. insertImage(Bitmap, int, doppel, int, doppel, doppel, doppel, int)
   1. InsertOleImage(Bitmap)
   1. InsertOleObject(InputStream, String, boolean, Bitmap)
   1. InsertOleObject(String, boolean, boolean, Bitmap)
   1. InsertOleObject(String, String, boolean, boolean, Bitmap)
ANHANG com.aspose.words.IBarcodeGenerator:
   1. Bitmap getBarcode Bild (BarcodeParameter)
   1. Bitmap getOldBarcode Bild (BarcodeParameter)
ANHANG com.aspose.words.ImageData:
   1. setImage(Bitmap)
   1. Bitmap toImage()
ANHANG com.aspose.words.ImageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage(Bitmap)
1. com.aspose.words.Document:
   1. android.graphics.Point F renderToScale(int, Leinwand, Schwimmer, Schwimmer) wirft Ausnahme
   1. Float RenderToSize(int, Leinwand, Schwimmer, Schwimmer, Schwimmer) wirft Ausnahme
ANHANG com.aspose.words.LayoutEnumerator:
   1. android.graphics. RectF getRectangle() wirft Ausnahme
ANHANG com.aspose.words.NodeRendererBase:
   1. android.graphics.PointF getSizeInPoints()
   1. android.graphics. RectF getOpaqueBoundsInPoints()
   1. public android.graphics.PointF getSizeInPixels(float, float)
   1. android.graphics. Rect getBoundsInPixels(float, float)
   1. android.graphics. Rect getOpaqueBoundsInPixels(float, float)
   1. android.graphics.Point F renderToScale(Kanvas, Schwimmer, Schwimmer)
   1. Float RenderToSize(Kanvas, Schwimmer, Schwimmer, Schwimmer)
ANHANG com.aspose.words.PageInfo:
   1. android.graphics.PointF getSizeInPixels(float, float)
   1. android.graphics.PointF getSizeInPoints()
1. com.aspose.words. Form Basis:
   1. android.graphics. RectF-Anpassung mitEffekten(android.graphics.RectF)
   1. android.graphics. RectF getBounds()
   1. android.graphics. RectF getBoundsInPoints()
   1. android.graphics. RectF getBoundsWithEffekte()
   1. android.graphics. Point getCoordOrigin()
   1. android.graphics.PointF getCoordSize()
   1. android.graphics.PointF getSizeInPoints()
   1. android.graphics.PointF localToParent(android.graphics.PointF)
   1. setBounds(android.graphics.RectF)
   1. setCoordOrigin(android.graphics.Point)
   1. setCoordSize(android.graphics.PointF)
ANHANG com.aspose.words.ThumbnailGeneratingOptionen:
   1. android.graphics.PointF getThumbnailSize()
   1. setThumbnailSize(android.graphics.PointF)

## Aspose.Words für Android über Java zusätzliche Anforderungen

Um die dosierte Lizenzierungsfunktion zu nutzen und Dokumente oder Bilder von http/ftp-Protokollen zu laden, sollten die Benutzer die folgende Berechtigung zu ihren Anwendungen hinzufügen
*<uses-permission android:name="android.permission.INTERNET" />*

## Öffentliche API Beispiele

{{< highlight csharp >}}
public void testPublicAPI1() throws Exception
    {
        final String imagePath = "myImage.pmg";
        Bitmap image = null;
        try
        {
            image = BitmapFactory.decodeFile(imagePath);
            DocumentBuilder builder = new DocumentBuilder();
            builder.insertImage(image);
        }
        finally
        {
            if (image != null)
                image.recycle();
        }
    }
{{< /highlight >}}

{{< highlight csharp >}}
public void testPublicAPI2() throws Exception
    {
        String gTestDocumentPath = "testDoc.docx";
        String outFile = "out.png";
        Document doc = new Document(gTestDocumentPath);
        Bitmap image = null;
        FileOutputStream fos = null;
        try
        {
            image = Bitmap.createBitmap(1000, 1000, Bitmap.Config.ARGB_8888);
            Canvas gr = new Canvas(image);
            gr.rotate(45);
            doc.renderToSize(0, gr, 0, 0, image.getWidth(), image.getHeight());
            fos = new FileOutputStream(outFile);
            image.compress(Bitmap.CompressFormat.PNG, 100, fos);
        }
        finally
        {
            if (fos != null)
                fos.close();
            if (image != null)
                image.recycle();
        }
    }
{{< /highlight >}}
