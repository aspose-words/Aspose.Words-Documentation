---
title: Android melalui Perbedaan Java
second_title: Aspose.Words
articleTitle: Aspose.Words untuk Android melalui Batasan Java dan Perbedaan API
linktitle: Aspose.Words untuk Android melalui Batasan Java dan Perbedaan API
description: "Aspose.Words untuk Android melalui Java fitur dan API perbedaan dibandingkan dengan Aspose.Words biasa untuk versi Java."
type: docs
weight: 50
url: /id/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## Batasan Aspose.Words untuk Android melalui Java API dibandingkan dengan Aspose.Words untuk Java API

1. metode *Document.print *tidak tersedia.
1. Menyimpan dalam format **TIFF** dan **BMP** tidak didukung, meskipun *SaveFormat.TIFF* dan *SaveFormat.BMP* tersedia di Aspose.Words publik untuk Android melalui Java API, tetapi *UnsupportedOperationException* ditampilkan saat format penyimpanan ini digunakan.
1. Membaca gambar **TIFF** tidak didukung.
1. Menandatangani dokumen **ODT** belum didukung.
1. Barcode tidak didukung.
1. Gradien di sepanjang kurva tidak didukung
1. Pencetakan tidak didukung

## Publik API perbedaan

- android.grafik.Bitmap digunakan sebagai pengganti java.awt.gambar.BufferedImage;
- android.grafik.Canvas digunakan sebagai pengganti java.awt.gambar.GRAFIK2D;
- android.grafik.RectF digunakan sebagai pengganti java.awt.geom.Persegi panjang2d. Float;
- android.grafik.PointF digunakan sebagai pengganti java.awt.geom.Point2D. Float;
- android.grafik.Rect digunakan sebagai pengganti java.awt.Persegi panjang;
- android.grafik.Titik digunakan sebagai pengganti java.awt.Poin.

Lihat metode API Publik berikut:

1. com.aspose.kata-kata.DocumentBuilder:
   1. insertImage (Bitmap)
   1. insertImage (Bitmap, dobel, dobel)
   1. insertImage (Bitmap, int, dobel, int, dobel, dobel, dobel, int)
   1. insertOleImage (Bitmap)
   1. insertOleObject(InputStream, String, boolean, Bitmap)
   1. insertOleObject (String, boolean, boolean, Bitmap)
   1. insertOleObject(String, String, boolean, boolean, Bitmap)
1. com.aspose.kata-kata.IBarcodeGenerator:
   1. Bitmap getBarcodeImage(BarcodeParameters)
   1. Bitmap getOldBarcodeImage(BarcodeParameters)
1. com.aspose.kata-kata.ImageData:
   1. setImage (Bitmap)
   1. Bitmap toImage()
1. com.aspose.kata-kata.ImageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage (Bitmap)
1. com.aspose.kata-kata.Dokumen:
   1. android.grafik.PointF renderToScale (int, Canvas, float, float, float) melempar Pengecualian
   1. float renderToSize (int, Canvas, float, float, float, float) melempar Pengecualian
1. com.aspose.kata-kata.LayoutEnumerator:
   1. android.grafik.RectF getRectangle () melempar Pengecualian
1. com.aspose.kata-kata.NodeRendererBase:
   1. android.grafik.PointF getSizeInPoints()
   1. android.grafik.RectF getOpaqueBoundsInPoints()
   1. android publik.grafik.PointF getSizeInPixels (mengapung, mengapung)
   1. android.grafik.Rect getBoundsInPixels(mengapung, mengapung)
   1. android.grafik.Rect getOpaqueBoundsInPixels(mengapung, mengapung)
   1. android.grafik.PointF renderToScale (Kanvas, mengapung, mengapung, mengapung)
   1. mengapung renderToSize (Kanvas, mengapung, mengapung, mengapung, mengapung)
1. com.aspose.kata-kata.PageInfo:
   1. android.grafik.PointF getSizeInPixels (mengapung, mengapung)
   1. android.grafik.PointF getSizeInPoints()
1. com.aspose.kata-kata.ShapeBase:
   1. android.grafik.RectF adjustWithEffects (android.grafik.RectF)
   1. android.grafik.RectF getBounds()
   1. android.grafik.RectF getBoundsInPoints()
   1. android.grafik.RectF getBoundsWithEffects()
   1. android.grafik.Titik getCoordOrigin()
   1. android.grafik.PointF getCoordSize()
   1. android.grafik.PointF getSizeInPoints()
   1. android.grafik.PointF localToParent (android.grafik.PointF)
   1. setBounds (android.grafik.RectF)
   1. setCoordOrigin (android.grafik.Titik)
   1. setCoordSize (android.grafik.PointF)
1. com.aspose.kata-kata.ThumbnailGeneratingOptions:
   1. android.grafik.PointF getThumbnailSize()
   1. setThumbnailSize (android.grafik.PointF)

## Aspose.Words untuk Android melalui Java persyaratan tambahan

Untuk menggunakan fitur lisensi terukur dan memuat dokumen atau gambar dengan protokol http / ftp, pengguna harus menambahkan izin berikut ke aplikasi mereka
`<uses-permission android:name="android.permission.INTERNET" />`

## Contoh API Publik

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
