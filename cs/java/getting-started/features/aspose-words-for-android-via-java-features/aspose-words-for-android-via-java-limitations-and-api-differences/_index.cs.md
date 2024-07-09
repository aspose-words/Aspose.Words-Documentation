---
title: Android přes Java Rozdíly
second_title: Aspose.Words
articleTitle: Aspose.Words místo Android přes Java Omezení a API Rozdíly
linktitle: Aspose.Words místo Android přes Java Omezení a API Rozdíly
description: "Aspose.Words místo Android přes Java vlastnosti a API rozdíly ve srovnání s pravidelnými Aspose.Words místo Java verze."
type: docs
weight: 50
url: /cs/java/aspose-words-for-android-via-java-limitations-and-api-differences/
---

## Omezení Aspose.Words místo Android přes Java API ve srovnání s Aspose.Words místo Java API

1. *Document.print * Methods are not available.
1. Úspora **TIFF** a **BMP** formáty však nejsou podporovány *SaveFormat.TIFF* a *SaveFormat.BMP* jsou k dispozici na veřejnosti Aspose.Words místo Android přes Java API, ale *UnsupportedOperationException* se při použití těchto formátů uloží.
1. Čtení **TIFF** obrázky nejsou podporovány.
1. Podpis **ODT** dokumenty ještě nejsou podporovány.
1. Čárové kódy nejsou podporovány.
1. Zářivky podél křivky nejsou podporovány
1. Tisk není podporován

## Veřejný API rozdíly

- android.graphics. Bitmap se používá místo java.awt.image.Buffered Obrázek;
- android.graphics. Místo java.awt.image.Grafics2D se používá plátno;
- android.graphics. Rekt F se používá místo java.awt.geom.Rectangle2D. Float;
- android.graphics.Point F se používá místo java.awt.geom.Point2D. Float;
- android.graphics. Rect se používá místo java.awt. Obdélník;
- android.graphics. Bod se používá místo java.awt. Bod.

Viz následující Veřejnost API metody:

1. com.aspose.words.DocumentBuilder:
   1. insertImage(Bitmap)
   1. insertImage(Bitmap, double, double)
   1. insertImage(Bitmap, int, double, int, double, double, double, int)
   1. insertOleImage(Bitmap)
   1. insertOleObject(InputStream, String, boolean, Bitmap)
   1. insertOleObject(String, boolean, boolean, Bitmap)
   1. insertOleObject(String, String, boolean, boolean, Bitmap)
1. com.aspose.words.IBarcodeGenerátor:
   1. Bitmap dostatBarcode Obrázek(BarcodeParametry)
   1. Bitmap getOldBarcode Obrázek(BarcodeParametry)
1. com.aspose.words.ImageData:
   1. setImage(Bitmap)
   1. Bitmap toImage()
1. com.aspose.words.ImageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage(Bitmap)
1. com.aspose.words.Document:
   1. android.graphics.Point F renderToScale(int, Canvas, float, float, float) hodí výjimku
   1. float renderToSize(int, Canvas, float, float, float, float) hodí výjimku
1. com.aspose.words.LayoutVýpočetce:
   1. android.graphics. RectF getRectangle() hází výjimku
1. com.aspose.words.NodeRendererBase:
   1. android.graphics.PointF getsizeInPoints()
   1. android.graphics. RectF getOpaqueBoundsInPoints()
   1. veřejné android.graphics.PointF getsizeInPixels(float, float)
   1. android.graphics. Rect getBoundsInPixels(float, float)
   1. android.graphics. Rect getOpaqueBoundsInPixels(float, float)
   1. android.graphics.Point F renderToScale(Canvas, float, float, float)
   1. float renderToSize(Canvas, float, float, float, float)
1. com.aspose.words.PageInfo:
   1. android.graphics.PointF getsizeInPixels(float, float)
   1. android.graphics.PointF getsizeInPoints()
1. com.aspose.words. Tvar Základ:
   1. android.graphics. RectF nastavitWithEffects(android.graphics.RectF)
   1. android.graphics. RectF getBounds()
   1. android.graphics. RectF getBoundsInPoints()
   1. android.graphics. RectF getBoundsWithEffects()
   1. android.graphics. Bod getCoordOrigin()
   1. android.graphics.PointF getCoordSize()
   1. android.graphics.PointF getsizeInPoints()
   1. android.graphics.PointF localToParent(android.graphics.PointF)
   1. setBounds(android.graphics.RectF)
   1. setCoordPůvodní(android.graphics.Point)
   1. setCoordSize(android.graphics.PointF)
1. com.aspose.words.ThumbnailGeneratingOptions:
   1. android.graphics.PointF getThumbnailSize()
   1. setThumbnailSize(android.graphics.PointF)

## Aspose.Words místo Android přes Java dodatečné požadavky

Za účelem používání funkce a načítání licencí a dokumentů nebo obrázků pomocí protokolů http/ftp by uživatelé měli přidat následující povolení do svých aplikací
* <uses-permission android:name="android.permission.INTERNET" />*

## Veřejný API Příklady

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
