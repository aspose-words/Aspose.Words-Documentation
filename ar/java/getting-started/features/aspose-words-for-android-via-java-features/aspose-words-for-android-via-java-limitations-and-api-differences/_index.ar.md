---
title: Android عبر Java الاختلافات
second_title: Aspose.Words
articleTitle: Aspose.Words ل Android عبر Java القيود و API الاختلافات
linktitle: Aspose.Words ل Android عبر Java القيود و API الاختلافات
description: "Aspose.Words ل Android عبر Java الميزات و API الاختلافات مقارنة العادية Aspose.Words ل Java الإصدار."
type: docs
weight: 50
url: /ar/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## حدود Aspose.Words لـ Android عبر Java API مقارنة بـ Aspose.Words لـ Java API

1. طرق *Document.print *غير متوفرة.
1. الحفظ بتنسيقي **TIFF** و **BMP** غير مدعوم، على الرغم من أن *SaveFormat.TIFF* و *SaveFormat.BMP* متاحان في الأماكن العامة Aspose.Words لـ Android عبر Java API، ولكن يتم طرح *UnsupportedOperationException* عند استخدام تنسيقات الحفظ هذه.
1. قراءة **TIFF** الصور غير مدعومة.
1. التوقيع **ODT** المستندات غير مدعومة حتى الآن.
1. الرموز الشريطية غير مدعومة.
1. التدرجات على طول المنحنى غير مدعومة
1. الطباعة غير مدعومة

## عامة API الاختلافات

- الروبوت.الرسومات.يتم استخدام الصورة النقطية بدلا من جافا.أوت.صورة.BufferedImage;
- الروبوت.الرسومات.يستخدم قماش بدلا من جافا.أوت.صورة.رسومات2د;
- الروبوت.الرسومات.يستخدم ريكتف بدلا من جافا.أوت.(جيوم).مستطيل 2 د. تعويم;
- الروبوت.الرسومات.يستخدم بوينتف بدلا من جافا.أوت.(جيوم).نقطة 2 د. تعويم;
- الروبوت.الرسومات.يستخدم المستقيم بدلا من جافا.أوت.مستطيل;
- الروبوت.الرسومات.يتم استخدام نقطة بدلا من جافا.أوت.نقطة.

راجع الطرق العامة API التالية:

1. كوم.أسبوس.كلمات.DocumentBuilder:
   1. insertImage (صورة نقطية)
   1. insertImage (صورة نقطية، مزدوجة، مزدوجة)
   1. insertImage(صورة نقطية، كثافة العمليات، مزدوجة، كثافة العمليات، مزدوجة، مزدوجة، مزدوجة، كثافة العمليات)
   1. insertOleImage (صورة نقطية)
   1. insertOleObject (InputStream، سلسلة، منطقية، صورة نقطية)
   1. insertOleObject (سلسلة، منطقية، منطقية، نقطية)
   1. insertOleObject (سلسلة، سلسلة، منطقية، منطقية، صورة نقطية)
1. كوم.أسبوس.كلمات.IBarcodeGenerator:
   1. صورة نقطية getBarcodeImage (BarcodeParameters)
   1. صورة نقطية getOldBarcodeImage (BarcodeParameters)
1. كوم.أسبوس.كلمات.ImageData:
   1. setImage (صورة نقطية)
   1. صورة نقطية toImage()
1. كوم.أسبوس.كلمات.ImageFieldMergingArgs:
   1. صورة نقطية getImage()
   1. setImage (صورة نقطية)
1. كوم.أسبوس.كلمات.الوثيقة:
   1. الروبوت.الرسومات.نقطة renderToScale (كثافة العمليات، قماش، تعويم، تعويم، تعويم) يلقي استثناء
   1. تعويم renderToSize (كثافة العمليات، قماش، تعويم، تعويم، تعويم، تعويم) يلقي استثناء
1. كوم.أسبوس.كلمات.LayoutEnumerator:
   1. الروبوت.الرسومات.ريكتف getRectangle () يلقي استثناء
1. كوم.أسبوس.كلمات.NodeRendererBase:
   1. الروبوت.الرسومات.نقطة getSizeInPoints ()
   1. الروبوت.الرسومات.ريكتف getOpaqueBoundsInPoints()
   1. الروبوت العام.الرسومات.نقطة getSizeInPixels (تعويم، تعويم)
   1. الروبوت.الرسومات.المستقيم getBoundsInPixels (تعويم، تعويم)
   1. الروبوت.الرسومات.المستقيم getOpaqueBoundsInPixels (تعويم، تعويم)
   1. الروبوت.الرسومات.نقطة renderToScale (قماش، تعويم، تعويم، تعويم)
   1. تعويم renderToSize (قماش، تعويم، تعويم، تعويم، تعويم)
1. كوم.أسبوس.كلمات.PageInfo:
   1. الروبوت.الرسومات.نقطة getSizeInPixels (تعويم، تعويم)
   1. الروبوت.الرسومات.نقطة getSizeInPoints ()
1. كوم.أسبوس.كلمات.ShapeBase:
   1. الروبوت.الرسومات.ريكتف adjustWithEffects (أندرويد.الرسومات.ريكتف)
   1. الروبوت.الرسومات.ريكتف getBounds()
   1. الروبوت.الرسومات.ريكتف getBoundsInPoints()
   1. الروبوت.الرسومات.ريكتف getBoundsWithEffects()
   1. الروبوت.الرسومات.نقطة getCoordOrigin()
   1. الروبوت.الرسومات.نقطة getCoordSize ()
   1. الروبوت.الرسومات.نقطة getSizeInPoints ()
   1. الروبوت.الرسومات.بوينتف localToParent (أندرويد.الرسومات.نقطة)
   1. setBounds (الروبوت.الرسومات.ريكتف)
   1. setCoordOrigin (الروبوت.الرسومات.نقطة)
   1. setCoordSize (الروبوت.الرسومات.نقطة)
1. كوم.أسبوس.كلمات.ThumbnailGeneratingOptions:
   1. الروبوت.الرسومات.نقطة getThumbnailSize ()
   1. setThumbnailSize (الروبوت.الرسومات.نقطة)

## Aspose.Words ل Android عبر Java متطلبات إضافية

من أجل استخدام ميزة الترخيص المقننة وتحميل المستندات أو الصور بواسطة بروتوكولات هتب / فتب، يجب على المستخدمين إضافة الإذن التالي لتطبيقاتهم
`<uses-permission android:name="android.permission.INTERNET" />`

## أمثلة عامة API

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
