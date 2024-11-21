---
title: Android via Java Diferencias
second_title: Aspose.Words
articleTitle: Aspose.Words para Android via Java Limitaciones y limitaciones API Diferencias
linktitle: Aspose.Words para Android via Java Limitaciones y limitaciones API Diferencias
description: "Aspose.Words para Android via Java características y API diferencias comparadas con Aspose.Words para Java versión."
type: docs
weight: 50
url: /es/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## Limitaciones Aspose.Words para Android via Java API en comparación con Aspose.Words para Java API

1. *Document.print *Metodos no están disponibles.
1. Ahorro **TIFF** y **BMP** formatos no es compatible, aunque *SaveFormat.TIFF* y *SaveFormat.BMP* están disponibles en público Aspose.Words para Android via Java API, pero *UnsupportedOperationException* se lanza cuando estos formatos de ahorro se utilizan.
1. Lectura **TIFF** las imágenes no son compatibles.
1. Firma **ODT** los documentos todavía no están respaldados.
1. Los códigos de barras no son compatibles.
1. Los gradientes a lo largo de una curva no son compatibles
1. La impresión no es compatible

## Público API diferencias

- android.graphics. Bitmap se utiliza en lugar de java.awt.image.Buffered Imagen;
- android.graphics. El lienzo se utiliza en lugar de java.awt.image.Graphics2D;
- android.graphics. Rect F se utiliza en lugar de java.awt.geom.Rectangle2D. Float;
- android.graphics.Point F se utiliza en lugar de java.awt.geom.Point2D. Float;
- android.graphics. Rect se utiliza en lugar de java.awt. Rectángulo;
- android.graphics. El punto se utiliza en lugar de java.awt. Punto.

Véase la siguiente opinión pública API métodos:

1. documentBuilder:
   1. insertarImage(Bitmap)
   1. insertarImage(Bitmap, double, double)
   1. insertarImage(Bitmap, int, double, int, double, double, double, int)
   1. insertOleImage(Bitmap)
   1. insertOleObject(InputStream, String, boolean, Bitmap)
   1. insertOleObject(String, boolean, boolean, Bitmap)
   1. insertOleObject(String, String, boolean, boolean, Bitmap)
1. com.aspose.words.IBarcodeGenerator:
   1. Bitmap getBarcode Imagen(Parametros de código de barras)
   1. Bitmap getOldBarcode Imagen(Parametros de código de barras)
1. com.aspose.words.ImageData:
   1. setImage(Bitmap)
   1. Bitmap toImage()
1. com.aspose.words.ImagenFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage(Bitmap)
1. com.aspose.words
   1. android.graphics.Point F renderToScale(int, Canvas, flotador, flotador) lanza Excepción
   1. flotadorToSize(int, Canvas, flotador, flotador, flotador, flotador) tira Excepción
1. com.aspose.words.LayoutEnumerator:
   1. android.graphics. RectF getRectangle() lanza Excepción
1. com.aspose.words.NodeRendererBase:
   1. android.graphics.PointF getSizeInPoints()
   1. android.graphics. RectF getOpaqueBoundsInPoints()
   1. public android.graphics.PointF getSizeInPixels(float, flotador)
   1. android.graphics. Rect getBoundsInPixels(float, flotador)
   1. android.graphics. Rect getOpaqueBoundsInPixels(float, flotador)
   1. android.graphics.Point F renderToScale(Canvas, flotar, flotar, flotar)
   1. flotador de renderizadoToSize(Canvas, flotador, flotador, flotador)
1. com.aspose.words.PageInfo:
   1. android.graphics.PointF getSizeInPixels(float, flotador)
   1. android.graphics.PointF getSizeInPoints()
1. com.aspose.words. Forma Base:
   1. android.graphics. Ajuste de RectFConEfectos(android.graphics.RectF)
   1. android.graphics. RectF getBounds()
   1. android.graphics. RectF getBoundsInPoints()
   1. android.graphics. RectF getBoundsWithEffects()
   1. android.graphics. Punto getCoordOrigin()
   1. android.graphics.PointF getCoordSize()
   1. android.graphics.PointF getSizeInPoints()
   1. android.graphics.PointF localToParent(android.graphics.PointF)
   1. setBounds(android.graphics.RectF)
   1. setCoordOrigin(android.graphics.Point)
   1. setCoordSize(android.graphics.PointF)
1. com.aspose.words.ThumbnailGeneratingOptions:
   1. android.graphics.PointF getThumbnailSize()
   1. setThumbnailSize(android.graphics.PointF)

## Aspose.Words para Android via Java necesidades adicionales

Con el fin de utilizar las características de licencias medidos y cargar documentos o imágenes por protocolos http/ftp, los usuarios deben agregar el siguiente permiso a sus aplicaciones
*Escritor de permiso de usos:nombre="android.permission.INTERNET" / Conf*

## Público API Ejemplos

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
