---
title: Android از طریق Java تفاوت ها
second_title: Aspose.Words
articleTitle: Aspose.Words برای Android از طریق Java محدودیت ها و API تفاوت ها
linktitle: Aspose.Words برای Android از طریق Java محدودیت ها و API تفاوت ها
description: "Aspose.Words برای Android از طریق Java ویژگی ها و API تفاوت در مقایسه با منظم Aspose.Words برای Java نسخه"
type: docs
weight: 50
url: /fa/java/aspose-words-for-android-via-java-limitations-and-api-differences/
---

## محدودیت های Aspose.Words برای Android از طریق Java API مقایسه Aspose.Words برای Java API

1. * document.print *methods در دسترس نیست.
1. نجات در **TIFF** و **BMP** فرمت ها پشتیبانی نمی شوند، اگرچه *SaveFormat.TIFF* و *SaveFormat.BMP* در دسترس عموم Aspose.Words برای Android از طریق Java API, اما اما اما *UnsupportedOperationException* هنگامی که این فرمت های ذخیره استفاده می شود، پرتاب می شود.
1. خواندن **TIFF** تصاویر پشتیبانی نمی شوند.
1. ثبت نام **ODT** اسناد هنوز پشتیبانی نمی شوند.
1. بارکد ها پشتیبانی نمی شوند.
1. راهنمایی در امتداد یک منحنی پشتیبانی نمی شود
1. چاپ پشتیبانی نمی شود

## عمومی عمومی عمومی عمومی API تفاوت ها

- Android.graphics Bitmap به جای java.awt.image استفاده می شود. تصویر؛
- Android.graphics بوم به جای java.awt.image.Graphics2D استفاده می شود
- Android.graphics مقدماتی F به جای جاوا.awt.geom.Rectangle2D استفاده می شود. فلورت؛
- Android.graphics.Point F به جای جاوا.awt.geom.Point2D استفاده می شود. فلورت؛
- Android.graphics به جای جاوا استفاده می شود. اختلاف؛
- Android.graphics نقطه به جای جاوا استفاده می شود. نقطه

مشاهده عمومی زیر API روش ها:

1. com.aspose.words.DocumentBuilder:
   1- وارد کردن Image (Bitmap)
   1- وارد کردن Image (Bitmap، دوگانه، دوگانه)
   1- قرار دادن Image (Bitmap، int، دو، دو، دو، دو، دو، دو، دو،، int)
   1- وارد کردن OleImage (Bitmap)
   1- قرار دادن Olebject (InputStream، String، boolean، Bitmap)
   1- قرار دادن Olebject (String، boolean، boolean، Bitmap)
   1- قرار دادن Olebject (String، String، boolean، boolean، Bitmap)
1. سازنده: I BarcodeGenerator:
   Bitmap Get Barcode تصویر (BarcodeParameters)
   Bitmap Get Old Barcode تصویر (BarcodeParameters)
1. com.aspose.word
   1- تنظیم (Bitmap)
   Bitmap to Image()
1. com.aspose.word
   Bitmap GetImage()
   1- تنظیم (Bitmap)
1.Com.aspose.words.Document:
   Android.graphics F رندر ToScale (int، Canvas، شناور، شناور، شناور) پرتاب استثنا
   ۱- شناور سازی (int، Canvas، شناور، شناور، شناور، شناور، شناور) پرتاب استثنا
1. com.aspose.word
   1 Android.graphics استفاده از ()
1. com.aspose.words.NodeRendererBase:
   ۱- Android.graphics.PointF getsizeInPoints()
   1 Android.graphics RectF GetOpaqueBoundsInPoints
   ۱- Android.graphics.PointF GetsizeInPixels ( فلورات، شناور)
   1- Android.graphics دریافت کننده:BoundsInPixels ( فلورات، شناور)
   1- Android.graphics دانلود آهنگ های OpaqueBoundsInPixels ( فلورات، شناور)
   Android.graphics F رندر ToScale (Canvas، شناور، شناور، شناور)
   1- شناور سازی (Canvas، شناور، شناور، شناور، شناور، شناور)
1. com.aspose.words.Pageinfo:
   ۱- Android.graphics.PointF در Pixels ( فلورات، شناور)
   ۱- Android.graphics.PointF getsizeInPoints()
۱- کلمات شکل Shape پایگاه:
   1- Android.graphics RectF تنظیم شده با (android.graphics.RectF)
   1 Android.graphics RectF GetBounds()
   1 Android.graphics RectF GetBoundsInPoints()
   1 Android.graphics RectF GetBounds withEffects()
   1 Android.graphics گزینه GetCoordOrigin()
   Android.graphics.PointF GetCoordSize()
   ۱- Android.graphics.PointF getsizeInPoints()
   Android.graphics.PointF LocalToParent (android.graphics.PointF)
   1 مجموعه (android.graphics.RectF)
   1- SetCoordOrigin (android.graphics.Point)
   ۱- تنظیم CoordSize (android.graphics.PointF)
1. com.aspose.words.ThumbnailGeneratingاختیاری:
   Android.graphics.PointF GetThumbnailsize()
   1- تنظیمThumbnailize (android.graphics.PointF)

## Aspose.Words برای Android از طریق Java الزامات اضافی

به منظور استفاده از ویژگی های مجوز متر و اسناد بار یا تصاویر توسط پروتکل های http/ftp کاربران باید مجوز را به برنامه های خود اضافه کنند
*<uses-permission Android:name="android.permission.INTERNET>

## عمومی عمومی عمومی عمومی API مثال ها

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
