---
title: Aspose.Words for Android via Java API Differences and Limitations
type: docs
weight: 20
url: /java/aspose-words-for-android-via-java-api-differences-and-limitations/
---

## **Limitations of Aspose.Words for Android via Java API compared to Aspose.Words for Java API**

1. *Document.print *methods are not available.
1. Saving in **TIFF** and **BMP** formats is not supported, though *SaveFormat.TIFF* and *SaveFormat.BMP* are available in public Aspose.Words for Android via Java API, but *UnsupportedOperationException* is thrown when these save formats are used.
1. Reading **TIFF** images is not supported.
1. Signing **ODT** documents is not supported yet.
1. Barcodes are not supported.
1. Gradients along a curve are not supported
1. Printing is not supported

## **Public API differences**

- android.graphics.Bitmap is used instead of java.awt.image.BufferedImage;
- android.graphics.Canvas is used instead of java.awt.image.Graphics2D;
- android.graphics.RectF is used instead of  java.awt.geom.Rectangle2D.Float;
- android.graphics.PointF is used instead of java.awt.geom.Point2D.Float;
- android.graphics.Rect is used instead of java.awt.Rectangle;
- android.graphics.Point is used instead of java.awt.Point.

See the following Public API methods:

1. com.aspose.words.DocumentBuilder:
   1. insertImage(Bitmap)
   1. insertImage(Bitmap, double, double)
   1. insertImage(Bitmap, int, double, int, double, double, double, int)
   1. insertOleImage(Bitmap)
   1. insertOleObject(InputStream, String, boolean, Bitmap)
   1. insertOleObject(String, boolean, boolean, Bitmap)
   1. insertOleObject(String, String, boolean, boolean, Bitmap)
1. com.aspose.words.IBarcodeGenerator:
   1. Bitmap getBarcodeImage(BarcodeParameters)
   1. Bitmap getOldBarcodeImage(BarcodeParameters)
1. com.aspose.words.ImageData:
   1. setImage(Bitmap)
   1. Bitmap toImage()
1. com.aspose.words.ImageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage(Bitmap)
1. com.aspose.words.Document:
   1. android.graphics.PointF renderToScale(int, Canvas, float, float, float) throws Exception
   1. float renderToSize(int, Canvas, float, float, float, float) throws Exception
1. com.aspose.words.LayoutEnumerator:
   1. android.graphics.RectF getRectangle() throws Exception
1. com.aspose.words.NodeRendererBase:
   1. android.graphics.PointF getSizeInPoints()
   1. android.graphics.RectF getOpaqueBoundsInPoints()
   1. public android.graphics.PointF getSizeInPixels(float, float)
   1. android.graphics.Rect getBoundsInPixels(float, float)
   1. android.graphics.Rect getOpaqueBoundsInPixels(float, float)
   1. android.graphics.PointF renderToScale(Canvas, float, float, float)
   1. float renderToSize(Canvas, float, float, float, float)
1. com.aspose.words.PageInfo:
   1. android.graphics.PointF getSizeInPixels(float, float)
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
1. com.aspose.words.ThumbnailGeneratingOptions:
   1. android.graphics.PointF getThumbnailSize()
   1. setThumbnailSize(android.graphics.PointF)

## **Aspose.Words for Android via Java additional requirements**

In order to use the metered licensing feature and load documents or images by HTTP/FTP protocols, users should add the following permission to their applications

{{< highlight script >}}
*&lt;uses-permission android:name="android.permission.INTERNET" /&gt;*
{{< /highlight >}}

## **Public API Examples**

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
