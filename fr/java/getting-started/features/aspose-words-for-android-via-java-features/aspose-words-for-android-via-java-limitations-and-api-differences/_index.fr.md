---
title: Android par Java Différences
second_title: Aspose.Words
articleTitle: Aspose.Words pour Android par Java Limites et API Différences
linktitle: Aspose.Words pour Android par Java Limites et API Différences
description: "Aspose.Words pour Android par Java caractéristiques et API différences par rapport aux différences régulières Aspose.Words pour Java de la version française."
type: docs
weight: 50
url: /fr/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## Limitations Aspose.Words pour Android par Java API par rapport à Aspose.Words pour Java API

1. *Document.print *les méthodes ne sont pas disponibles.
1. Sauver **TIFF** et **BMP** les formats ne sont pas pris en charge, *SaveFormat.TIFF* et *SaveFormat.BMP* sont disponibles en public Aspose.Words pour Android par Java API, mais *UnsupportedOperationException* est lancé lorsque ces formats de sauvegarde sont utilisés.
1. Lecture **TIFF** les images ne sont pas prises en charge.
1. Signature **ODT** les documents ne sont pas encore pris en charge.
1. Les codes-barres ne sont pas pris en charge.
1. Les gradients le long d'une courbe ne sont pas supportés
1. L'impression n'est pas prise en charge

## Public API différences

- androïde.graphique. Bitmap est utilisé au lieu de java.awt.image. Image;
- androïde.graphique. Canvas est utilisé au lieu de java.awt.image.Graphics2D;
- androïde.graphique. Rect F est utilisé au lieu de java.awt.geom.Rectangle2D. Float;
- androïde.graphics.Point F est utilisé au lieu de java.awt.geom.Point2D. Float;
- android.graphics. Rect est utilisé au lieu de java.awt. Rectangle;
- android.graphics. Point est utilisé au lieu de java.awt. C'est ça.

Voir le public suivant API méthodes:

1. Com.aspose.words.DocumentBuilder:
   1. insérerImage(Bitmap)
   1. insertImage(Bitmap, double, double)
   1. insertImage(Bitmap, int, double, int, double, double, double, int)
   1. insérerOleImage(Bitmap)
   1. insertOleObject(InputStream, String, booléen, Bitmap)
   1. insertOleObject(String, booléen, booléen, Bitmap)
   1. insertOleObject(String, String, booléen, booléen, Bitmap)
1. Mots-clés.IBarcodeGenerator:
   1. Bitmap getBarcode Image(BarcodeParamètres)
   1. Bitmap getOldBarcode Image(BarcodeParamètres)
1. com.aspose.words.ImageDonnées:
   1. setImage(Bitmap)
   1. Bitmap toImage()
1. com.aspose.words.ImageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage(Bitmap)
1. com.aspose.words.Document:
   1. android.graphics.Point F renduToScale(int, toile, flotteur, flotteur, flotteur) lance Exception
   1. rendu de flotteurToSize(int, Toile, flotteur, flotteur, flotteur, flotteur) lance Exception
1. Com.aspose.words.LayoutÉnumérateur:
   1. android.graphics. RectF getRectangle() lance une exception
1. Com.aspose.words.NodeRendererBase:
   1. android.graphics.PointF getSizeInPoints()
   1. android.graphics. RectF getOpaqueBoundsInPoints()
   1. public android.graphics.PointF getSizeInPixels(float, flotteur)
   1. android.graphics. Rect getBoundsInPixels(float, flotter)
   1. android.graphics. Rect getOpaqueBoundsInPixels(float, flotter)
   1. android.graphics.Point F renduToScale(Canvas, flotter, flotter, flotter)
   1. rendu de flotteurToSize(Canvas, flotteur, flotteur, flotteur, flotteur)
1. Com.aspose.words.PageInfo:
   1. android.graphics.PointF getSizeInPixels(float, flotter)
   1. android.graphics.PointF getSizeInPoints()
1. com.aspose.words. Forme Base:
   1. android.graphics. RectF ajusterAvecEffets(android.graphics.RectF)
   1. android.graphics. RectF getBounds()
   1. android.graphics. RectF getBoundsInPoints()
   1. android.graphics. RectF getBoundsWithEffects()
   1. android.graphics. Point getCoordOrigine()
   1. android.graphics.PointF getCoordSize()
   1. android.graphics.PointF getSizeInPoints()
   1. android.graphics.PointF localToParent(android.graphics.PointF)
   1. setBounds(android.graphics.RectF)
   1. setCoordOrigine(android.graphics.Point)
   1. setCoordSize(android.graphics.PointF)
1. Com.aspose.words.ThumbnailGeneratingOptions:
   1. android.graphics.PointF getThumbnailSize()
   1. setThumbnailSize(android.graphics.PointF)

## Aspose.Words pour Android par Java dépenses supplémentaires

Afin d'utiliser la fonction de licence mesurée et charger des documents ou des images par les utilisateurs des protocoles http/ftp devraient ajouter après autorisation à leurs applications
*<autorisation d'utiliser etroïde:nom="android.permission.INTERNET" />*

## Public API Exemples

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
