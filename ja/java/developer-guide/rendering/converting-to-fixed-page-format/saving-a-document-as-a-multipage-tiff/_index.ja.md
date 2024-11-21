---
title: ドキュメントをマルチページTIFFとして保存 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ドキュメントをマルチページTIFFとして保存する
linktitle: ドキュメントをマルチページTIFFとして保存する
description: "ドキュメントをラスターイメージに変換し、TIFF形式の例で説明しています。 TIFFの表示方法を決定するには、解像度、ページ数、画像のバイナライゼーションなどの追加オプションを指定する必要があります。 Javaお問い合わせ"
type: docs
weight: 30
url: /ja/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

文書を扱うときは、文書をラスターイメージファイル(s)に変換する必要があります。 これは、読みやすく、印刷可能な形式で文書を提示する必要がある場合に特に関連していますが、編集可能な形式ではありません。 たとえば、ドキュメントの最初のページのラスタイメージをプレビューとして使用できます。 この記事では、より一般的な画像フォーマットの1つであるTIFF形式の例を使用して、文書をラスターイメージに変換する方法について説明します。

## DOCをマルチページTIFFに変換する

インスタグラム Aspose.Words, DOCからTIFFへの変換は、単に「保存」パスと関連するファイル拡張子を渡すことによって、コードの1行で実行することができます [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) メソッド。 ザ・オブ・ザ・ **Save** メソッドは自動的に導きます `SaveFormat` パスで指定されたファイル名拡張子から。 次の例では、文書をTIFF形式に変換する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## TIFFをレンダリングするときの追加オプションを指定する

レンダリング結果に影響を与える追加のオプションを指定する必要があります。 そのためには、 [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) クラスは、画像に文書が表示される方法を決定するプロパティが含まれています。 以下を指定できます。

- 利用可能なオプションのリストを決定するフォーマットを保存します([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- 決断([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- ページ数(ページ数)[PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- 色と照明の設定([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- イメージの質([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- 画像をバイナライズするために使用されるメソッド([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- 生成された画像のピクセル形式([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- - - Windows メタファイルによる処理 Aspose.Words ( )[MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- あなたが見ることができる追加のオプション **ImageSaveOptions** レッスン

次の例では、DOCをTIFFに変換し、設定されたオプションで表示する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## TIFFの結合のための境界

TIFF画像は1bpp b/w形式で保存できます。 [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) Format1bppIndexed ピクセル形式タイプ、および [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) Ccitt3 または Ccitt4 のいずれかのプロパティ。

イメージの区分のため、 Aspose.Words 最も単純なメソッド - しきい値を使用する。 この方法は、閾値値を使用して、グレースケールのTIFF画像をバイナリ画像に変換します。 そのため、文書がTIFFファイルフォーマットに変換する必要がある場合は、TIFFの偏見値を取得するか、またはTIFFの偏見を設定することができます [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) 宿泊施設 このプロパティのデフォルト値は128に設定され、この値が高いと、イメージを暗くします。

次の例では、指定された閾値で TIFF バイナライゼーションを実行する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

TIFF バイナライゼーションがさまざまな閾値で実行された画像を比較できます。

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
