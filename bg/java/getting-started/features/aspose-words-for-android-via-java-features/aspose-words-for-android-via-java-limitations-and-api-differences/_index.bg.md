---
title: Android през Java Различия
second_title: Aspose.Words
articleTitle: Aspose.Words вместо Android през Java Ограничения и API Различия
linktitle: Aspose.Words вместо Android през Java Ограничения и API Различия
description: "Aspose.Words вместо Android през Java характеристики и API разлики в сравнение с редовните Aspose.Words вместо Java версия."
type: docs
weight: 50
url: /bg/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## Ограничения на Aspose.Words вместо Android през Java API в сравнение с Aspose.Words вместо Java API

1. *Документ.печат * методи не са налични.
1. Запис **TIFF** както и **BMP** Форматите обаче не се поддържат. *SaveFormat.TIFF* както и *SaveFormat.BMP* са публично достъпни Aspose.Words вместо Android през Java API, но *UnsupportedOperationException* е хвърлен, когато се използват тези формати за запис.
1. Четене **TIFF** изображенията не се поддържат.
1. Подпис **ODT** документите все още не са подкрепени.
1. Баркодите не се поддържат.
1. Градиентите по крива не се поддържат
1. Печатът не се поддържа

## Публично API различия

- андроид. Bitmap се използва вместо java.awt.image.Buffered Изображение;
- андроид. Canvas се използва вместо java.awt.image.Graphics2D;
- андроид. Рект F се използва вместо java.awt.geom.Rectangle2D. Плаване;
- Android.graphics.Point F се използва вместо java.awt.geom.Point2D. Плаване;
- андроид. Rect се използва вместо java.awt. Правоъгълен;
- андроид. Точката се използва вместо java.awt. Точка.

Виж следното Публично API методи:

1. com.pose.words.Документ строител:
   1. plugImage(Bitmap)
   1. inplaceImage(Bitmap, double, double)
   1. inplaceImage(Bitmap, int, double, int, double, double, double, int)
   1. inplaceOleImage(Bitmap)
   1. inplaceObject(InputStream, String, boolean, Bitmap)
   1. inplaceObject( String, boolean, boolean, Bitmap)
   1. inplaceObject( String, String, boolean, boolean, Bitmap)
1. com.aspose.words.IBARcodeGenerator:
   1. Bitmap getBarcode Изображение(BarcodeParameters)
   1. Bitmap getOldBarcode Изображение(BarcodeParameters)
1. com.pose.words.ImageData:
   1. setImage(Bitmap)
   1. Bitmap toImage()
1. com.aspose.words.ImageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage(Bitmap)
1. com.pose.words.Документ:
   1. Android.graphics.Point F demedToScale(int, Canvas, float, float, float) хвърля изключение
   1. float prodeToSize(int, Canvas, float, float, float) хвърля изключение
1. Предполагам, думи
   1. андроид.графика. RectF getRectangle() хвърля изключение
1. com.aspose.words.NodeRenderBase:
   1. Android.graphics.PointF getSizeInPoints()
   1. андроид.графика. RectF getOpaceBoundsInPoints()
   1. public Android.graphics.PointF getSizeInPixels(float, float)
   1. андроид.графика. Rect getBoundsInPixels ("плаване, плуване)
   1. андроид.графика. Rect get OpaqueBoundsInPixels(float, float)
   1. Android.graphics.Point F verdeToScale(Canvas, float, float, float)
   1. float proveToSize(Canvas, float, float, float, float)
1. com.aspose.words.PageInfo:
   1. Android.graphics.PointF getSizeInPixels(float, float)
   1. Android.graphics.PointF getSizeInPoints()
1. com.pose. words. Форма База:
   1. андроид.графика. RectF настройка WithEffects(android.graphics.RectF)
   1. андроид.графика. RectF getBounds()
   1. андроид.графика. RectF getBoundsInPoints()
   1. андроид.графика. RectF getBoundsWithEffects()
   1. андроид.графика. Точка getCoordOrigin()
   1. Android.graphics.PointF getCoordSize()
   1. Android.graphics.PointF getSizeInPoints()
   1. Android.graphics.PointF локален ToParent(android.graphics.PointF)
   1. setBounds(android.graphics.RectF)
   1. setCoordOrigin(android.graphics.Point)
   1. setCoordSize(android.graphics.PointF)
1. com.pose.words.ThumbnailGenerating Opitions:
   1. Android.graphics.PointF getThumbnailSize()
   1. setThumbnailSize(android.graphics.PointF)

## Aspose.Words вместо Android през Java допълнителни изисквания

С цел използване на измервана функция за лицензиране и зареждане на документи или изображения от потребители на протоколи http/ftp следва да се добави след разрешение към техните приложения
* <uses-permission Android:name="android.permission.INTERNET" />*

## Публично API Примери

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
