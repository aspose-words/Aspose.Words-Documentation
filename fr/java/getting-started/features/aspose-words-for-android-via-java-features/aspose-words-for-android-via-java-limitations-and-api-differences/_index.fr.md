---
title: Android via Java Différences
second_title: Aspose.Words
articleTitle: Aspose.Words pour Android via Java Limitations et API Différences
linktitle: Aspose.Words pour Android via Java Limitations et API Différences
description: "Aspose.Words pour Android via Java caractéristiques et API différences par rapport à la version régulière Aspose.Words pour Java."
type: docs
weight: 50
url: /fr/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## Limitations de Aspose.Words pour Android via Java API par rapport à Aspose.Words pour Java API

1. *Document.print *méthodes ne sont pas disponibles.
1. L'enregistrement aux formats **TIFF** et **BMP** n'est pas pris en charge, bien que *SaveFormat.TIFF* et *SaveFormat.BMP* soient disponibles en public Aspose.Words pour Android via Java API, mais *UnsupportedOperationException* est lancé lorsque ces formats de sauvegarde sont utilisés.
1. La lecture des images **TIFF** n'est pas prise en charge.
1. La signature de documents **ODT** n'est pas encore prise en charge.
1. Les codes à barres ne sont pas pris en charge.
1. Les gradients le long d'une courbe ne sont pas pris en charge
1. L'impression n'est pas prise en charge

## Différences publiques API

- androïde.graphiques.Bitmap est utilisé à la place de java.tta.image.BufferedImage;
- androïde.graphiques.Canvas est utilisé à la place de java.tta.image.GRAPHIQUES2D;
- androïde.graphiques.RectF est utilisé à la place de java.tta.géom.Rectangle2D. Float;
- androïde.graphiques.PointF est utilisé à la place de java.tta.géom.Point2D. Flottant;
- androïde.graphiques.Rect est utilisé à la place de java.tta.Rectangle;
- androïde.graphiques.Point est utilisé à la place de java.tta.Pointe.

Voir les méthodes publiques API suivantes:

1. com.aspose.des mots.DocumentBuilder:
   1. insertImage (Image bitmap)
   1. insertImage (image bitmap, double, double)
   1. insertImage (Bitmap, entier, double, entier, double, double, double, entier)
   1. insertOleImage (Image bitmap)
   1. insertOleObject (InputStream, Chaîne, booléen, Bitmap)
   1. insertOleObject (Chaîne, booléen, booléen, Bitmap)
   1. insertOleObject (Chaîne, Chaîne, booléen, booléen, Bitmap)
1. com.aspose.des mots.IBarcodeGenerator:
   1. Image binaire getBarcodeImage (BarcodeParameters)
   1. Image binaire getOldBarcodeImage (BarcodeParameters)
1. com.aspose.des mots.ImageData:
   1. setImage (Image bitmap)
   1. Image binaire toImage()
1. com.aspose.des mots.ImageFieldMergingArgs:
   1. Image binaire getImage()
   1. setImage (Image bitmap)
1. com.aspose.des mots.Document:
   1. androïde.graphiques.PointF renderToScale (int, Canvas, float, float, float) lève une exception
   1. float renderToSize (int, Canvas, float, float, float, float) lève une exception
1. com.aspose.des mots.LayoutEnumerator:
   1. androïde.graphiques.RectF getRectangle () lève une exception
1. com.aspose.des mots.NodeRendererBase:
   1. androïde.graphiques.PointF getSizeInPoints()
   1. androïde.graphiques.Droit getOpaqueBoundsInPoints()
   1. android public.graphiques.PointF getSizeInPixels (flottant, flottant)
   1. androïde.graphiques.Rect getBoundsInPixels (flottant, flottant)
   1. androïde.graphiques.Rect getOpaqueBoundsInPixels (flottant, flottant)
   1. androïde.graphiques.PointF renderToScale (Canevas, flottant, flottant, flottant)
   1. float renderToSize (Canevas, flotteur, flotteur, flotteur, flotteur)
1. com.aspose.des mots.PageInfo:
   1. androïde.graphiques.PointF getSizeInPixels (flottant, flottant)
   1. androïde.graphiques.PointF getSizeInPoints()
1. com.aspose.des mots.ShapeBase:
   1. androïde.graphiques.Droit adjustWithEffects(androïde.graphiques.RectF)
   1. androïde.graphiques.Droit getBounds()
   1. androïde.graphiques.Droit getBoundsInPoints()
   1. androïde.graphiques.Droit getBoundsWithEffects()
   1. androïde.graphiques.Point getCoordOrigin()
   1. androïde.graphiques.PointF getCoordSize()
   1. androïde.graphiques.PointF getSizeInPoints()
   1. androïde.graphiques.PointF localToParent (androïde.graphiques.PointF)
   1. setBounds (androïde.graphiques.RectF)
   1. setCoordOrigin (androïde.graphiques.Point)
   1. setCoordSize (androïde.graphiques.PointF)
1. com.aspose.des mots.ThumbnailGeneratingOptions:
   1. androïde.graphiques.PointF getThumbnailSize()
   1. setThumbnailSize (androïde.graphiques.PointF)

## Aspose.Words pour Android via Java exigences supplémentaires

Pour utiliser la fonction de licence mesurée et charger des documents ou des images par les protocoles http/ftp, les utilisateurs doivent ajouter l'autorisation suivante à leurs applications
`<uses-permission android:name="android.permission.INTERNET" />`

## Exemples publics API

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
