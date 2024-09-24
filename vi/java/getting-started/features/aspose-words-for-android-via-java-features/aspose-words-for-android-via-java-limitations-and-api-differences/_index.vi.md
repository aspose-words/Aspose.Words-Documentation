---
title: Android qua Java Sự khác biệt
second_title: Aspose.Words
articleTitle: Aspose.Words cho Android qua Java Giới hạn và API Sự khác nhau
linktitle: Aspose.Words cho Android qua Java Giới hạn và API Sự khác nhau
description: "Aspose.Words cho Android thông qua Java tính năng và API khác biệt so với bản Aspose.Words thông thường cho Java phiên bản."
type: docs
weight: 50
url: /vi/java/aspose-words-for-android-via-java-limitations-and-api-differences/
---

## Những hạn chế của Aspose.Words đối với Android qua Java API so với Aspose.Words đối với Java API

1. *Document.print * các phương thức không có sẵn.
1. Tiết kiệm ở **TIFF** và **BMP** định dạng không được hỗ trợ, mặc dù *SaveFormat.TIFF* và *SaveFormat.BMP* có sẵn trong công khai Aspose.Words cho Android thông qua Java API, nhưng *UnsupportedOperationException* được ném ra khi các định dạng lưu này được sử dụng.
1. Đọc **TIFF** hình ảnh không được hỗ trợ.
1. Ký **ODT** tài liệu chưa được hỗ trợ.
1. Mã vạch không được hỗ trợ.
1. Màu sắc dốc theo đường cong không được hỗ trợ
1. In ấn không được hỗ trợ

## Các khác biệt công cộng API

- android.graphics.Bitmap được sử dụng thay vì java.awt.image.BufferedImage;
- android.graphics.Canvas được dùng thay cho java.awt.image.Graphics2D
- android.graphics.RectF được dùng thay vì java.awt.geom.Rectangle2D.Float
- android.graphics.PointF được dùng thay vì java.awt.geom.Point2D.Float;
- android.graphics.Rect được dùng thay vì java.awt.Rectangle;
- android.graphics.Point được dùng thay vì java.awt.Point.

Xem các phương pháp công khai sau đây API:

1. com.aspose.words.DocumentBuilder:
   1. chènHìnhẢnh(Bitmap)
   1. chènHìnhẢnh(Bitmap, số-đôi, số-đôi)
   1. insertImage(Hình ảnh, int, double, int, double, double, double, int)
   1. chènOleImage(Bitmap)
   1. insertOleObject (InputStream, String, boolean, Bitmap)
   1. insertOleObject(String, boolean, boolean, Bitmap)
   1. insertOleObject(String, String, boolean, boolean, Bitmap)
1. com.aspose.words.IBarcodeGenerator:
   1. GetBarcodeImage(BarcodeParameters)
   1. Bitmap getOldBarcodeImage (BarcodeParameters)
1. com.aspose.words.ImageData:
   1. setImage(Hình ảnh)
   1. BitmapToImage()
1. com.aspose.words.ImageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage (Bitmap)
1. com.aspose.words.Document:
   1. android.graphics.PointF renderToScale(int, Canvas, float, float, float) throw Exception
   1. float renderToSize(int, Canvas, float, float, float, float) throws Exception
1. com.aspose.words.LayoutEnumerator:
   1. AndroidGraphicsRectF getRectangle() throws Exception
1. com.aspose.words.NodeRendererBase:
   1. android.graphics.PointF getSizeInPoints()
   1. android.graphics.RectF getOpaqueBoundsInPoints()
   1. công khai android.graphics.PointF getSizeInPixels(float,float)
   1. android.graphics.Rect getBoundsInPixels(float, float)
   1. android.graphics.Rect getOpaqueBoundsInPixels(float, float)
   1. android.graphics.PointF renderToScale(Canvas, float, float, float)
   1. float renderToSize(Canvas, float, float, float, float)
1. com.aspose.words.PageInfo:
   1. android.graphics.PointF getSizeInPixels(float, float)
   1. android.graphics.PointF getSizeInPoints()
1. com.aspose.words.ShapeBase:
   1. android.graphics.RectF adjustWithEffects(android.graphics.RectF)
   1. android.graphics.RectF getBounds()
   1. android.graphics.RectF getBoundsInPoints()
   1. android.graphics.RectF getBoundsWithEffects()
   1. android.graphics.Point getCoordOrigin()
   1. android.graphics.PointF getCoordSize()
   1. android.graphics.PointF getSizeInPoints()
   1. android.graphics.PointF localToParent(android.graphics.PointF)
   1. setBounds(android.graphics.RectF)
   1. setCoordOrigin(android.graphics.point)
   1. setCoordSize(điểm F của android.graphics)
1. com.aspose.words.ThumbnailGeneratingOptions:
   1. android.graphics.PointF getThumbnailSize()
   1. setThumbnailSize(android.graphics.PointF)

## Aspose.Words cho Android thông qua Java yêu cầu bổ sung

Để sử dụng tính năng cấp phép có giới hạn và tải các tài liệu hoặc hình ảnh bằng các giao thức HTTP / FTP, người dùng nên thêm quyền sau vào ứng dụng của họ:


## Công khai API Ví dụ

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
