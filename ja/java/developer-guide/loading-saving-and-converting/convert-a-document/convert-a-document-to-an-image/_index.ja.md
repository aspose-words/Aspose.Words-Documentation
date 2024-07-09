---
title: ドキュメントを画像に変換 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ドキュメントをイメージに変換する
linktitle: ドキュメントをイメージに変換する
type: docs
description: "ドキュメントを画像形式(JPG、PNGなど)に変換します。 ドキュメントプレビューを作成したり、ドキュメントスキャンを作成して請求書を送信します。 Javaお問い合わせ"
weight: 35
url: /ja/java/convert-a-document-to-an-image/
---

DOCX や PDF などの他の形式の文書ではなく、画像を取得する必要があります。 たとえば、Webサイトやアプリケーションに任意のドキュメントページのプレビューを追加したり、請求書を送信するドキュメントの「スキャン」を作成する必要があります。 これは、任意の文書を変換する必要がある場合 [サポートされているロード形式](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) あらゆるイメージに、 [サポートされている保存形式](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)お問い合わせ

## 画像形式に変換する

既に説明したすべての変換例と同様に、新しいドキュメントを作成したり、サポートされているフォーマットで既存のドキュメントをロードしたり、必要な変更を行い、利用可能な任意の画像形式(JPEG、PNG、BMPなど)に保存する必要があります。

次のコードの例では、DOCXをJPEGに変換する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## 保存オプションをイメージに変換する

Aspose.Words あなたに提供する [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) クラスは、さまざまな画像フォーマットで文書が保存される方法についてより制御します。 このクラスのプロパティーの中には、ベースクラスのプロパティーを継承したり、オーバーロードしたりするプロパティーがあります。 [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) または [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), しかし、画像を保存するためのオプションもあります。

変換するページを画像形式に指定することができます。 [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) 宿泊施設 たとえば、最初のプレビューや、明確なページのみが必要な場合は、適用できます。

出力イメージの品質やピクセル形式を次のプロパティで制御することもできます。 [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), また、次のプロパティを使用して、画像の色設定を設定することもできます。 [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor)お問い合わせ

特定の形式に適用するプロパティもあります。 [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) または [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression)お問い合わせ

次のコードの例では、追加の設定を適用して最初のドキュメントページのプレビューを作成する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
