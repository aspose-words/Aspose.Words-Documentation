---
title: Android über Java Unterschiede
second_title: Aspose.Words
articleTitle: Aspose.Words für Android über Java Einschränkungen und API Unterschiede
linktitle: Aspose.Words für Android über Java Einschränkungen und API Unterschiede
description: "Aspose.Words für Android über Java Funktionen und API Unterschiede im Vergleich zur regulären Aspose.Words für Java Version."
type: docs
weight: 50
url: /de/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## Einschränkungen von Aspose.Words für Android über Java API im Vergleich zu Aspose.Words für Java API

1. *Document.print *Methoden sind nicht verfügbar.
1. Das Speichern in den Formaten **TIFF** und **BMP** wird nicht unterstützt, obwohl *SaveFormat.TIFF* und *SaveFormat.BMP* in public Aspose.Words für Android über Java API verfügbar sind, aber *UnsupportedOperationException* wird ausgelöst, wenn diese Speicherformate werden verwendet.
1. Das Lesen von **TIFF**-Bildern wird nicht unterstützt.
1. Das Signieren von **ODT**-Dokumenten wird noch nicht unterstützt.
1. Barcodes werden nicht unterstützt.
1. Verläufe entlang einer Kurve werden nicht unterstützt
1. Drucken wird nicht unterstützt

## Öffentliche API Unterschiede

- Android.Grafik.Bitmap wird anstelle von Java verwendet.ahhh.Bild.BufferedImage;
- Android.Grafik.Canvas wird anstelle von Java verwendet.ahhh.Bild.GRAFIK2D;
- Android.Grafik.RectF wird anstelle von Java verwendet.ahhh.geom.RECHTECK2D.Float;
- Android.Grafik.PointF wird anstelle von Java verwendet.ahhh.geom.Punkt2D.Float;
- Android.Grafik.Rect wird anstelle von Java verwendet.ahhh.Rechteck;
- Android.Grafik.Point wird anstelle von Java verwendet.ahhh.Punkt.

Siehe die folgenden öffentlichen API -Methoden:

1. kom.posieren.Wort.DocumentBuilder:
   1. insertImage(Bitmap)
   1. insertImage (Bitmap, doppelt, doppelt)
   1. insertImage(Bitmap, int, doppelt, int, doppelt, doppelt, doppelt, int)
   1. insertOleImage(Bitmap)
   1. insertOleObject(InputStream, Zeichenfolge, boolescher Wert, Bitmap)
   1. insertOleObject (Zeichenfolge, boolescher Wert, Boolescher Wert, Bitmap)
   1. insertOleObject(Zeichenfolge, Zeichenfolge, boolescher Wert, boolescher Wert, Bitmap)
1. kom.posieren.Wort.IBarcodeGenerator:
   1. Bitmap getBarcodeImage(BarcodeParameters)
   1. Bitmap getOldBarcodeImage(BarcodeParameters)
1. kom.posieren.Wort.ImageData:
   1. setImage(Bitmap)
   1. Bitmap toImage()
1. kom.posieren.Wort.ImageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage(Bitmap)
1. kom.posieren.Wort.Dokument:
   1. Android.Grafik.PointF renderToScale (int, Canvas, float, float, float) löst eine Ausnahme aus
   1. float renderToSize (int, Leinwand, float, float, float, float) löst eine Ausnahme aus
1. kom.posieren.Wort.LayoutEnumerator:
   1. Android.Grafik.RectF getRectangle () löst eine Ausnahme aus
1. kom.posieren.Wort.NodeRendererBase:
   1. Android.Grafik.PointF getSizeInPoints()
   1. Android.Grafik.RectF getOpaqueBoundsInPoints()
   1. öffentliches Android.Grafik.PointF getSizeInPixels(schweben, schweben)
   1. Android.Grafik.Rect getBoundsInPixels (schweben, schweben)
   1. Android.Grafik.Rect getOpaqueBoundsInPixels (schweben, schweben)
   1. Android.Grafik.PointF renderToScale (Leinwand, schweben, schweben, schweben)
   1. float renderToSize (Leinwand, schweben, schweben, schweben, schweben)
1. kom.posieren.Wort.PageInfo:
   1. Android.Grafik.PointF getSizeInPixels(schweben, schweben)
   1. Android.Grafik.PointF getSizeInPoints()
1. kom.posieren.Wort.ShapeBase:
   1. Android.Grafik.RectF adjustWithEffects(android.Grafik.RectF)
   1. Android.Grafik.RectF getBounds()
   1. Android.Grafik.RectF getBoundsInPoints()
   1. Android.Grafik.RectF getBoundsWithEffects()
   1. Android.Grafik.Punkt getCoordOrigin()
   1. Android.Grafik.PointF getCoordSize()
   1. Android.Grafik.PointF getSizeInPoints()
   1. Android.Grafik.PointF localToParent(android.Grafik.PunktF)
   1. setBounds(android.Grafik.RectF)
   1. setCoordOrigin(android.Grafik.Punkt)
   1. setCoordSize(android.Grafik.PunktF)
1. kom.posieren.Wort.ThumbnailGeneratingOptions:
   1. Android.Grafik.PointF getThumbnailSize()
   1. setThumbnailSize(android.Grafik.PunktF)

## Aspose.Words für Android über Java zusätzliche Anforderungen

Um die Funktion für die dosierte Lizenzierung zu verwenden und Dokumente oder Bilder über http / FTP-Protokolle zu laden, sollten Benutzer ihren Anwendungen die folgende Berechtigung hinzufügen
`<uses-permission android:name="android.permission.INTERNET" />`

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
