---
title: ドキュメントをJavaの画像に変換する
second_title: Aspose.WordsのためのJava
articleTitle: 文書を画像に変換する
linktitle: 文書を画像に変換する
type: docs
description: "ドキュメントを画像形式(JPG、PNGなど)に変換します。 文書プレビューを作成するか、文書スキャンを作成してJavaを使用して請求書を送信します。"
weight: 35
url: /ja/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

DOCXやPDFなどの他の形式の文書の代わりに画像を取得する必要がある場合があります。 たとえば、ドキュメントページのプレビューをwebサイトまたはアプリケーションに追加したり、ドキュメントの「スキャン」を作成して請求書を送信したりする必要があります。 これは、任意の[サポートされているロード形式](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)の文書を任意の[サポートされている保存形式](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)の画像に変換する必要がある場合です。

## 画像形式に変換する

既に説明したすべての変換例と同様に、新しいドキュメントを作成するか、サポートされている任意の形式で既存のドキュメントをロードし、必要な変更を加えて、JPEG、PNG、BMPなどの使用可能な任意の画像形式で保存する必要があります。

次のコード例は、DOCXをJPEGに変換する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## 画像に変換するときに保存オプションを指定する

Aspose.Wordsは、ドキュメントをさまざまな画像形式で保存する方法をより詳細に制御できる[ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/)クラスを提供します。 このクラスの一部のプロパティは、[FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)や[SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/)などの基本クラスのプロパティを継承またはオーバーロードしますが、画像の保存に固有のオプションもあり

[PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet)プロパティを使用して、画像形式に変換するページを指定することができます。 たとえば、最初のページまたは明確なページのプレビューのみが必要な場合に適用できます。

また、次のプロパティを使用して、出力画質とピクセル形式を制御することもできます– [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), 次のプロパティを使用して、画像の色の設定を設定するだけでなく、– [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

また、[JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality)や[TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression)など、特定の形式に適用されるプロパティもあります。

次のコード例は、いくつかの追加設定を適用して最初のドキュメントページのプレビューを作成する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
