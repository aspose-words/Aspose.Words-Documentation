---
title: Android Зареєструватися Java Диференції
second_title: Aspose.Words
articleTitle: Aspose.Words для Android Зареєструватися Java Лімітації та API Диференції
linktitle: Aspose.Words для Android Зареєструватися Java Лімітації та API Диференції
description: "Aspose.Words для Android Зареєструватися Java особливості та API відмінності по відношенню до регулярних Aspose.Words для Java версія."
type: docs
weight: 50
url: /uk/java/aspose-words-for-android-via-java-limitations-and-api-differences/
---

## Обмеження Aspose.Words для Android Зареєструватися Java API до Aspose.Words для Java API

1,1 км *Document.print *методи не доступні.
1,1 км Економія в **TIFF** і **BMP** формати не підтримуються, хоча *SaveFormat.TIFF* і *SaveFormat.BMP* доступні в публічному режимі Aspose.Words для Android Зареєструватися Java API, але *UnsupportedOperationException* кидається при використанні файлів збереження.
1,1 км Читання **TIFF** зображення не підтримується.
1,1 км Зареєструватися **ODT** Документи не підтримуються.
1,1 км Не підтримується штрих-коди.
1,1 км Градієнти по криві не підтримуються
1,1 км Друк не підтримується

## Громадські API переваги

- андроїд.графічні. Bitmap використовується замість java.awt.image. Зображення;
- андроїд.графічні. Полотно використовується замість java.awt.image.Graphics 2D;
- андроїд.графічні. Рект F використовується замість java.awt.geom.Rectangle2D. Флоат;
- Веб-камера F використовується замість java.awt.geom.Point2D. Флоат;
- андроїд.графічні. Рект використовується замість java.awt. прямокутник;
- андроїд.графічні. Точка використовується замість java.awt. Точка.

Дивитися наступне публічне API методи:

1,1 км com.aspose.words.DocumentBuilder:
   1. ВставитиImage(Bitmap)
   1. ВставитиImage(Bitmap, подвійний, подвійний)
   1. ВставитиImage(Bitmap, int, подвійний, int, подвійний, подвійний, подвійний, подвійний, int)
   1. вставкаOleImage(Bitmap)
   1. вставкаOleObject(InputStream, String, boolean, Bitmap)
   1. вставкаOleObject(String, boolean, boolean, Bitmap)
   1. вставкаOleObject(String, String, boolean, boolean, Bitmap)
1,1 км com.aspose.words.IBarcodeGenerator:
   1. Біткарта getBarcode Зображення(BarcodeParameters)
   1. Bitmap отриматиСтарийБаркод Зображення(BarcodeParameters)
1,1 км com.aspose.words.ImageData:
   1. Налаштування (Bitmap)
   1. Bitmap toImage()
1,1 км com.aspose.words.ImageFieldMergingArgs:
   1. Бітематичний огляд ()
   1. Налаштування (Bitmap)
1. com.aspose.words.Document:
   1. андроїд.графічний.Пойнт F рендерToScale(int, Canvas, float, float, float)
   1. float рендерToSize(int, Canvas, float, float, float, float)
1,1 км com.aspose.words.LayoutEnumerator:
   1. андроїд.графічні. RectF getRectangle() кидає
1,1 км com.aspose.words.NodeRendererBase:
   1. андроїд.graphics.PointF getSizeInPoints()
   1. андроїд.графічні. RectF getOpaqueБундиInPoints()
   1. громадський андроїд.graphics.PointF getSizeInPixels(float, float)
   1. андроїд.графічні. Rect getBoundsInPixels(float, float)
   1. андроїд.графічні. Рект getOpaqueBoundsInPixels(float, float)
   1. андроїд.графічний.Пойнт F рендерToScale(Канава, float, float, float)
   1. float рендерToSize(Канава, плав., плав., плав., плав.)
1,1 км com.aspose.words.PageInfo:
   1. android.graphics.PointF getSizeInPixels(float, float)
   1. андроїд.graphics.PointF getSizeInPoints()
1. com.aspose.words. Шпилька База:
   1. андроїд.графічні. РектФ регулюванняЗЕффектами(андроїд.графічні.RectF)
   1. андроїд.графічні. RectF з'єднання()
   1. андроїд.графічні. RectF З'єднувачіInPoints()
   1. андроїд.графічні. RectF з'єднає()
   1. андроїд.графічні. Точка getCoordOrigin()
   1. андроїд.graphics.PointF getCoordSize()
   1. андроїд.graphics.PointF getSizeInPoints()
   1. Android.графічні дані.PointF LocalToParent(android.graphics.PointF)
   1. Комплекти(андроїд.графічні.RectF)
   1. setCoordOrigin(андроїд.графічні.Point)
   1. setCoordSize(android.graphics.PointF)
1,1 км com.aspose.words.ThumbnailGeneratingOptions:
   1. андроїд.графічний.PointF getThumbnailSize()
   1. setThumbnailSize(android.graphics.PointF)

## Aspose.Words для Android Зареєструватися Java додаткові вимоги

Для того, щоб використовувати додані ліцензії та документи для завантаження або зображення за допомогою протоколів http://ftp, необхідно додати наступний дозвіл на їх застосування
*<uses-permission для андроїд:name="android.permission.INTERNET" />*

## Громадські API Приклади

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
