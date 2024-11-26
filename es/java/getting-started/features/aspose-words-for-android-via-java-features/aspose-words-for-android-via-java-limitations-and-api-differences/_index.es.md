---
title: Android a través de Java Diferencias
second_title: Aspose.Words
articleTitle: Aspose.Words para Android a través de Java Limitaciones y API Diferencias
linktitle: Aspose.Words para Android a través de Java Limitaciones y API Diferencias
description: "Aspose.Words para Android a través de Java características y API diferencias en comparación con la versión normal de Aspose.Words para Java."
type: docs
weight: 50
url: /es/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## Limitaciones de Aspose.Words para Android a través de Java API en comparación con Aspose.Words para Java API

1. Los métodos *Document.print *no están disponibles.
1. No se admite guardar en formatos **TIFF** y **BMP**, aunque *SaveFormat.TIFF* y *SaveFormat.BMP* están disponibles en público Aspose.Words para Android a través de Java API, pero *UnsupportedOperationException* se genera cuando se usan estos formatos de guardado.
1. No se admite la lectura de **TIFF** imágenes.
1. La firma de documentos **ODT** aún no es compatible.
1. Los códigos de barras no son compatibles.
1. No se admiten degradados a lo largo de una curva
1. No se admite la impresión

## Diferencias públicas API

- android.gráficos.Se usa mapa de bits en lugar de java.awt.imagen.BufferedImage;
- android.gráficos.Se usa Canvas en lugar de java.awt.imagen.Gráficos2D;
- android.gráficos.Se usa RectF en lugar de java.awt.geom.Rectángulo2d. Flotante;
- android.gráficos.Se usa PointF en lugar de java.awt.geom.Punto2D. Flotante;
- android.gráficos.Se usa Rect en lugar de java.awt.Rectángulo;
- android.gráficos.Se usa Point en lugar de java.awt.Punto.

Consulte los siguientes métodos públicos API:

1. com.aspose.palabras.DocumentBuilder:
   1. insertImage(Mapa de bits)
   1. insertImage(Mapa de bits, doble, doble)
   1. insertImage (Mapa de bits, int, doble, int, doble, doble, doble, int)
   1. insertOleImage(Mapa de bits)
   1. insertOleObject (InputStream, Cadena, booleano, Mapa de bits)
   1. insertOleObject (Cadena, booleano, booleano, Mapa de bits)
   1. insertOleObject (Cadena, Cadena, booleano, booleano, Mapa de bits)
1. com.aspose.palabras.IBarcodeGenerator:
   1. Mapa de bits getBarcodeImage (BarcodeParameters)
   1. Mapa de bits getOldBarcodeImage (BarcodeParameters)
1. com.aspose.palabras.ImageData:
   1. setImage(Mapa de bits)
   1. Mapa de bits toImage()
1. com.aspose.palabras.ImageFieldMergingArgs:
   1. Mapa de bits getImage()
   1. setImage(Mapa de bits)
1. com.aspose.palabras.Documento:
   1. android.gráficos.PointF renderToScale (int, Canvas, float, float, float) arroja una excepción
   1. float renderToSize (int, Canvas, float, float, float, float) arroja una excepción
1. com.aspose.palabras.LayoutEnumerator:
   1. android.gráficos.RectF getRectangle () lanza una excepción
1. com.aspose.palabras.NodeRendererBase:
   1. android.gráficos.Punto F getSizeInPoints ()
   1. android.gráficos.RectF getOpaqueBoundsInPoints()
   1. android público.gráficos.PointF getSizeInPixels(flotante, flotante)
   1. android.gráficos.Rect getBoundsInPixels(flotante, flotante)
   1. android.gráficos.Rect getOpaqueBoundsInPixels(flotante, flotante)
   1. android.gráficos.PointF renderToScale (Lienzo, flotar, flotar, flotar)
   1. float renderToSize (Lienzo, flotar, flotar, flotar, flotar)
1. com.aspose.palabras.PageInfo:
   1. android.gráficos.PointF getSizeInPixels(flotante, flotante)
   1. android.gráficos.Punto F getSizeInPoints ()
1. com.aspose.palabras.ShapeBase:
   1. android.gráficos.RectF adjustWithEffects(android.gráficos.RectF)
   1. android.gráficos.RectF getBounds()
   1. android.gráficos.RectF getBoundsInPoints()
   1. android.gráficos.RectF getBoundsWithEffects()
   1. android.gráficos.Punto getCoordOrigin()
   1. android.gráficos.Punto F getCoordSize ()
   1. android.gráficos.Punto F getSizeInPoints ()
   1. android.gráficos.PointF localToParent(android.gráficos.Punto F)
   1. setBounds (android.gráficos.RectF)
   1. setCoordOrigin (android.gráficos.Punto)
   1. setCoordSize (android.gráficos.Punto F)
1. com.aspose.palabras.ThumbnailGeneratingOptions:
   1. android.gráficos.Punto F getThumbnailSize ()
   1. setThumbnailSize (android.gráficos.Punto F)

## Aspose.Words para Android a través de Java requisitos adicionales

Para utilizar la función de licencia medida y cargar documentos o imágenes mediante protocolos http / ftp, los usuarios deben agregar el siguiente permiso a sus aplicaciones
`<uses-permission android:name="android.permission.INTERNET" />`

## API Ejemplos públicos

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
