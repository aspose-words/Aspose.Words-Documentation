---
title: Android через Java Различия
second_title: Aspose.Words
articleTitle: Aspose.Words для Android через Java Ограничения и API различия
linktitle: Aspose.Words для Android через Java Ограничения и API различия
description: "Aspose.Words для Android с помощью Java функций и API отличий по сравнению с обычной версией Aspose.Words для Java."
type: docs
weight: 50
url: /ru/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## Ограничения Aspose.Words для Android через Java API по сравнению с Aspose.Words для Java API

1. *Document.print *методы недоступны.
1. Сохранение в форматах **TIFF** и **BMP** не поддерживается, хотя *SaveFormat.TIFF* и *SaveFormat.BMP* доступны в общедоступном виде Aspose.Words для Android через Java API, но при использовании этих форматов сохранения выводится значение *UnsupportedOperationException*.
1. Чтение изображений **TIFF** не поддерживается.
1. Подписание документов **ODT** пока не поддерживается.
1. Штрих-коды не поддерживаются.
1. Градиенты вдоль кривой не поддерживаются
1. Печать не поддерживается

## Общедоступные API различия

- android.graphics.Вместо java.awt.image используется растровое изображение.BufferedImage;
- android.graphics.Вместо java.awt.image используется Canvas.Graphics2D;
- android.graphics.Вместо java.awt.geom используется RectF.Rectangle2D.Float;
- android.graphics.Вместо java.awt.geom используется PointF.Point2D.Float;
- android.graphics.Вместо java.awt.Rectangle используется прямоугольник.;
- android.graphics.Вместо java.awt.Point используется Point.

Смотрите следующие общедоступные методы API:

1. com.aspose.words.DocumentBuilder:
   1. insertImage(Растровое изображение)
   1. insertImage(Растровое изображение, двойное, double)
   1. insertImage(растровых, типа int, двойной, int, двойное, двойные, двойного, инт)
   1. insertOleImage(Растровое изображение)
   1. insertOleObject(InputStream, Строка, логическое значение, растровое изображение)
   1. insertOleObject(Строка, логическое значение, логический объект, растровое изображение)
   1. insertOleObject(Строка, String, логическое значение, boolean, растровое изображение)
1. com.aspose.words.IBarcodeGenerator:
   1. Растровое изображение getBarcodeImage(BarcodeParameters)
   1. Растровое изображение getOldBarcodeImage(BarcodeParameters)
1. com.aspose.words.ImageData:
   1. setImage(Растровое изображение)
   1. Растровое изображение toImage()
1. com.aspose.words.ImageFieldMergingArgs:
   1. Растровое изображение getImage()
   1. setImage(Растровое изображение)
1. com.aspose.слова.Документ:
   1. android.graphics.PointF renderToScale(int, Canvas, float, float, плавающий) выдает исключение
   1. float renderToSize(int, Canvas, float, float, float, float) генерирует исключение
1. com.aspose.words.LayoutEnumerator:
   1. android.graphics.RectF getRectangle() выдает исключение
1. com.aspose.words.NodeRendererBase:
   1. android.графика.PointF getSizeInPoints()
   1. android.графика.RectF getOpaqueBoundsInPoints()
   1. общедоступный android.graphics.PointF getSizeInPixels(плавающий, float)
   1. android.графика.Прямоугольник getBoundsInPixels(плавающий, float)
   1. android.графика.Прямоугольник getOpaqueBoundsInPixels(плавающий, float)
   1. android.графика.PointF renderToScale(Холст, плавающий, плавающий, плавающий)
   1. плавать renderToSize(Холст, плавать, плавать, плавать, плавать)
1. com.aspose.words.PageInfo:
   1. android.графика.PointF getSizeInPixels(плавающий, float)
   1. android.графика.PointF getSizeInPoints()
1. com.aspose.words.ShapeBase:
   1. android.графика.RectF adjustWithEffects(android.графика.RectF)
   1. android.графика.RectF getBounds()
   1. android.графика.RectF getBoundsInPoints()
   1. android.графика.RectF getBoundsWithEffects()
   1. android.графика.Точка getCoordOrigin()
   1. android.графика.PointF getCoordSize()
   1. android.графика.PointF getSizeInPoints()
   1. android.графика.PointF localToParent(android.графика.Точка зрения)
   1. setBounds(android.графика.RectF)
   1. setCoordOrigin(android.графика.Точка)
   1. setCoordSize(android.графика.PointF)
1. com.aspose.words.ThumbnailGeneratingOptions:
   1. android.графика.PointF getThumbnailSize()
   1. setThumbnailSize(android.графика.PointF)

## Aspose.Words для Android через Java дополнительные требования

Чтобы использовать функцию дозированного лицензирования и загружать документы или изображения по протоколам http/ftp, пользователи должны добавить в свои приложения следующие разрешения
*&lt;uses-permission android:name="android.permission.INTERNET" /&gt;*

## Общедоступные API Примеры

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
