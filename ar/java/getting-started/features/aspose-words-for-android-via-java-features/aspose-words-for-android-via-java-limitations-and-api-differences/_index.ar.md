---
title: Android عبر Java الاختلافات
second_title: Aspose.Words
articleTitle: Aspose.Words for Android عبر Java القيود API الاختلافات
linktitle: Aspose.Words for Android عبر Java القيود API الاختلافات
description: "Aspose.Words for Android عبر Java السمات والسمات API الفروق التي تقارن بالاختلافات المنتظمة Aspose.Words for Java نسخة."
type: docs
weight: 50
url: /ar/java/aspose-words-for-android-via-java-limitations-and-api-differences/
---

## حدود Aspose.Words for Android عبر Java API بالمقارنة مع Aspose.Words for Java API

1 * لا تتوفر الوثائق.
1 إنقاذ **TIFF** و **BMP** الأشكال غير مدعومة، وإن كانت *SaveFormat.TIFF* و *SaveFormat.BMP* متاحة للجمهور Aspose.Words for Android عبر Java API, لكن *UnsupportedOperationException* يُلقى عندما تستخدم أشكال الإنقاذ هذه.
1 القراءة **TIFF** ولا تدعم الصور.
1 التوقيع **ODT** ولم تدعم الوثائق بعد.
1 (باركوديس) غير مدعوم
1 الخادمات على طول المنحنى لا تدعم
1 الطباعة غير مدعومة

## الجمهور API الاختلافات

-الآليين تُستخدم البخار بدلاً من الجافا. التصوير؛
-الآليين (ج) تستخدم الشموع بدلاً من الـ(جوفا) و(التصوير) (Graphics2D)؛
-الآليين Rect F is used instead of java.awt.geom.Rectangle2D. Float;
-الآليات (ف) يُستخدم بدلاً من (جافا) و(أوت جيوم) Float;
-الآليين (ريك) يستخدم بدلاً من (جافا) Rectangle;
-الآليين النقطة تستخدم بدلا من جافا نقطة

انظر: API الأساليب:

1 كوم
   1 - يدرج الرمز (Bitmap)
   1 - الإدخال (Bitmap, double, double)
   1 - الإدخال (Bitmap, int, double, int, double, double, double, double, int)
   1 - يدرج الرمز (Bitmap)
   1 - إدراج حقن (InputStream, String, boolean, Bitmap)
   1 - إدراج موضوع (التنقيب، والفولان، والبوليان، والباتمب)
   1 - إدراج موضوع (التنقيب، والسترينغ، والبوليان، والبوليان، والباتمب)
1 غيبوبة
   1. Bitmap getBarcode Image (BarcodeParameters)
   1. Bitmap getOldBarcode Image (BarcodeParameters)
1 كوم
   1. setImage (Bitmap)
   1. Bitmap toImage
1 كوم.aspose.words.Image FieldMergingArgs:
   1. Bitmap getImage
   1. setImage (Bitmap)
1. com.aspose.words.Document:
   1 - الروبوتات F renderToScale(int, Canvas, float, float, float)
   1. float renderToSize(int, Canvas, float, float, float, float, float)
1 مشط
   1 RectF الحصول على Rectangle يلقي الاستثناء
1 هيا بنا
   1 - الروبوتات
   1 RectF getOpaqueBoundsInPoints
   1. public android.graphics.PointF getSizeInPixels (float, float)
   1 - الروبوتات Rect getBoundsInPixels (float, float)
   1 - الروبوتات Rect getOpaqueBoundsInPixels (float, float)
   1 - الروبوتات F renderToScale (Canvas, float, float)
   1. float renderToSize(Canvas, float, float, float, float)
1 كوم.aspose.words.PageInfo:
   1 - روايات الروبوتات
   1 - الروبوتات
1 Shape القاعدة:
   1 - الروبوتات RectF adjustWithEffects(android.graphics.RectF)
   1 RectF يحصل على £
   1 RectF يحصل على BoundsInPoints
   1 RectF يحصل على الجند مع التأثيرات
   1 نقطة الحصول على كورد أوريجين
   1 - الروبوتات
   1 - الروبوتات
   1 - روايات الروبوتات
   1. setBounds(android.graphics.RectF)
   1. setCoordOrigin (android.graphics.Point)
   1. setCoordSize(android.graphics.PointF)
1 com.aspose.words.ThumbnailGeneratingOptions:
   1 - الروبوتات
   1. setThumbnailSize(android.graphics.PointF)

## Aspose.Words for Android عبر Java الاحتياجات الإضافية

من أجل استخدام سمات الترخيص المزودة بالجرعات المميتة وشحن الوثائق أو الصور بواسطة مستعملي بروتوكولات الموقع الشبكي/الرقائق ينبغي أن يضيفوا بعد إذنهم إلى طلباتهم
*? Uses-permission android:name="android.permission.INTERNET" />*

## الجمهور API أمثلة

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
