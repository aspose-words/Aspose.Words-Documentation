---
title: Android через Java Различия
second_title: Aspose.Words
articleTitle: Aspose.Words для Android через Java Ограничения и API Различия
linktitle: Aspose.Words для Android через Java Ограничения и API Различия
description: "Aspose.Words для Android через Java особенности и API Отличия от регулярных Aspose.Words для Java Версия."
type: docs
weight: 50
url: /ru/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## Ограничения Aspose.Words для Android через Java API по сравнению с Aspose.Words для Java API

1. *Document.print *методы отсутствуют.
1. Экономить в **TIFF** и **BMP** Форматы не поддерживаются, хотя *SaveFormat.TIFF* и *SaveFormat.BMP* Доступны публично Aspose.Words для Android через Java API, но *UnsupportedOperationException* Это происходит, когда используются эти форматы сохранения.
1. читать **TIFF** Изображения не поддерживаются.
1. подпись **ODT** Документы пока не поддерживаются.
1. Штрих-коды не поддерживаются.
1. Градиенты вдоль кривой не поддерживаются
1. Печать не поддерживается

## Публикация API различия

- Андроид.графика. Bitmap используется вместо java.awt.image.Buffered Изображение
- Андроид.графика. Канвас используется вместо java.awt.image.Graphics2D;
- Андроид.графика. прямо F используется вместо java.awt.geom.Rectangle2D. плавать;
- android.graphics.Point Используется вместо java.awt.geom.Point2D. плавать;
- Андроид.графика. Используется вместо java.awt. прямоугольник;
- Андроид.графика. Используется вместо java.awt. Точка.

См. следующую Публику API методы:

1. com.aspose.words.DocumentBuilder:
   1. insertImage(Bitmap)
   1. вставить Изображение (Bitmap, double, double)
   1. insertImage(Bitmap, int, double, int, double, double, int)
   1. вставитьOleImage(Bitmap)
   1. вставитьOleObject(InputStream, String, boolean, Bitmap)
   1. вставитьOleObject(струнный, булевый, булевый, Bitmap)
   1. вставитьOleObject(String, String, boolean, boolean, Bitmap)
1. com.aspose.words.IBarcodeGenerator:
   1.Bitmap getBarcode Изображение (BarcodeParameters)
   1 Bitmap getOldBarcode Изображение (BarcodeParameters)
1. com.aspose.words.ImageData:
   1. setImage(Bitmap)
   1. Bitmap toImage()
1. com.aspose.words.ImageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage(Bitmap)
1. com.aspose.words.Document:
   1. android.graphics.Point F renderToScale (int, Canvas, float, float, float)
   1. float renderToSize (int, Canvas, float, float, float, float, float)
1. com.aspose.words.LayoutEnumerator:
   1. android.graphics. RectF getRectangle() бросок Исключение
1. com.aspose.words.NodeRendererBase:
   1. android.graphics.PointF getSizeInPoints()
   1. android.graphics. RectF getOpaqueBoundsInPoints()
   1. public android.graphics.PointF getSizeInPixels (плавать, плавать)
   1. android.graphics. Rect getBoundsInPixels (плавать, плавать)
   1. android.graphics. Rect getOpaqueBoundsInPixels (плавать, плавать)
   1. android.graphics.Point F renderToScale (Canvas, float, float, float)
   1. float renderToSize (Канава, поплавок, поплавок, поплавок, поплавок)
1. com.aspose.words.PageInfo:
   1. android.graphics.PointF getSizeInPixels (плавать, плавать)
   1. android.graphics.PointF getSizeInPoints()
1.com.aspose.words. форма База:
   1. android.graphics. RectF adjustWithEffects (android.graphics.RectF)
   1. android.graphics. RectF GetBounds()
   1. android.graphics. RectF getBoundsInPoints()
   1. android.graphics. RectF getBoundsWithEffects()
   1. android.graphics. Point getCoordOrigin()
   1. android.graphics.PointF getCoordSize()
   1. android.graphics.PointF getSizeInPoints()
   1.android.graphics.PointF localToParent(android.graphics.PointF)
   1. setBounds (android.graphics.RectF)
   1. setCoordOrigin (android.graphics.Point)
   1. setCoordSize (android.graphics.PointF)
1. com.aspose.words.ThumbnailGeneratingOptions:
   1. android.graphics.PointF getThumbnailSize()
   1. setThumbnailSize(android.graphics.PointF)

## Aspose.Words для Android через Java Дополнительные требования

Чтобы использовать функцию дозированного лицензирования и загружать документы или изображения по протоколам http/ftp, пользователи должны добавить следующее разрешение в свои приложения
*<uses-permission android:name="android.permission.INTERNET" />*

## Публикация API Примеры

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
