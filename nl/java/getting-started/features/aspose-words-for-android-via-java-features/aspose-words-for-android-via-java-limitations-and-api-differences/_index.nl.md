---
title: Android via Java Verschillen
second_title: Aspose.Words
articleTitle: Aspose.Words voor Android via Java Beperkingen en API Verschillen
linktitle: Aspose.Words voor Android via Java Beperkingen en API Verschillen
description: "Aspose.Words voor Android via Java kenmerken en API verschillen in vergelijking met regelmatig Aspose.Words voor Java versie."
type: docs
weight: 50
url: /nl/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## Beperkingen van Aspose.Words voor Android via Java API vergeleken met Aspose.Words voor Java API

1. *Document.print *methoden zijn niet beschikbaar.
1. In opslaan **TIFF** en **BMP** formaten worden echter niet ondersteund *SaveFormat.TIFF* en *SaveFormat.BMP* beschikbaar zijn in het openbaar Aspose.Words voor Android via Java API, maar *UnsupportedOperationException* wordt gegooid wanneer deze opslagformaten worden gebruikt.
1. Lezen **TIFF** afbeeldingen worden niet ondersteund.
1. Ondertekening **ODT** documenten worden nog niet ondersteund.
1. Barcodes worden niet ondersteund.
1. Kleurverloopen langs een curve worden niet ondersteund
1. Afdrukken wordt niet ondersteund

## Openbaar API verschillen

- Android.graphics. Bitmap wordt gebruikt in plaats van java.awt.image.gebufferd Afbeelding;
- Android.graphics. Canvas wordt gebruikt in plaats van java.awt.image.Grafics2D;
- Android.graphics. Recht F wordt gebruikt in plaats van java.awt.geom.Rctangle2D. drijvend;
- androïde.graphics.Point F wordt gebruikt in plaats van java.awt.geom.Point2D. drijvend;
- Android.graphics. Recht wordt gebruikt in plaats van java.awt. Rechthoek;
- Android.graphics. Punt wordt gebruikt in plaats van java.awt. Punt.

Zie het volgende Publiek API methoden:

1. com.aspone.words.documentbouwer:
   1. insertAfbeelding(Bitmap)
   1. insertAfbeelding(Bitmap, dubbel, dubbel)
   1. insertAfbeelding(Bitmap, int, dubbel, int, dubbel, dubbel, dubbel, int)
   1. insertOleImage(Bitmap)
   1. insertOleObject(InputStream, String, boolean, Bitmap)
   1. insertOleObject(String, boolean, boolean, Bitmap)
   1. insertOleObject(String, String, boolean, boolean, Bitmap)
1. com.aspone.words.IBarcodeGenerator:
   1. Bitmap krijgenBarcode Afbeelding(Barcodeparameters)
   1. Bitmap krijgenOldBarcode Afbeelding(Barcodeparameters)
1. com.aspone.words.imageData:
   1. setImage(Bitmap)
   1. Bitmap toImage()
1. com.aspose.words.imageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage(Bitmap)
1. com.aspone.words.Document:
   1. android.graphics.Point F renderToScale(int, Canvas, float, float) gooit Uitzondering
   1. float renderToSize(int, Canvas, drijven, drijven, drijven) gooit Uitzondering
1. com.aspone.words.layoutEteller:
   1. androïde.graphics. RectF krijgenRechthoek() gooit Uitzondering
1. com.aspone.words.NodeRendererBase:
   1. android.graphics.PointF krijgenSizeInPoints()
   1. android.graphics. RectF krijgtOpaqueBoundsInPoints()
   1. public android.graphics.PointF getSizeInPixels(float, float)
   1. android.graphics. Rect getBoundsInPixels(float, float)
   1. android.graphics. Rect getOpaqueBoundsInPixels(float, float)
   1. android.graphics.Point F renderToScale(Canvas, float, float)
   1. float renderToSize(Canvas, float, float, float)
1. com.aspone.words.PageInfo:
   1. android.graphics.PointF getSizeInPixels(float, float)
   1. android.graphics.PointF krijgenSizeInPoints()
1. com.aspose.words. Vorm Basis:
   1. android.graphics. RectF aanpassenMetEffecten(android.graphics.RectF)
   1. androïde.graphics. RectF getBounds()
   1. androïde.graphics. RectF getBoundsInPoints()
   1. androïde.graphics. RectF getBoundsWithEffects()
   1. androïde.graphics. Punt getCoordOrigin()
   1. android.graphics.PointF krijgenCoordSize()
   1. android.graphics.PointF krijgenSizeInPoints()
   1. android.graphics.PointF localToParent(android.graphics.PointF)
   1. setBounds(android.graphics.RectF)
   1. setCoordOrigin(android.graphics.Point)
   1. setCoordSize(android.graphics.PointF)
1. com.aspone.words.ThumbnailGeneratieOpties:
   1. android.graphics.PointF krijgenThumbnailSize()
   1. setThumbnailSize(android.graphics.PointF)

## Aspose.Words voor Android via Java aanvullende eisen

Om meetbare licentiefunctie te gebruiken en documenten of afbeeldingen van http/ftp-protocollen te laden moeten gebruikers na toestemming aan hun toepassingen toevoegen
*<uses-permission android:name="android.permission.INTERNET" />*

## Openbaar API Voorbeelden

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
