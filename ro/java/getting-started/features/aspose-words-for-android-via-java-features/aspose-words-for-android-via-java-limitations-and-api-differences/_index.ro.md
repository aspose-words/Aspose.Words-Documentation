---
title: Android prin Java diferențe
second_title: Aspose.Words
articleTitle: Aspose.Words pentru Android prin Java limitări și API diferențe
linktitle: Aspose.Words pentru Android prin Java limitări și API diferențe
description: "Aspose.Words pentru Android prin Java caracteristici și API diferențe în comparație cu regular Aspose.Words pentru Java versiune."
type: docs
weight: 50
url: /ro/java/aspose-words-for-android-via-java-limitations-and-api-differences/
---

## Limitări ale Aspose.Words pentru Android prin Java API comparativ cu Aspose.Words pentru Java API

1. *Document.print *metodele nu sunt disponibile.
1. Salvarea în formatele **TIFF** și **BMP** nu este acceptată, deși *SaveFormat.TIFF* și *SaveFormat.BMP* sunt disponibile în public Aspose.Words pentru Android prin Java API, dar *UnsupportedOperationException* este aruncat atunci când sunt utilizate aceste formate de salvare.
1. Citirea imaginilor **TIFF** nu este acceptată.
1. Semnarea documentelor **ODT** nu este încă acceptată.
1. Codurile de bare nu sunt acceptate.
1. Gradienții de-a lungul unei curbe nu sunt acceptați
1. Imprimarea nu este acceptată

## Public API diferențe

- android.grafică.Bitmap este folosit în loc de java.awt.imagine.BufferedImage;
- android.grafică.Canvas este folosit în loc de java.awt.imagine.Grafică2d;
- android.grafică.RectF este folosit în loc de java.awt.geom.Dreptunghi2d. Float;
- android.grafică.PointF este folosit în loc de java.awt.geom.Point2D. Float;
- android.grafică.Rect este folosit în loc de java.awt.Dreptunghi;
- android.grafică.Punctul este folosit în loc de java.awt.Punct.

A se vedea următoarele metode publice API:

1. com.aspose.cuvinte.DocumentBuilder:
   1. insertImage (Bitmap)
   1. insertImage (Bitmap, dublu, dublu)
   1. insertImage (Bitmap, int, dublu, int, dublu, dublu, dublu, int)
   1. insertOleImage (Bitmap)
   1. insertOleObject (InputStream, șir, boolean,Bitmap)
   1. insertOleObject (șir, boolean, boolean, Bitmap)
   1. insertOleObject (șir, șir, boolean, boolean,Bitmap)
1. com.aspose.cuvinte.IBarcodeGenerator:
   1. Bitmap getBarcodeImage (BarcodeParameters)
   1. Bitmap getOldBarcodeImage (BarcodeParameters)
1. com.aspose.cuvinte.ImageData:
   1. setImage (Bitmap)
   1. Bitmap toImage()
1. com.aspose.cuvinte.ImageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage (Bitmap)
1. com.aspose.cuvinte.Document:
   1. android.grafică.PointF renderToScale (Int, Canvas, float, float, float) aruncă excepție
   1. float renderToSize (Int, panza, float, float, float, float) aruncă excepție
1. com.aspose.cuvinte.LayoutEnumerator:
   1. android.grafică.RectF getRectangle () aruncă excepție
1. com.aspose.cuvinte.NodeRendererBase:
   1. android.grafică.Punctf getSizeInPoints()
   1. android.grafică.RectF getOpaqueBoundsInPoints()
   1. android public.grafică.PointF getSizeInPixels (plutitor, plutitor)
   1. android.grafică.Rect getBoundsInPixels (plutitor, plutitor)
   1. android.grafică.Rect getOpaqueBoundsInPixels (plutitor, plutitor)
   1. android.grafică.PointF renderToScale (pânză, plutitor,plutitor, plutitor)
   1. float renderToSize (pânză, float, float, float, float)
1. com.aspose.cuvinte.PageInfo:
   1. android.grafică.PointF getSizeInPixels (plutitor, plutitor)
   1. android.grafică.Punctf getSizeInPoints()
1. com.aspose.cuvinte.ShapeBase:
   1. android.grafică.RectF adjustWithEffects (android.grafică.RectF)
   1. android.grafică.RectF getBounds()
   1. android.grafică.RectF getBoundsInPoints()
   1. android.grafică.RectF getBoundsWithEffects()
   1. android.grafică.Punctul getCoordOrigin()
   1. android.grafică.Punctf getCoordSize()
   1. android.grafică.Punctf getSizeInPoints()
   1. android.grafică.Punctf localToParent (android.grafică.PointF)
   1. setBounds (android.grafică.RectF)
   1. setCoordOrigin (android.grafică.Punct)
   1. setCoordSize (android.grafică.PointF)
1. com.aspose.cuvinte.ThumbnailGeneratingOptions:
   1. android.grafică.Punctf getThumbnailSize()
   1. setThumbnailSize (android.grafică.PointF)

## Aspose.Words pentru Android prin Java cerințe suplimentare

Pentru a utiliza funcția de licențiere măsurată și pentru a încărca documente sau imagini prin protocoale http / FTP, utilizatorii ar trebui să adauge următoarea permisiune aplicațiilor lor
`<uses-permission android:name="android.permission.INTERNET" >`

## Public API Exemple

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
