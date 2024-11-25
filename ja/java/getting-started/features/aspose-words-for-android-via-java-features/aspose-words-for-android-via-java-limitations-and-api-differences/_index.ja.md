---
title: AndroidからJavaの違い
second_title: Aspose.Words
articleTitle: Javaの制限とAPIの違いによるAndroidのAspose.Words
linktitle: Javaの制限とAPIの違いによるAndroidのAspose.Words
description: "AndroidのAspose.WordsとJavaの機能とAPIの違いは、Javaバージョンの通常のAspose.Wordsと比較しています。"
type: docs
weight: 50
url: /ja/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## JavaAPIのAspose.WordsとJavaAPIのAspose.Wordsとの比較で、AndroidのAspose.Wordsの制限がJavaAPIのAspose.Wordsと比較されました

1. *Document.print *メソッドは使用できません。
1. **TIFF**と**BMP**形式での保存はサポートされていませんが、*SaveFormat.TIFF*と*SaveFormat.BMP*はAndroidのパブリックAspose.WordsでJavaAPI経由で利用できますが、これらの保存形式が使用されると*UnsupportedOperationException*がスローされます。
1. **TIFF**画像の読み取りはサポートされていません。
1. **ODT**文書への署名はまだサポートされていません。
1. バーコードはサポートされていません。
1. 曲線に沿ったグラデーションはサポートされていません
1. 印刷はサポートされていません

## パブリックAPIの違い

- アンドロイド。グラフィック。Javaの代わりにBitmapが使用されます。awt。イメージ。BufferedImage;
- アンドロイド。グラフィック。Javaの代わりにCanvasが使用されます。awt。イメージ。Graphics2d;
- アンドロイド。グラフィック。Javaの代わりにRectFが使用されます。awt。ゲオムRectangle2D.Float;
- アンドロイド。グラフィック。Javaの代わりにPointFが使用されます。awt。ゲオムPoint2D.Float;
- アンドロイド。グラフィック。Javaの代わりにRectが使用されます。awt。長方形;
- アンドロイド。グラフィック。Javaの代わりにPointが使用されます。awt。ポイント。

次のパブリックAPIメソッドを参照してください:

1. コム...アスポーズ言葉だDocumentBuilder:
   1. insertImage(ビットマップ)
   1. insertImage(ビットマップ,ダブル,ダブル)
   1. insertImage(Bitmap,int,double,int,double,double,double,int)
   1. insertOleImage(ビットマップ)
   1. insertOleObject(InputStream,文字列,ブール値,ビットマップ)
   1. insertOleObject(文字列,ブール値,ブール値,ビットマップ)
   1. insertOleObject(文字列,文字列,ブール値,ブール値,ビットマップ)
1. コム...アスポーズ言葉だIBarcodeGenerator:
   1. ビットマップgetBarcodeImage(BarcodeParameters)
   1. ビットマップgetOldBarcodeImage(BarcodeParameters)
1. コム...アスポーズ言葉だImageData:
   1. setImage(ビットマップ)
   1. ビットマップtoImage()
1. コム...アスポーズ言葉だImageFieldMergingArgs:
   1. ビットマップgetImage()
   1. setImage(ビットマップ)
1. コム...アスポーズ言葉だ文書:
   1. アンドロイド。グラフィック。PointFrenderToScale(int,Canvas,float,float,float)は例外をスローします
   1. floatrenderToSize(int,Canvas,float,float,float,float)例外をスローします
1. コム...アスポーズ言葉だLayoutEnumerator:
   1. アンドロイド。グラフィック。RectFgetRectangle()は例外をスローします
1. コム...アスポーズ言葉だNodeRendererBase:
   1. アンドロイド。グラフィック。PointFgetSizeInPoints()
   1. アンドロイド。グラフィック。RectFgetOpaqueBoundsInPoints()
   1. パブリックアンドロイド。グラフィック。PointFgetSizeInPixels(float,float)
   1. アンドロイド。グラフィック。RectgetBoundsInPixels(float,float)
   1. アンドロイド。グラフィック。RectgetOpaqueBoundsInPixels(float,float)
   1. アンドロイド。グラフィック。PointFrenderToScale(Canvas,float,float,float)
   1. floatrenderToSize(Canvas,float,float,float,float)
1. コム...アスポーズ言葉だPageInfo:
   1. アンドロイド。グラフィック。PointFgetSizeInPixels(float,float)
   1. アンドロイド。グラフィック。PointFgetSizeInPoints()
1. コム...アスポーズ言葉だShapeBase:
   1. アンドロイド。グラフィック。RectFadjustWithEffects(アンドロイド.グラフィック。RectF）
   1. アンドロイド。グラフィック。RectFgetBounds()
   1. アンドロイド。グラフィック。RectFgetBoundsInPoints()
   1. アンドロイド。グラフィック。RectFgetBoundsWithEffects()
   1. アンドロイド。グラフィック。ポイントgetCoordOrigin()
   1. アンドロイド。グラフィック。PointFgetCoordSize()
   1. アンドロイド。グラフィック。PointFgetSizeInPoints()
   1. アンドロイド。グラフィック。PointFlocalToParent(アンドロイド.グラフィック。ポイントf）
   1. setBounds(アンドロイド.グラフィック。RectF）
   1. setCoordOrigin(アンドロイド.グラフィック。ポイント）
   1. setCoordSize(アンドロイド.グラフィック。ポイントf）
1. コム...アスポーズ言葉だThumbnailGeneratingOptions:
   1. アンドロイド。グラフィック。PointFgetThumbnailSize()
   1. setThumbnailSize(アンドロイド.グラフィック。ポイントf）

## Aspose.WordsのAndroidviaJava追加要件

従量制ライセンス機能を使用し、http/ftpプロトコルによるドキュメントや画像をロードするには、ユーザーはアプリケーションに次の権限を追加する必要が
*&lt;uses-permission android:name="android.permission.INTERNET" /&gt;*

## パブリックAPIの例

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
