---
title: Android przez Java Różnice
second_title: Aspose.Words
articleTitle: Aspose.Words zamiast Android przez Java Ograniczenia API Różnice
linktitle: Aspose.Words zamiast Android przez Java Ograniczenia API Różnice
description: "Aspose.Words zamiast Android przez Java funkcje i API różnice w porównaniu do regularnych Aspose.Words zamiast Java Wersja."
type: docs
weight: 50
url: /pl/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## Ograniczenia Aspose.Words zamiast Android przez Java API w porównaniu z Aspose.Words zamiast Java API

1. * Metody Document.print * nie są dostępne.
1. Zapisywanie **TIFF** oraz **BMP** formaty nie są obsługiwane, choć *SaveFormat.TIFF* oraz *SaveFormat.BMP* są dostępne publicznie Aspose.Words zamiast Android przez Java API, ale *UnsupportedOperationException* jest rzucany przy użyciu tych formatów zapisu.
1. Czytanie **TIFF** obrazy nie są obsługiwane.
1. Podpisanie **ODT** dokumenty nie są jeszcze obsługiwane.
1. Kody kreskowe nie są obsługiwane.
1. Gradienty wzdłuż krzywej nie są obsługiwane
1. Drukowanie nie jest obsługiwane

## Publiczny API różnice

- Android.graphics. Bitmap jest używany zamiast java.awt.image.Buffered Obrazek;
- Android.graphics. Canvas jest używany zamiast java.awt.image.Graphics2D;
- Android.graphics. Rect F jest używany zamiast java.awt.geom.Rectangle2D. Płyń;
- Android.graphics.Point F jest używany zamiast java.awt.geom.Point2D. Płyń;
- Android.graphics. Rect jest używany zamiast java.awt. Prostokąt;
- Android.graphics. Punkt jest używany zamiast java.awt. Punkt.

Zob. poniżej Publiczność API metody:

1. com.aspose.words.DocumentBuilder:
   1. insertImage (Bitmap)
   1. insertImage (Bitmap, Double, Double)
   1. insertImage (Bitmap, int, double, int, double, double, double, int)
   1. insertOleImage (Bitmap)
   1. insertOleObject (InputStream, String, Boolean, Bitmap)
   1. insertOleObject (String, boolean, boolean, Bitmap)
   1. insertOleObject (String, String, Boolean, Boolean, Bitmap)
1. com.aspose.words.IBarcodeGenerator:
   1. Bitmap getBarcode Obraz (BarcodeParametry)
   1. Bitmap getOldBarcode Obraz (BarcodeParametry)
1. com.aspose.words.ImageData:
   1. setImage (Bitmap)
   1. Bitmap toImage ()
1. com.aspose.words.ImageFieldMergingArgs:
   1. Bitmap getImage ()
   1. setImage (Bitmap)
1. com.aspose.words.Document:
   1. android.graphics.Point F renderToScale (int, Canvas, float, float, float) rzuca Exception
   1. float renderToSize (int, Canvas, float, float, float, float) rzuca Wyjątek
1. com.aspose.words.LayoutEnuminator:
   1. android.graphics. kgm RectF getRectangle () rzuca Exception
1. com.aspose.words.NodeRendererBase:
   1. android.graphics.PointF getSizeInPoints ()
   1. android.graphics. kgm RectF getOpaqueBoundsInPoints ()
   1. publiczne android.graphics.PointF getSizeInPixels (float, float)
   1. android.graphics. kgm Rect getBoundsInPixels (float, float)
   1. android.graphics. kgm Rect getOpaqueBoundsInPixels (float, float)
   1. android.graphics.Point F renderToScale (Canvas, float, float, float)
   1. float renderToSize (Canvas, float, float, float, float)
1. com.aspose.words.PageInfo:
   1. android.graphics.PointF getSizeInPixels (float, float)
   1. android.graphics.PointF getSizeInPoints ()
1. com.aspose.words. Kształt Podstawa:
   1. android.graphics. kgm RectF Adjustification Effects (android.graphics.RectF)
   1. android.graphics. kgm RectF getBounds ()
   1. android.graphics. kgm RectF getBoundsInPoints ()
   1. android.graphics. kgm RectF getBoundsWithEffects ()
   1. android.graphics. kgm Punkt GetCoordOrigin ()
   1. android.graphics.PointF getCoordSize ()
   1. android.graphics.PointF getSizeInPoints ()
   1. android.graphics.PointF localToParent (android.graphics.PointF)
   1. setBounds (android.graphics.RectF)
   1. setCoordOrigin (android.graphics.Point)
   1. setCoordSize (android.graphics.PointF)
1. com.aspose.words.ThumbnailGeneratingOptions:
   1. android.graphics.PointF getThumbnailSize ()
   1. setThumbnailSize (android.graphics.PointF)

## Aspose.Words zamiast Android przez Java dodatkowe wymagania

Aby korzystać z funkcji licencjonowania mierników i załadować dokumenty lub obrazy przez protokoły http / ftp użytkownicy powinni dodać do swoich aplikacji następujące pozwolenie
* < uses- authorisation android: name = "android.permission.INTERNET" / > *

## Publiczny API Przykłady

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
