---
title: Android באמצעות Java הבדלים
second_title: Aspose.Words
articleTitle: Aspose.Words עבור Android באמצעות Java הגבלות ו API הבדלים
linktitle: Aspose.Words עבור Android באמצעות Java הגבלות ו API הבדלים
description: "Aspose.Words עבור Android באמצעות Java תכונות ו API הבדלים בין שגרה Aspose.Words עבור Java גרסה."
type: docs
weight: 50
url: /he/java/aspose-words-for-android-via-java-limitations-and-api-differences/
---

## מגבלות Aspose.Words עבור Android באמצעות Java API בהשוואה Aspose.Words עבור Java API

1.1 1. *Document.print *methods אינם זמינים.
1.1 1. חיסכון **TIFF** ו **BMP** פורמטים לא נתמכת, למרות *SaveFormat.TIFF* ו *SaveFormat.BMP* זמין לציבור Aspose.Words עבור Android באמצעות Java API, אבל *UnsupportedOperationException* הוא נזרק כאשר פורמטים אלה משמשים.
1.1 1. קריאה לקריאה **TIFF** תמונות לא נתמכות.
1.1 1. Signing **ODT** המסמכים עדיין לא תומכים.
1.1 1. ברקודים אינם תומכים.
1.1 1. גדלים לאורך עקומה אינם נתמכת
1.1 1. הדפסה אינה נתמך

## ציבור API הבדלים

- אנדרואיד Bitmap משמש במקום Java.awt.image.Buffered צילום:
- אנדרואיד Canvas משמש במקום Java.awt.Graphics2D;
- אנדרואיד Rect F משמש במקום Java.awt.geom.Rectangle2D. Float;
- אנדרואיד.graphics.Point F משמש במקום Java.awt.geom.Point2D. Float;
- אנדרואיד השימוש נעשה במקום ג'אווה. ctangle;
- אנדרואיד הנקודה משמשת במקום Java.awt. נקודה.

ראו את הציבור הבא API שיטות:

1.1 1. המונחים: documentBuilder:
   תמונה (Bitmap)
   תמונה (Bitmap, כפול, כפול)
   1.להוסיף תמונה (Bitmap, Int, כפול, כפול, כפול, כפול, כפול, לאט)
   תמונה (Bitmap)
   המונחים: inputStream, String, boolean, Bitmap
   1.הוספת OleObject (String, boolean, boolean, Bitmap)
   1.הוספת OleObject (String, String, boolean, boolean, Bitmap)
1.1 1. תגית:words.I BarcodeGenerator:
   1 bitmap Get Barcode תמונה (BarcodeParameters)
   Bitmap Get Old Barcode תמונה (BarcodeParameters)
1.1 1. המונחים: image data:
   תמונה ראשונה (Bitmap)
   1 bitmap to Image()
1.1 1. תגית: ImageFieldMergingArgs:
   1 bitmap מקבל תמונה()
   תמונה ראשונה (Bitmap)
המונחים: document:
   1. Android.graphics.Point F להפוך ToScale (int, Canvas, צף, צף, צף) זורק את המפרש
   1 צף להפוך טוסטז (int, Canvas, צף, צף, צף, צף) זורק חריגים
1.1 1. המונחים: LayoutEnumerator:
   1. אנדרואיד RectF GetRectangle() זורק חצאית
1.1 1. מילים לשיר NodeRendererBase:
   1. Android.graphics.PointF GetSizeInPoints
   1. אנדרואיד RectF GetOpaqueBounds InPoints
   1. אנדרואיד ציבורי.graphics.PointF GetSizein Pixel(float, צף)
   1. אנדרואיד Rect GetBounds In Pixel (float, צף)
   1. אנדרואיד Rect GetOpaqueBounds Inפיקסלים (float, צף)
   1. Android.graphics.Point F להפוך toScale (Canvas, צף, צף)
   1 צף להפוךToSize (Canvas, צף, צף, צף)
1.1 1. תגית:words.PageInfo:
   1. Android.graphics.PointF GetSizein Pixel(float, צף)
   1. Android.graphics.PointF GetSizeInPoints
1. נניח.מילים צורה בסיס:
   1. אנדרואיד RectF להסתגל עם Effects (android.graphics.RectF)
   1. אנדרואיד RectF GetBounds()
   1. אנדרואיד RectF GetBounds InPoints
   1. אנדרואיד RectF GetBounds withEffects
   1. אנדרואיד המונחים:
   1. Android.graphics.PointF GetCoordSize
   1. Android.graphics.PointF GetSizeInPoints
   1. Android.graphics.PointF Local ToParent (android.graphics.PointF)
   1. SetBounds (android.graphics.RectF)
   מקור מקורי (android.graphics.Point)
   המונחים:android.graphics.PointF
1.1 1. המונחים:
   1. Android.graphics.PointF GetThumbnailsize
   1. להגדירThumbnailsize (android.graphics.PointF)

## Aspose.Words עבור Android באמצעות Java דרישות נוספות

על מנת להשתמש בתכונה רישוי ממומנת וטעינה מסמכים או תמונות על ידי פרוטוקולי http/ftp יש להוסיף לאחר אישור ליישומים שלהם
*<uses-permission Android:name="android.permission

## ציבור API דוגמאות

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
