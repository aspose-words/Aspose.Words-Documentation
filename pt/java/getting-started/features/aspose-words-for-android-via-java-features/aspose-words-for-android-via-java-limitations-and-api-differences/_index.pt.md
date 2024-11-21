---
title: Android via via via via Java Diferenças
second_title: Aspose.Words
articleTitle: Aspose.Words para Android via via via via Java Limitações e API Diferenças
linktitle: Aspose.Words para Android via via via via Java Limitações e API Diferenças
description: "Aspose.Words para Android via via via via Java características e API diferenças em comparação com regular Aspose.Words para Java versão."
type: docs
weight: 50
url: /pt/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## Limitações Aspose.Words para Android via via via via Java API em comparação com Aspose.Words para Java API

1. *Document.print *métodos não estão disponíveis.
1. Salvar **TIFF** e **BMP** formatos não são suportados, embora *SaveFormat.TIFF* e *SaveFormat.BMP* estão disponíveis em público Aspose.Words para Android via via via via Java API, mas... *UnsupportedOperationException* é jogado quando estes formatos de salvamento são usados.
1. Leitura **TIFF** imagens não são suportadas.
1. Assinatura **ODT** documentos ainda não são suportados.
1. Códigos de barras não são suportados.
1. Gradientes ao longo de uma curva não são suportados
1. A impressão não é suportada

## Público API diferenças

- android.graphics. Bitmap é usado em vez de java.awt.image.Buffered Imagem;
- android.graphics. A tela é usada em vez de java.awt.image.Graphics2D;
- android.graphics. Rectificação F é usado em vez de java.awt.geom.Rectangle2D. Float;
- android.graphics.Point F é usado em vez de java.awt.geom.Point2D. Float;
- android.graphics. Rect é usado em vez de java.awt. Retângulo;
- android.graphics. Ponto é usado em vez de java.awt. Ponto.

Veja o seguinte Público API métodos:

1. com.aspose.words.DocumentBuilder:
   1. insertImage (Bitmap)
   1. insertImage (Bitmap, duplo, duplo)
   1. insertImage (Bitmap, int, duplo, int, duplo, duplo, duplo, int)
   1. insertOleImage (Bitmap)
   1. insertOleObject(InputStream, String, booleano, Bitmap)
   1. insertOleObject(String, booleano, booleano, Bitmap)
   1. insertOleObject(String, String, boolean, boolean, Bitmap)
1. com.aspose.words.IBarcodeGenerator:
   1. Bitmap getBarcode Imagem (Parâmetros de código de barras)
   1. Bitmap getOldBarcode Imagem (Parâmetros de código de barras)
1. com.aspose.words.ImageData:
   1. setImage (Bitmap)
   1. Bitmap toImage()
1. com.aspose.words.ImageFieldMergingArgs:
   1. Bitmap getImage()
   1. setImage (Bitmap)
1. com.aspose.words.Documento:
   1. android.graphics.Point F renderToScale (int, Canvas, flutuar, flutuar, flutuar) joga Exceção
   1. renderToSize float (int, Canvas, flutuar, flutuar, flutuar, flutuar) joga Exceção
1. com.aspose.words.LayoutEnumerator:
   1. android.graphics. RetF getRectangle() joga Exceção
1. com.aspose.words.NodeRendererBase:
   1. android.graphics.PointF getSizeInPoints()
   1. android.graphics. RetF getOpaqueBoundsInPoints()
   1. público android.graphics.PointF getSizeInPixels (float, flutuador)
   1. android.graphics. Ret getBoundsInPixels (float, flutuador)
   1. android.graphics. Ret getOpaqueBoundsInPixels (float, flutuador)
   1. android.graphics.Point F renderToScale (Canvas, flutuar, flutuar, flutuar)
   1. renderToSize flutuador (Canvas, flutuar, flutuar, flutuar, flutuar)
1. com.aspose.words.PageInfo:
   1. android.graphics.PointF getSizeInPixels (float, flutuador)
   1. android.graphics.PointF getSizeInPoints()
1. com.aspose.words. Forma Base:
   1. android.graphics. RetF ajustar com Efeitos (android.graphics.RectF)
   1. android.graphics. RetF getBounds()
   1. android.graphics. RetF getBoundsInPoints()
   1. android.graphics. RetF getBoundsWithEffects()
   1. android.graphics. Ponto getCoordOrigin()
   1. android.graphics.PointF getCoordSize()
   1. android.graphics.PointF getSizeInPoints()
   1. android.graphics.PointF localToParent (android.graphics.PointF)
   1. setBounds (android.graphics.RectF)
   1. conjuntoCoordOrigin (android.graphics.Point)
   1. setCoordSize (android.graphics.PointF)
1. com.aspose.words.ThumbnailOpções de Geração:
   1. android.graphics.PointF getThumbnailSize())
   1. setThumbnailSize (android.graphics.PointF)

## Aspose.Words para Android via via via via Java requisitos adicionais

A fim de usar o recurso de licenciamento medido e carregar documentos ou imagens por protocolos http/ftp os usuários devem adicionar a seguinte permissão para seus aplicativos
* <uses-permission android:name="android.permission.INTERNET" />*

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
