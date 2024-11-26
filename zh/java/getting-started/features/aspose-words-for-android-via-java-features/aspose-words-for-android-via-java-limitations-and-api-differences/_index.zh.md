---
title: Android通过Java差异
second_title: Aspose.Words
articleTitle: Aspose.Words对于Android通过Java限制和API差异
linktitle: Aspose.Words对于Android通过Java限制和API差异
description: "Android 的 Aspose.Words 具有 Java 功能，并且与 Java 版的常规 Aspose.Words 相比具有 API 差异。"
type: docs
weight: 50
url: /zh/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## Aspose.Words对于Android通过JavaAPI的限制与Aspose.Words对于JavaAPI相比

1. *Document.print *方法不可用。
1. 不支持以**TIFF**和**BMP**格式保存，尽管*SaveFormat.TIFF*和*SaveFormat.BMP*通过JavaAPI在Android的公共Aspose.Words中可用，但使用这些保存格式时会抛出*UnsupportedOperationException*。
1. 不支持读取**TIFF**图像。
1. 尚不支持对**ODT**文档进行签名。
1. 不支持条形码。
1. 不支持沿曲线的渐变
1. 不支持打印

## 公共API差异

- 机器人。图形。使用Bitmap代替java。啊图像。BufferedImage;
- 机器人。图形。使用Canvas而不是java。啊图像。图形2d;
- 机器人。图形。使用RectF而不是java。啊吉姆。Rectangle2D.浮子;
- 机器人。图形。使用PointF代替java。啊吉姆。Point2D.浮点数;
- 机器人。图形。使用Rect代替java。啊矩形;
- 机器人。图形。点来代替java。啊点。

请参阅以下PublicAPI方法:

1. com。阿斯波斯。话。DocumentBuilder:
   1. insertImage(位图)
   1. insertImage（位图，双，双）
   1. insertImage（Bitmap，int，double，int，double，double，double，int）
   1. insertOleImage(位图)
   1. insertOleObject(InputStream,字符串,布尔值,位图)
   1. insertOleObject（字符串，布尔值，布尔值，位图）
   1. insertOleObject（字符串，字符串，布尔值，布尔值，位图）
1. com。阿斯波斯。话。IBarcodeGenerator:
   1. 位图getBarcodeImage(BarcodeParameters)
   1. 位图getOldBarcodeImage(BarcodeParameters)
1. com。阿斯波斯。话。ImageData:
   1. setImage(位图)
   1. 位图toImage()
1. com。阿斯波斯。话。ImageFieldMergingArgs:
   1. 位图getImage()
   1. setImage(位图)
1. com。阿斯波斯。话。文件:
   1. 机器人。图形。PointFrenderToScale(int,Canvas,float,float,float)throws Exception
   1. floatrenderToSize(int,Canvas,float,float,float,float)throws Exception
1. com。阿斯波斯。话。LayoutEnumerator:
   1. 机器人。图形。RectFgetRectangle()抛出异常
1. com。阿斯波斯。话。NodeRendererBase:
   1. 机器人。图形。点getSizeInPoints()
   1. 机器人。图形。直肠getOpaqueBoundsInPoints()
   1. 公共android。图形。PointFgetSizeInPixels（浮点数，浮点数）
   1. 机器人。图形。RectgetBoundsInPixels（浮点数，浮点数）
   1. 机器人。图形。RectgetOpaqueBoundsInPixels（浮点数，浮点数）
   1. 机器人。图形。PointFrenderToScale（Canvas，float，float，float）
   1. floatrenderToSize（Canvas，float，float，float，float）
1. com。阿斯波斯。话。PageInfo:
   1. 机器人。图形。PointFgetSizeInPixels（浮点数，浮点数）
   1. 机器人。图形。点getSizeInPoints()
1. com。阿斯波斯。话。ShapeBase:
   1. 机器人。图形。RectFadjustWithEffects（android。图形。RectF)
   1. 机器人。图形。直肠getBounds()
   1. 机器人。图形。直肠getBoundsInPoints()
   1. 机器人。图形。直肠getBoundsWithEffects()
   1. 机器人。图形。点getCoordOrigin()
   1. 机器人。图形。点getCoordSize()
   1. 机器人。图形。点getSizeInPoints()
   1. 机器人。图形。PointFlocalToParent（android。图形。PointF）
   1. setBounds（android。图形。RectF)
   1. setCoordOrigin（android。图形。点）
   1. setCoordSize（android。图形。PointF）
1. com。阿斯波斯。话。ThumbnailGeneratingOptions:
   1. 机器人。图形。点getThumbnailSize()
   1. setThumbnailSize（android。图形。PointF）

## Aspose.Words对于Android通过Java额外需求

为了使用计量许可功能并通过http/ftp协议加载文档或图像，用户应该向其应用程序添加以下权限
`<uses-permission android:name="android.permission.INTERNET" />`

## 公共API示例

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
