---
title: Android tramite Java Differenze
second_title: Aspose.Words
articleTitle: Aspose.Words per Android tramite Java Limitazioni e API Differenze
linktitle: Aspose.Words per Android tramite Java Limitazioni e API Differenze
description: "Aspose.Words per Android tramite Java caratteristiche e API differenze rispetto alla versione normale Aspose.Words per Java."
type: docs
weight: 50
url: /it/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## Limitazioni di Aspose.Words per Android tramite Java API rispetto a Aspose.Words per Java API

1. i metodi *Document.print *non sono disponibili.
1. Il salvataggio nei formati **TIFF** e **BMP** non è supportato, sebbene *SaveFormat.TIFF* e *SaveFormat.BMP* siano disponibili in pubblico Aspose.Words per Android tramite Java API, ma *UnsupportedOperationException* viene generato quando vengono utilizzati questi formati di salvataggio.
1. La lettura di immagini **TIFF** non è supportata.
1. La firma di documenti **ODT** non è ancora supportata.
1. I codici a barre non sono supportati.
1. I gradienti lungo una curva non sono supportati
1. La stampa non è supportata

## Pubblico API differenze

- Android.grafica.Bitmap viene utilizzato al posto di java.awt.immagine.BufferedImage;
- Android.grafica.Canvas viene utilizzato al posto di java.awt.immagine.GRAFICA2D;
- Android.grafica.RectF è usato al posto di java.awt.geom.Rectangle2D. Float;
- Android.grafica.PointF è usato al posto di java.awt.geom.Point2D. Float;
- Android.grafica.Rect è usato al posto di java.awt.Rettangolo;
- Android.grafica.Punto viene utilizzato al posto di java.awt.Punto.

Vedere i seguenti metodi pubblici API:

1. com.aspose.parola.DocumentBuilder:
   1. insertImage (Bitmap)
   1. insertImage (Bitmap, doppio, doppio)
   1. insertImage (Bitmap, int, double, int, double, double, double, int)
   1. insertOleImage (Bitmap)
   1. insertOleObject (InputStream, Stringa, booleano, Bitmap)
   1. insertOleObject (Stringa, booleano, booleano, Bitmap)
   1. insertOleObject (Stringa, Stringa, booleano, booleano, Bitmap)
1. com.aspose.parola.IBarcodeGenerator:
   1. Bitmap getBarcodeImage(BarcodeParameters)
   1. Bitmap getOldBarcodeImage(BarcodeParameters)
1. com.aspose.parola.ImageData:
   1. setImage (Bitmap)
   1. Bitmap toImage()
1. com.aspose.parola.ImageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage (Bitmap)
1. com.aspose.parola.Documento:
   1. Android.grafica.PointF renderToScale(int, Canvas, float, float, float) genera eccezione
   1. float renderToSize(int, Canvas, float, float, float, float) genera eccezione
1. com.aspose.parola.LayoutEnumerator:
   1. Android.grafica.RectF getRectangle () genera eccezione
1. com.aspose.parola.NodeRendererBase:
   1. Android.grafica.PointF getSizeInPoints()
   1. Android.grafica.RectF getOpaqueBoundsInPoints()
   1. android pubblico.grafica.PointF getSizeInPixels (float, float)
   1. Android.grafica.Rect getBoundsInPixels (float, float)
   1. Android.grafica.Rect getOpaqueBoundsInPixels (float, float)
   1. Android.grafica.PointF renderToScale(Tela, galleggiante, galleggiante, galleggiante)
   1. float renderToSize(Tela, float, float, float, float)
1. com.aspose.parola.PageInfo:
   1. Android.grafica.PointF getSizeInPixels (float, float)
   1. Android.grafica.PointF getSizeInPoints()
1. com.aspose.parola.ShapeBase:
   1. Android.grafica.RectF adjustWithEffects (android.grafica.RectF)
   1. Android.grafica.RectF getBounds()
   1. Android.grafica.RectF getBoundsInPoints()
   1. Android.grafica.RectF getBoundsWithEffects()
   1. Android.grafica.Punto getCoordOrigin()
   1. Android.grafica.PointF getCoordSize()
   1. Android.grafica.PointF getSizeInPoints()
   1. Android.grafica.PointF localToParent (android.grafica.PointF)
   1. setBounds (android.grafica.RectF)
   1. setCoordOrigin (android.grafica.Punto)
   1. setCoordSize (android.grafica.PointF)
1. com.aspose.parola.ThumbnailGeneratingOptions:
   1. Android.grafica.PointF getThumbnailSize()
   1. setThumbnailSize (android.grafica.PointF)

## Aspose.Words per Android tramite Java requisiti aggiuntivi

Per utilizzare la funzione di licenza misurata e caricare documenti o immagini tramite protocolli http/ftp, gli utenti devono aggiungere le seguenti autorizzazioni alle loro applicazioni
`<uses-permission android:name="android.permission.INTERNET" />`

## Esempi pubblici API

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
