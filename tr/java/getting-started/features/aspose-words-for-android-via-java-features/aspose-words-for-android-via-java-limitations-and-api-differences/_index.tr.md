---
title: Android via Java Farklar
second_title: Aspose.Words
articleTitle: Aspose.Words için Android ile ilgili Java Sınırlamalar ve API Farklar
linktitle: Aspose.Words için Android ile ilgili Java Sınırlamalar ve API Farklar
description: "Aspose.Words Android için Java özellik ve API farkı olan düzenli Aspose.Words Java sürümünü karşılaştırır."
type: docs
weight: 50
url: /tr/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## Aspose.Words için Android yoluyla Java API karşılaştırıldığında, Aspose.Words için Java API

1. *Document.print *yöntemleri mevcut değildir.
1. Kaydetme **TIFF** ve **BMP** biçimleri desteklenmiyor, ancak *SaveFormat.TIFF* ve *SaveFormat.BMP* genel olarak Aspose.Words için kullanılabilir Android'a Java API ile erişilebilir ancak bu kaydetme biçimleri kullanıldığında *UnsupportedOperationException* fırlatılır.
1. Okuma **TIFF** görüntüsü desteklenmiyor.
1. İmzalama **ODT** belgeleri henüz desteklenmiyor.
1. Bar kodları desteklenmiyor.
1. Bir eğri boyunca eğriler desteklenmiyor
1. Baskı desteklenmiyor

## Kamu API farklılıkları

- android.graphics.Bitmap java.awt.image.BufferedImage yerine kullanılır
android.graphics.Canvas yerine java.awt.image.Graphics2D kullanılır
- android.graphics.RectF yerine java.awt.geom.Rectangle2D.Float kullanılır
- android.graphics.PointF java.awt.geom.Point2D.Float yerine kullanılır;
- android.graphics.Rect yerine java.awt.Rectangle kullanılır
- android.graphics.Point yerine java.awt.Point kullanılmaktadır.

Aşağıdaki Kamu API yöntemlerini görün:

1. com.aspose.words.DocumentBuilder:
   1.insertImage (Bitmap)
   1. insertImage(Bitmap, çift, çift)
   1. insertImage (Bitmap, int, double, int, double, double, double, int)
   1. insertOleImage(Bitmap)
   1. insertOleObject(GirdiAkışı, Dize, Boolean, Bitmap)
   1. insertOleObject (dize, boolean, boolean, Bitmap)
   1. insertOleObject (String, String, boolean, boolean, Bitmap)
1. com.aspose.words.IBarcodeGenerator:
   1. Bitmap getBarcodeImage(BarcodeParameters)
   1. GetOldBarcodeImage(BarcodeParameters)
1. com.aspose.words.ImageData:
   1. setImage(Bitmap)
   1. Bitmap toImage()
1. com.aspose.words.ImageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage(Bitmap)
1. com.aspose.words.Document:
   1. android.graphics.PointF renderToScale (int, Canvas, float, float, float) özel durumlar Atar
   1. float renderToSize(int, Canvas, float, float, float, float) atıyor özel durumlar
1. com.aspose.words.LayoutEnumerator:
   1. android.graphics.RectF getRectangle() atıştırma
1. com.aspose.words.NodeRendererBase:
   1. android.graphics.PointF getSizeInPoints()
   1. android.graphics.RectF getOpaqueBoundsInPoints()
   1. public android.graphics.PointF getSizeInPixels(float, float)
   1. android.graphics.Rect getBoundsInPixels(float, float)
   1. android.graphics.Rect getOpaqueBoundsInPixels(float, float)
   1. android.graphics.PointF renderToScale (Canvas, float, float, float)
   1. float renderToSize (Canvas, float, float, float, float)
1. com.aspose.words.PageInfo:
   1. android.graphics.PointF getSizeInPixels(float,float)
   1. android.graphics.PointF getSizeInPoints()
1. com.aspose.words.ShapeBase:
   1. android.graphics.RectF adjustWithEffects(android.graphics.RectF)
   1. android.graphics.RectF getBounds()
   1. android.graphics.RectF getBoundsInPoints()
   1. android.graphics.RectF getBoundsWithEffects()
   1. android.graphics.Point getCoordOrigin()
   1. android.graphics.PointF getCoordSize()
   1. android.graphics.PointF getSizeInPoints()
   1. android.graphics.PointF localToParent(android.graphics.PointF)
   1. setBounds(android.graphics.RectF)
   1. setCoordOrigin(android.graphics.Point)
   1. setCoordSize(android.graphics.PointF)
1. com.aspose.words.Thumbnail Generating Options:
   1. android.graphics.PointF getThumbnailSize()
   1. setThumbnailSize(android.graphics.PointF)

## Aspose.Words için Android ek gereksinimler ile Java

Http/ftp protokolleri aracılığıyla belgeler veya görüntüler yüklemek için lisanslama özelliğini kullanmak isteyen kullanıcıların uygulamalarına aşağıdaki izni eklemesi gerekir
*&lt;uses-permission android:name="android.permission.INTERNET" /&gt;"*

## Örnekler Kamu API

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
