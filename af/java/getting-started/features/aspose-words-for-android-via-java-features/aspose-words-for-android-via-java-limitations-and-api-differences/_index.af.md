---
title: Android via Java Verskille
second_title: Aspose.Words
articleTitle: Aspose.Words vir Android via Java Beperkings En API Verskille
linktitle: Aspose.Words vir Android via Java Beperkings En API Verskille
description: "Aspose.Words vir Android via Java kenmerke en API verskille in vergelyking met gereelde Aspose.Words vir Java weergawe."
type: docs
weight: 50
url: /af/java/aspose-words-for-android-via-java-limitations-and-api-differences/
---

## Beperkings van Aspose.Words vir Android via Java API in vergelyking met Aspose.Words vir Java API

1. *Document.print *metodes is nie beskikbaar nie.
1. Besparing in **TIFF** en **BMP** formate word nie ondersteun nie, alhoewel *SaveFormat.TIFF* en *SaveFormat.BMP* beskikbaar is in openbare Aspose.Words vir Android via Java API, maar *UnsupportedOperationException* word gegooi wanneer hierdie stoor formate gebruik word.
1. Lees **TIFF** beelde word nie ondersteun nie.
1. Ondertekening van **ODT** dokumente word nog nie ondersteun nie.
1. Barcodes word nie ondersteun nie.
1. Gradiënte langs'n kurwe word nie ondersteun nie
1. Druk word nie ondersteun nie

## Openbare API verskille

- android.grafiese.Bitmap word gebruik in plaas van java.awt.beeld.BufferedImage;
- android.grafiese.Canvas word gebruik in plaas van java.awt.beeld.Grafiese 2d;
- android.grafiese.RectF word gebruik in plaas van java.awt.geom.Reghoek2d. Vloei;
- android.grafiese.PointF word gebruik in plaas van java.awt.geom.Punt 2d. Vloei;
- android.grafiese.Rect word gebruik in plaas van java.awt.Reghoek;
- android.grafiese.Punt word gebruik in plaas van java.awt.Punt.

Sien Die Volgende Openbare API metodes:

1. kom.aspose.woorde.DocumentBuilder:
   1. insertImage (Bitmap)
   1. insertImage (Bitmap, dubbel, dubbel)
   1. insertImage (Bitmap, int, dubbel, int, dubbel, dubbel, int)
   1. insertOleImage (Bitmap)
   1. insertOleObject (InputStream, String, booleaanse, Bitmap)
   1. insertOleObject (String, booleaanse, booleaanse, Bitmap)
   1. insertOleObject (String, String, booleaanse, booleaanse, Bitmap)
1. kom.aspose.woorde.IBarcodeGenerator:
   1. Bitmap getBarcodeImage(BarcodeParameters)
   1. Bitmap getOldBarcodeImage(BarcodeParameters)
1. kom.aspose.woorde.ImageData:
   1. setImage (Bitmap)
   1. Bitmap toImage()
1. kom.aspose.woorde.ImageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage (Bitmap)
1. kom.aspose.woorde.Dokument:
   1. android.grafiese.PointF renderToScale (int, Canvas, float, float, float) gooi Uitsondering
   1. float renderToSize(int, Canvas, float, float, float) gooi Uitsondering
1. kom.aspose.woorde.LayoutEnumerator:
   1. android.grafiese.RectF getRectangle () gooi Uitsondering
1. kom.aspose.woorde.NodeRendererBase:
   1. android.grafiese.PointF getSizeInPoints()
   1. android.grafiese.RectF getOpaqueBoundsInPoints()
   1. openbare android.grafiese.PointF getSizeInPixels (dryf, dryf)
   1. android.grafiese.Rect getBoundsInPixels (dryf, dryf)
   1. android.grafiese.Rect getOpaqueBoundsInPixels (dryf, dryf)
   1. android.grafiese.PointF renderToScale (Doek, float, float, float)
   1. float renderToSize(Doek, float, float, float, float)
1. kom.aspose.woorde.PageInfo:
   1. android.grafiese.PointF getSizeInPixels (dryf, dryf)
   1. android.grafiese.PointF getSizeInPoints()
1. kom.aspose.woorde.ShapeBase:
   1. android.grafiese.RectF adjustWithEffects (android.grafiese.Rektf)
   1. android.grafiese.RectF getBounds()
   1. android.grafiese.RectF getBoundsInPoints()
   1. android.grafiese.RectF getBoundsWithEffects()
   1. android.grafiese.Punt getCoordOrigin()
   1. android.grafiese.PointF getCoordSize()
   1. android.grafiese.PointF getSizeInPoints()
   1. android.grafiese.PointF localToParent (android.grafiese.PointF)
   1. setBounds (android.grafiese.Rektf)
   1. setCoordOrigin (android.grafiese.Punt)
   1. setCoordSize (android.grafiese.PointF)
1. kom.aspose.woorde.ThumbnailGeneratingOptions:
   1. android.grafiese.PointF getThumbnailSize()
   1. setThumbnailSize (android.grafiese.PointF)

## Aspose.Words vir Android via Java bykomende vereistes

Ten einde meet lisensie funksie gebruik en laai dokumente of beelde deur http/ftp protokolle gebruikers moet die volgende toestemming by te voeg tot hul aansoeke
`<uses-permission android:name="android.permission.INTERNET" >`

## Openbare API Voorbeelde

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
