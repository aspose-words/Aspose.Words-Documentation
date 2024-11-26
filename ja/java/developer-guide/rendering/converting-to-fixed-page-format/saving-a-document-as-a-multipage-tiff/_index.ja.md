---
title: 文書を複数ページTIFFとしてJavaに保存する
second_title: Aspose.WordsのためのJava
articleTitle: 文書を複数ページとして保存するTIFF
linktitle: 文書を複数ページとして保存するTIFF
description: "ドキュメントをラスターイメージに変換します。TIFF形式の例で説明します。 TIFFの表示方法を決定するには、Javaを使用して解像度、ページ数、画像の二値化などの追加オプションを指定する必要があります。"
type: docs
weight: 30
url: /ja/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

ドキュメントを操作するときは、ドキュメントをラスターイメージファイルに変換する必要があることがよくあります。 これは、文書を読み取り可能で印刷可能であるが編集可能ではない形式で提示する必要がある場合に特に関連します。 たとえば、ドキュメントの最初のページのラスターイメージをプレビューとして使用できます。 この記事では、一般的な画像形式の1つであるTIFF形式の例を使用して、ドキュメントをラスターイメージに変換する方法について説明します。

## DOCを複数ページTIFFに変換する

Aspose.Wordsでは、DOCからTIFFへの変換は、"save to"パスと関連するファイル拡張子を[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions)メソッドに渡すだけで、1行のコードで実行できます。 **Save**メソッドは、パスで指定されたファイル名拡張子から`SaveFormat`を自動的に導出します。 次の例は、文書をTIFF形式に変換する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## TIFFのレンダリング時の追加オプションの指定

多くの場合、レンダリング結果に影響する追加オプションを指定する必要があります。この目的には、ドキュメントをイメージ上に表示する方法を決定するプロパティを含む [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) クラスを使用します。次のものを指定できます。

- 使用可能なオプション([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))のリストを決定するための形式を保存します
- 解像度([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- ページ数([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/),[PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- 色と照明の設定([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- イメージの質([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- イメージを二値化するために使用されるメソッド([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod),[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- 生成された画像のピクセル形式([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windowsメタファイルを処理するには、次のようにします。Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- **ImageSaveOptions**クラスで見ることができる追加のオプション

次の例は、設定されたオプションを使用してDOCをTIFFに変換する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## TIFF二値化のしきい値

[PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat)プロパティをFormat1bppIndexedピクセル形式の種類に設定し、[TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression)プロパティをCcitt3またはCcitt4のいずれかに設定することにより、TIFF画像を1bpp b/w形式で保存できます。

画像セグメンテーションの場合、Aspose.Wordsは最も単純な方法であるしきい値処理を使用します。 この方法では、しきい値を使用して、グレースケールTIFF画像をバイナリ画像に変換します。 したがって、文書をTIFFファイル形式に変換する必要がある場合は、[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering)プロパティを介してTIFF二値化のしきい値を取得または設定することができます。 このプロパティのデフォルト値は128に設定されており、この値が大きいほど画像は暗くなります。

次の例は、指定したしきい値を使用してTIFF二値化を実行する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

以下では、さまざまなしきい値でTIFF二値化が実行されたイメージを比較できます:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
