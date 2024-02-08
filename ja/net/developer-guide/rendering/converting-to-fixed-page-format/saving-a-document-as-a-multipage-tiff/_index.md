---
title: C# でドキュメントをマルチページ TIFF として保存する
second_title: .NET用Aspose.Words
articleTitle: ドキュメントを複数ページの TIFF として保存する
linktitle: ドキュメントを複数ページの TIFF として保存する
description: "C# を使用してドキュメントをマルチページ TIFF に変換します。ドキュメントが画像上でどのように表示されるかを決定するには、解像度、ページ数、画像の二値化などの追加オプションを指定する必要があります。"
type: docs
weight: 30
url: /ja/net/saving-a-document-as-a-multipage-tiff/
---

ドキュメントを操作するとき、多くの場合、ドキュメントをラスター イメージ ファイルに変換する必要があります。これは、文書を読み取り可能で印刷可能だが編集できない形式で提示する必要がある場合に特に関係します。たとえば、ドキュメントの最初のページのラスター イメージをプレビューとして使用できます。この記事では、最も一般的な画像形式の 1 つである TIFF 形式の例を使用して、ドキュメントをラスター イメージに変換する方法について説明します。

## DOC からマルチページ TIFF への変換

Aspose.Words では、「保存先」パスと関連するファイル拡張子を [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) メソッドに渡すだけで、DOC から TIFF への変換を 1 行のコードで実行できます。 **Save** メソッドは、パスで指定されたファイル名拡張子から `SaveFormat` を自動的に派生します。次の例は、ドキュメントを TIFF 形式に変換する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## TIFF レンダリング時の追加オプションの指定

多くの場合、レンダリング結果に影響する追加オプションを指定する必要があります。この目的のために、ドキュメントが画像上にどのように表示されるかを決定するプロパティを含む [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) クラスを使用します。以下を指定できます。

- 使用可能なオプションのリストを決定するための保存形式 ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- 解像度（[HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/)、[VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/)、[Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution)）
- ページ数 ([PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/)、[PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/))
- 色と照明の設定 ([PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/)、[ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/)、[ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/)、[ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- 画質 ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/)、[Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/)、[TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/)、[GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
・画像を二値化する方式（[TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/)、[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering)）
- 生成された画像のピクセル形式 ([PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/)、[UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer)) による Windows メタファイルの処理
- **ImageSaveOptions** クラスで確認できる追加オプション

次の例は、構成されたオプションを使用して DOC を TIFF に変換する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## TIFF二値化の閾値

TIFF イメージは、[PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) プロパティを Format1bppIndexed ピクセル形式タイプに設定し、[TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) プロパティを Ccitt3 または Ccitt4 に設定することにより、1bpp 白黒形式で保存できます。

画像のセグメンテーションには、Aspose.Words は最も単純な方法であるしきい値処理を使用します。この方法では、しきい値を使用して、グレースケール TIFF イメージをバイナリ イメージに変換します。したがって、ドキュメントを TIFF ファイル形式に変換する必要がある場合は、[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/) プロパティを介して TIFF バイナリ化のしきい値を取得または設定できます。このプロパティのデフォルト値は 128 に設定されており、この値が高くなるほど、画像は暗くなります。

次の例は、指定されたしきい値を使用して TIFF バイナリ化を実行する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

以下では、さまざまなしきい値で TIFF 二値化が実行された画像を比較できます。

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="文書を複数ページとして保存する-tiff-aspose-words-net" style="width:800px"/>
