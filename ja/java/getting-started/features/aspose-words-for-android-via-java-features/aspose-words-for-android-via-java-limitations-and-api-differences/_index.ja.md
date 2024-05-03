---
title: Android お問い合わせ Java よくある質問
second_title: Aspose.Words
articleTitle: Aspose.Words お問い合わせ Android お問い合わせ Java 制限と制限 API よくある質問
linktitle: Aspose.Words お問い合わせ Android お問い合わせ Java 制限と制限 API よくある質問
description: "Aspose.Words お問い合わせ Android お問い合わせ Java 特徴および API 定期的に比較する違い Aspose.Words お問い合わせ Java バージョン。"
type: docs
weight: 50
url: /ja/java/aspose-words-for-android-via-java-limitations-and-api-differences/
---

## 制限事項 Aspose.Words お問い合わせ Android お問い合わせ Java API 比較する Aspose.Words お問い合わせ Java API

1。 *Document.print *メソッドは使用できません。
1。 保存する **TIFF** そして、 **BMP** フォーマットはサポートされていませんが、 *SaveFormat.TIFF* そして、 *SaveFormat.BMP* 公共施設 Aspose.Words お問い合わせ Android お問い合わせ Java API, しかし、 *UnsupportedOperationException* これらの保存形式が使用されるときに投げられます。
1。 読書 **TIFF** 画像はサポートされていません。
1。 サインイン **ODT** ドキュメントはまだサポートされていません。
1。 バーコードは対応しておりません。
1。 曲線に沿って勾配がサポートされていない
1。 印刷はサポートされていません

## パブリック API の違い

- android.graphics。 Bitmap は java.awt.image.Buffered の代わりに使用されます イメージ;
- android.graphics。 キャンバスは、java.awt.image.Graphics2Dの代わりに使用されます。
- android.graphics。 ログイン F は java.awt.geom.Rectangle2D の代わりに使用されます。 フロート;
- android.graphics.Point(アンドロイド) F は java.awt.geom.Point2D の代わりに使用されます。 フロート;
- android.graphics。 Rect は java.awt の代わりに使用されます。 長方形;
- android.graphics。 ポイントは java.awt の代わりに使用されます。 ポイント。

下記パブリックをご覧ください API メソッド:

1。 com.aspose.words.DocumentBuilder:
   1. インサートイメージ(ビットマップ)
   1. インサートイメージ(ビットマップ、ダブル、ダブル)
   1。 インサートイメージ(ビットマップ、int、ダブル、int、ダブル、ダブル、ダブル、int)
   1. インサートOleImage(Bitmap)
   1. insertOleObject(InputStream, String, boolean, Bitmap)
   1. insertOleObject(String, boolean, boolean, Bitmap)
   1. insertOleObject(String, String, boolean, boolean, Bitmap)
1。 com.aspose.words.IBarcodeGenerator:
   1. ビットマップのgetBarcode 画像(バーコードパラメータ)
   1. ビットマップのgetOldBarcode 画像(バーコードパラメータ)
1。 com.aspose.words.ImageData:
   1. setImage(ビットマップ)
   1. ビットマップ toImage()
1。 com.aspose.words.ImageFieldMergingArgs:
   1. ビットマップ getImage()
   1. setImage(ビットマップ)
1. com.aspose.words.Document:
   1. android.graphics.Point(アンドロイド) F renderToScale(int, Canvas, float, float, float) は例外を投げます
   1. 浮遊するrenderToSize (int、キャンバス、浮遊物、浮遊物、浮遊物)は例外を投げます
1。 com.aspose.words.LayoutEnumerator:
   1. android.graphics。 RectF getRectangle() は例外を投げます
1。 com.aspose.words.NodeRendererBase:
   1. android.graphics.PointFのgetSizeInPoints()
   1. android.graphics。 RectF の getOpaqueBoundsInPoints()
   1。 パブリックandroid.graphics.PointF getSizeInPixels(フロート、フロート)
   1. android.graphics。 Rect getBoundsInPixels(フロート、フロート)
   1. android.graphics。 Rect getOpaqueBoundsInPixels(フロート、フロート)
   1. android.graphics.Point(アンドロイド) F renderToScale(キャンバス、フロート、フロート、フロート)
   1. フロートレンダーToSize(キャンバス、フロート、フロート、フロート、フロート)
1。 com.aspose.words.PageInfo:
   1. android.graphics.PointF getSizeInPixels(フロート、フロート)
   1. android.graphics.PointFのgetSizeInPoints()
1. com.aspose.words. 形状: ベース:
   1. android.graphics。 RectF の調節効果(android.graphics.RectF)
   1. android.graphics。 RectFのgetBounds()
   1. android.graphics。 RectF の getBoundsInPoints()
   1. android.graphics。 RectF の getBoundsWithEffects()
   1. android.graphics。 ポイント getCoordOrigin()
   1. android.graphics.PointFはCoordSize()を得ます
   1. android.graphics.PointFのgetSizeInPoints()
   1。 android.graphics.PointF localToParent(android.graphics.PointF)
   1. setBounds(android.graphics.RectF)
   1. セットCoordOrigin (android.graphics.Point)
   1. セットCoordSize (android.graphics.PointF)
1。 com.aspose.words.ThumbnailGeneratingOptions:
   1. android.graphics.PointFのgetThumbnailSize()
   1。 setThumbnailSize(android.graphics.PointF)

## Aspose.Words お問い合わせ Android お問い合わせ Java 追加の要件

メーター化されたライセンス機能を使用して、http/ftp プロトコルのユーザーによる文書や画像をロードするには、アプリケーションに次の権限を追加する必要があります。
*<uses-permission android:name="android.permission.INTERNET"/>*

## パブリック API 事例紹介

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
