---
title: Android através de Java diferenças
second_title: Aspose.Words
articleTitle: Aspose.Words para Android via Java limitações e API diferenças
linktitle: Aspose.Words para Android via Java limitações e API diferenças
description: "Aspose.Words para Android via Java características e API diferenças em comparação com a versão regular Aspose.Words para Java."
type: docs
weight: 50
url: /pt/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## Limitações de Aspose.Words para Android via Java API em comparação com Aspose.Words para Java API

1. *Document.print * métodos não estão disponíveis.
1. Salvar nos formatos **TIFF** e **BMP** não é suportado, embora *SaveFormat.TIFF* e *SaveFormat.BMP* estejam disponíveis em público Aspose.Words para Android via Java API, mas *UnsupportedOperationException* é lançado quando esses formatos salvos são usados.
1. A leitura de **TIFF** imagens não é suportada.
1. A assinatura de **ODT** documentos ainda não é suportada.
1. Os códigos de barras não são suportados.
1. Gradientes ao longo de uma curva não são suportados
1. A impressão não é suportada

## Público API diferenças

- Andróide.gráficos.Bitmap é usado em vez de java.awt.imagem.BufferedImage;
- Andróide.gráficos.Canvas é usado em vez de java.awt.imagem.Gráficos2d;
- Andróide.gráficos.RectF é usado em vez de java.awt.geom.Rectangle2D. Float;
- Andróide.gráficos.PointF é usado em vez de java.awt.geom.Point2D. Float;
- Andróide.gráficos.Rect é usado em vez de java.awt.Rectângulo;
- Andróide.gráficos.Ponto é usado em vez de java.awt.Ponto.

Veja os seguintes métodos públicos API:

1. com.aspose.palavras.DocumentBuilder:
   1. insertImage (Bitmap)
   1. insertImage (Bitmap, duplo, duplo)
   1. insertImage (Bitmap, int, duplo, int, DUPLO, DUPLO, DUPLO, int)
   1. insertOleImage (Bitmap)
   1. insertOleObject (InputStream, String, booleano, Bitmap)
   1. insertOleObject (cadeia, booleano, booleano, Bitmap)
   1. insertOleObject (String, String, booleano, booleano, Bitmap)
1. com.aspose.palavras.IBarcodeGenerator:
   1. Bitmap getBarcodeImage(BarcodeParameters)
   1. Bitmap getOldBarcodeImage(BarcodeParameters)
1. com.aspose.palavras.ImageData:
   1. setImage (Bitmap)
   1. Bitmap toImage()
1. com.aspose.palavras.ImageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage (Bitmap)
1. com.aspose.palavras.Documento:
   1. Andróide.gráficos.PointF renderToScale (int, Canvas, float, float, float) lança exceção
   1. float renderToSize (int, Canvas, float, float, float, float) lança exceção
1. com.aspose.palavras.LayoutEnumerator:
   1. Andróide.gráficos.RectF getRectangle () lança excepção
1. com.aspose.palavras.NodeRendererBase:
   1. Andróide.gráficos.PointF getSizeInPoints()
   1. Andróide.gráficos.RectF getOpaqueBoundsInPoints()
   1. Andróide público.gráficos.PointF getSizeInPixels (float, float)
   1. Andróide.gráficos.Rect getBoundsInPixels (float, float)
   1. Andróide.gráficos.Rect getOpaqueBoundsInPixels (float, float)
   1. Andróide.gráficos.PointF renderToScale (Canvas, float, float, float)
   1. float renderToSize (Canvas, float, float, float, float)
1. com.aspose.palavras.PageInfo:
   1. Andróide.gráficos.PointF getSizeInPixels (float, float)
   1. Andróide.gráficos.PointF getSizeInPoints()
1. com.aspose.palavras.ShapeBase:
   1. Andróide.gráficos.RectF adjustWithEffects (Andróide.gráficos.RectF)
   1. Andróide.gráficos.RectF getBounds()
   1. Andróide.gráficos.RectF getBoundsInPoints()
   1. Andróide.gráficos.RectF getBoundsWithEffects()
   1. Andróide.gráficos.Ponto getCoordOrigin()
   1. Andróide.gráficos.PointF getCoordSize()
   1. Andróide.gráficos.PointF getSizeInPoints()
   1. Andróide.gráficos.PointF localToParent (Andróide.gráficos.PointF)
   1. setBounds (Andróide.gráficos.RectF)
   1. setCoordOrigin (Andróide.gráficos.Ponto)
   1. setCoordSize (Andróide.gráficos.PointF)
1. com.aspose.palavras.ThumbnailGeneratingOptions:
   1. Andróide.gráficos.PointF getThumbnailSize()
   1. setThumbnailSize (Andróide.gráficos.PointF)

## Aspose.Words para Android via Java requisitos adicionais

Para usar o recurso de licenciamento medido e carregar documentos ou imagens por protocolos http/ftp, os usuários devem adicionar a seguinte permissão aos seus aplicativos
`<uses-permission android:name="android.permission.INTERNET" />`

## Público API Exemplos

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
