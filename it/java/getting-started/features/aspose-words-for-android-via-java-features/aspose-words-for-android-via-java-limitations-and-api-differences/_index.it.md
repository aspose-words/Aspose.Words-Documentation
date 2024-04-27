---
title: Android via Java Differenze
second_title: Aspose.Words
articleTitle: Aspose.Words per Android via Java Limitazioni e API Differenze
linktitle: Aspose.Words per Android via Java Limitazioni e API Differenze
description: "Aspose.Words per Android via Java caratteristiche e API differenze rispetto a regolari Aspose.Words per Java versione."
type: docs
weight: 50
url: /it/java/aspose-words-for-android-via-java-limitations-and-api-differences/
---

## Limitazioni di Aspose.Words per Android via Java API rispetto a Aspose.Words per Java API

1. *Document.print *i metalli non sono disponibili.
1. Risparmiare **TIFF** e **BMP** formati non sono supportati, anche se *SaveFormat.TIFF* e *SaveFormat.BMP* sono disponibili in pubblico Aspose.Words per Android via Java API, ma *UnsupportedOperationException* viene lanciato quando questi formati di salvataggio vengono utilizzati.
1. Lettura **TIFF** le immagini non sono supportate.
1. Firma **ODT** i documenti non sono ancora supportati.
1. I codici a barre non sono supportati.
1. I gradini lungo una curva non sono supportati
1. La stampa non è supportata

## Pubblico API differenze di differenze

- android.graphics. Bitmap è usato invece di java.awt.image.Buffered Immagine;
- android.graphics. La tela viene utilizzata invece di java.awt.image.Graphics2D;
- android.graphics. Rec. F è usato invece di java.awt.geom.Rectangle2D. Float;
- android.graphics.Point F viene utilizzato invece di java.awt.geom.Point2D. Float;
- android.graphics. Rect è usato invece di java.awt. Rettangolo;
- android.graphics. Il punto è usato invece di java.awt. Punto.

Vedi il seguente Pubblico API metodi:

1. com.aspose.words.DocumentBuilder:
   1. insertImage (Bitmap)
   1. insertImage (Bitmap, doppia, doppia)
   1. insertImage(Bitmap, int, double, int, double, double, double, double, int)
   1. inserireOleImage (Bitmap)
   1. inserireOleObject(InputStream, String, boolean, Bitmap)
   1. insertOleObject (String, boolean, boolean, bitmap)
   1. insertOleObject(String, String, boolean, boolean, bitmap)
1. com.aspose.words.IBarcodeGenerator:
   1. Bitmap getBarcode Immagine (Parametri del codice a barre)
   1. Bitmap getOldBarcode Immagine (Parametri del codice a barre)
1. com.aspose.words.ImageData:
   1. setImage(Bitmap)
   1. Bitmap toImage()
1. com.aspose.words.ImageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage(Bitmap)
1. com.aspose.words.Document:
   1. android.graphics.Point F renderToScale(int, Canvas, galleggiante, galleggiante, galleggiante) getta eccezione
   1. float renderToSize(int, Canvas, galleggiante, galleggiante, galleggiante, galleggiante, galleggiante) getta eccezione
1. com.aspose.words.LayoutEnumerator:
   1. android.graphics. RectF getRectangle() lancia Eccezione
1. com.aspose.words.NodeRendererBase:
   1. android.graphics.PointF ottieneSizeInPoints()
   1. android.graphics. RectF getOpaqueBoundsInPoints()
   1. public android.graphics.PointF ottieneSizeInPixels(float, float)
   1. android.graphics. Rect getBoundsInPixels(float, float)
   1. android.graphics. Rect getOpaqueBoundsInPixels(float, float)
   1. android.graphics.Point F renderToScale(Canva, galleggiante, galleggiante, galleggiante)
   1. float renderToSize(Canvas, galleggiante, galleggiante, galleggiante, galleggiante, galleggiante)
1. com.aspose.words.PageInfo:
   1. android.graphics.PointF ottieneSizeInPixels(float, float)
   1. android.graphics.PointF ottieneSizeInPoints()
1. com.aspose.parole. Forma Base:
   1. android.graphics. RectF regolareConfezioni(android.graphics.RectF)
   1. android.graphics. Ricezione()
   1. android.graphics. RectF getBoundsInPoints()
   1. android.graphics. RectF getBoundsWithEffects()
   1. android.graphics. Punto di ottenereCoordOrigin()
   1. android.graphics.PointF getCoordSize()
   1. android.graphics.PointF ottieneSizeInPoints()
   1. android.graphics.PointF localToParent(android.graphics.PointF)
   1. setBounds(android.graphics.RectF)
   1. setCoordOrigin(android.graphics.Point)
   1. setCoordSize(android.graphics.PointF)
1. com.aspose.words.ThumbnailGeneratingOpzioni:
   1. android.graphics.PointF ottenereThumbnailSize()
   1. setThumbnailSize(android.graphics.PointF)

## Aspose.Words per Android via Java requisiti aggiuntivi

Al fine di utilizzare la funzione di licenza misurata e caricare documenti o immagini tramite protocolli http/ftp gli utenti dovrebbero aggiungere il seguente permesso alle loro applicazioni
* < > > > > > *

## Pubblico API Esempi

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
