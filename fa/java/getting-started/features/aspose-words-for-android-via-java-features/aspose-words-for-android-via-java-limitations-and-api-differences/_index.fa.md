---
title: Android از طریق Java تفاوت ها
second_title: Aspose.Words
articleTitle: Aspose.Words برای Android از طریق Java محدودیت ها و API تفاوت ها
linktitle: Aspose.Words برای Android از طریق Java محدودیت ها و API تفاوت ها
description: "Aspose.Words برای Android از طریق Java ویژگی ها و API تفاوت در مقایسه با Aspose.Words معمولی برای Java نسخه."
type: docs
weight: 50
url: /fa/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## محدودیت های Aspose.Words برای Android از طریق Java API در مقایسه با Aspose.Words برای Java API

1. *Document.print * روش ها در دسترس نیستند.
1. پس انداز در فرمت های **TIFF** و **BMP** پشتیبانی نمی شود، اگرچه *SaveFormat.TIFF* و *SaveFormat.BMP* در Aspose.Words برای Android از طریق Java API در دسترس هستند، اما *UnsupportedOperationException* زمانی که از این فرمت های ذخیره استفاده می شود، پرتاب می شود.
1. خواندن **TIFF** تصاویر پشتیبانی نمی شود.
1. امضای **ODT** اسناد هنوز پشتیبانی نمی شود.
1. بارکد پشتیبانی نمی شود.
1. شیب ها در امتداد منحنی پشتیبانی نمی شوند
1. چاپ پشتیبانی نمی شود

## عمومی API تفاوت ها

- اندروید.گرافیک.Bitmap به جای جاوا استفاده می شود.آوتتصویر.BufferedImage;
- اندروید.گرافیک.بوم به جای جاوا استفاده می شود.آوتتصویر.گرافیک2d;
- اندروید.گرافیک.RectF به جای جاوا استفاده می شود.آوتژئوممستطیل2d. شناور;
- اندروید.گرافیک.PointF به جای جاوا استفاده می شود.آوتژئومPoint2D. شناور;
- اندروید.گرافیک.Rect به جای جاوا استفاده می شود.آوتمستطیل;
- اندروید.گرافیک.نقطه به جای جاوا استفاده می شود.آوتنکته

روش های عمومی API زیر را ببینید:

1. com.اسپوزکلمات.DocumentBuilder:
   1. insertImage(نقشه بیت)
   1. insertImage (Bitmap, double, double)
   1. insertImage (Bitmap, int, double, int, double, double, int)
   1. insertOleImage(نقشه بیت)
   1. insertOleObject (InputStream, String, boolean, Bitmap)
   1. insertOleObject (رشته، بولی، بولی، بیت مپ)
   1. insertOleObject (رشته، رشته، بولی، بولی، بیت مپ)
1. com.اسپوزکلمات.IBarcodeGenerator:
   1. Bitmap getBarcodeImage(BarcodeParameters)
   1. Bitmap getOldBarcodeImage (BarcodeParameters)
1. com.اسپوزکلمات.ImageData:
   1. setImage(نقشه بیت)
   1. Bitmap toImage()
1. com.اسپوزکلمات.ImageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage(نقشه بیت)
1. com.اسپوزکلمات.سند:
   1. اندروید.گرافیک.PointF renderToScale(int, Canvas, float, float, float) استثنا می اندازد
   1. شناور renderToSize(int, Canvas, float, float, float, float) استثنا می اندازد
1. com.اسپوزکلمات.LayoutEnumerator:
   1. اندروید.گرافیک.RectF getRectangle () استثنا می اندازد
1. com.اسپوزکلمات.NodeRendererBase:
   1. اندروید.گرافیک.PointF getSizeInPoints()
   1. اندروید.گرافیک.RectF getOpaqueBoundsInPoints()
   1. عمومی آندروید.گرافیک.PointF getSizeInPixels (شناور، شناور)
   1. اندروید.گرافیک.Rect getBoundsInPixels(شناور، شناور)
   1. اندروید.گرافیک.Rect getOpaqueBoundsInPixels(شناور، شناور)
   1. اندروید.گرافیک.PointF renderToScale (بوم، شناور، شناور، شناور)
   1. شناور renderToSize (بوم، شناور، شناور، شناور، شناور)
1. com.اسپوزکلمات.PageInfo:
   1. اندروید.گرافیک.PointF getSizeInPixels (شناور، شناور)
   1. اندروید.گرافیک.PointF getSizeInPoints()
1. com.اسپوزکلمات.ShapeBase:
   1. اندروید.گرافیک.RectF adjustWithEffects (اندروید.گرافیک.RectF)
   1. اندروید.گرافیک.RectF getBounds()
   1. اندروید.گرافیک.RectF getBoundsInPoints()
   1. اندروید.گرافیک.RectF getBoundsWithEffects()
   1. اندروید.گرافیک.نقطه getCoordOrigin()
   1. اندروید.گرافیک.PointF getCoordSize()
   1. اندروید.گرافیک.PointF getSizeInPoints()
   1. اندروید.گرافیک.PointF localToParent (اندروید.گرافیک.PointF)
   1. setBounds(اندروید.گرافیک.RectF)
   1. setCoordOrigin(اندروید.گرافیک.نکته)
   1. setCoordSize(اندروید.گرافیک.PointF)
1. com.اسپوزکلمات.ThumbnailGeneratingOptions:
   1. اندروید.گرافیک.PointF getThumbnailSize()
   1. setThumbnailSize(اندروید.گرافیک.PointF)

## Aspose.Words برای Android از طریق Java الزامات اضافی

برای استفاده از ویژگی مجوز اندازه گیری شده و بارگذاری اسناد یا تصاویر توسط پروتکل های http/ftp کاربران باید مجوز زیر را به برنامه های خود اضافه کنند
`<uses-permission android:name="android.permission.INTERNET" />`

## نمونه های عمومی API

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
