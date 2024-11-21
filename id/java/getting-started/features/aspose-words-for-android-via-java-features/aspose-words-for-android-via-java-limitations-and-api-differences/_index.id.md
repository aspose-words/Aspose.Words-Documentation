---
title: Android Sitemap Java Sitemap
second_title: Aspose.Words
articleTitle: Aspose.Words Sitemap Android Sitemap Java Login API Sitemap
linktitle: Aspose.Words Sitemap Android Sitemap Java Login API Sitemap
description: "Aspose.Words Sitemap Android Sitemap Java fitur dan API perbedaan membandingkan secara teratur Aspose.Words Sitemap Java Sitemap"
type: docs
weight: 50
url: /id/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## Batasan Aspose.Words Sitemap Android Sitemap Java API Sitemap Aspose.Words Sitemap Java API

Sitemap *Document.print *methods tidak tersedia.
Sitemap Hemat **TIFF** Login **BMP** format tidak didukung, meskipun *SaveFormat.TIFF* Login *SaveFormat.BMP* tersedia di publik Aspose.Words Sitemap Android Sitemap Java API, Login *UnsupportedOperationException* dibuang ketika format menyimpan ini digunakan.
Sitemap Login **TIFF** gambar tidak didukung.
Sitemap Login **ODT** dokumen belum didukung.
Sitemap Barcode tidak didukung.
Sitemap Gradients sepanjang kurva tidak didukung
Sitemap Pencetakan tidak didukung

## Login API Sitemap

- android.grafis. Bitmap digunakan bukan java.awt.image.Buffered Gambar;
- android.grafis. Kanvas digunakan bukan java.awt.image.Graphics2D;
- android.grafis. Login F digunakan bukan java.awt.geom.Rectangle2D. Login
- android.grafis.Point F digunakan bukan java.awt.geom.Point2D. Login
- android.grafis. Rect digunakan bukan java.awt. Login
- android.grafis. Titik digunakan bukan java.awt. Login

Lihat Publik berikut API metode:

Sitemap Sitemap
   1. masukkanImage(Bitmap)
   1. masukkanImage (Bitmap, ganda, ganda)
   1. masukkanImage (Bitmap, int, ganda, int, ganda, ganda, int)
   1. insertOleImage(Bitmap)
   1. masukkanOleObject(InputStream, String, boolean, Bitmap)
   1. masukkanOleObject (String, boolean, boolean, Bitmap)
   1. insertOleObject(String, String, boolean, boolean, Bitmap)
Sitemap com.aspose.words.IBarcodeGenerator:
   1. Bitmap getBarcode Gambar (BarcodeParameters)
   1. Bitmap mendapatkanOldBarcode Gambar (BarcodeParameters)
Sitemap Sitemap
   1. setImage(Bitmap)
   1. Bitmap toImage()
Sitemap Sitemap
   1. Bitmap getImage()
   1. setImage(Bitmap)
1. com.aspose.words.Document:
   1. android.grafis.Point F renderToScale(int, Canvas, float, float, float) melempar Kecuali
   1. float renderToSize (int, Kanvas, mengapung, mengapung, mengapung, mengapung) melempar Kecuali
Sitemap Sitemap
   1. android.grafik. RectF getRectangle() melempar Kecualian
Sitemap com.aspose.words.NodeRendererBase
   1. android.grafis.PointF mendapatkanSizeInPoints()
   1. android.grafik. RectF getOpaqueBoundsInPoints()
   1. publik android.grafis.PointF mendapatkanSizeInPixels(float, float)
   1. android.grafik. Rect getBoundsInPixel
   1. android.grafik. Rect getOpaqueBoundsInPixel(float, float)
   1. android.grafis.Point F renderToScale(Canvas, mengapung, mengapung, mengapung)
   1. float renderToSize(Canvas, mengapung, mengapung, mengapung, mengapung)
Sitemap com.aspose.words.PageInfo:
   1. android.grafis.PointF mendapatkanSizeInPixels(float, float)
   1. android.grafis.PointF mendapatkanSizeInPoints()
1. com.aspose.words. Login Login
   1. android.grafik. RectF menyesuaikanWithEffects(android.graphics.RectF)
   1. android.grafik. RectF getBounds()
   1. android.grafik. RectF getBoundsInPoints()
   1. android.grafik. RectF getBoundsWithEffects()
   1. android.grafik. Login
   1. android.grafis.PointF getCoordSize()
   1. android.grafis.PointF mendapatkanSizeInPoints()
   1. android.grafis.PointF lokalToParent(android.graphics.PointF)
   1. setBounds(android.graphics.RectF)
   1. setCoordOrigin(android.graphics.Point)
   1. setCoordSize(android.graphics.PointF)
Sitemap com.aspose.words.ThumbnailGeneratingOptions:
   1. android.grafis.PointF getThumbnailSize()
   1. setThumbnailSize(android.graphics.PointF)

## Aspose.Words Sitemap Android Sitemap Java persyaratan tambahan

Untuk menggunakan fitur lisensi meteran dan dokumen beban atau gambar dengan pengguna protokol http/ftp harus menambahkan izin berikut untuk aplikasi mereka
* <uses-permission android: name="android.permission.INTERNET" /> *

## Login API Sitemap

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
