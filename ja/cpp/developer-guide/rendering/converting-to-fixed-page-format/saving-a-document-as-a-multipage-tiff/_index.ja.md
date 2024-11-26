---
title: C++での複数ページTIFFとしての文書の保存
second_title: C++の場合Aspose.Words
articleTitle: ドキュメントを複数ページTIFFとして保存する
linktitle: ドキュメントを複数ページTIFFとして保存する
description: "C++を使用して、ドキュメントを複数ページのTIFFに変換します。 文書が画像にどのように表示されるかを決定するには、解像度、ページ数、画像の二値化などの追加オプションを指定する必要があります。"
type: docs
weight: 40
url: /ja/cpp/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

ドキュメントを操作するときは、ドキュメントをラスターイメージファイルに変換する必要があることがよくあります。 これは、文書を読み取り可能で印刷可能であるが編集可能ではない形式で提示する必要がある場合に特に関連します。 たとえば、ドキュメントの最初のページのラスターイメージをプレビューとして使用できます。 この記事では、より一般的な画像形式の1つであるTIFF形式の例を使用して、ドキュメントをラスターイメージに変換する方法について説明します。

## DOCをマルチページTIFFに変換する

Aspose.Wordsでは、DOCからTIFFへの変換は、"save to"パスと関連するファイル拡張子を[Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/)メソッドに渡すだけで、1行のコードで実行できます。 **Save**メソッドは、パスで指定されたファイル名拡張子から`SaveFormat`を自動的に導出します。 次の例は、ドキュメントをTIFF形式に変換する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## TIFFのレンダリング時の追加オプションの指定

多くの場合、レンダリング結果に影響する追加オプションを指定する必要があります。この目的には、ドキュメントをイメージ上に表示する方法を決定するプロパティを含む [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) クラスを使用します。次のものを指定できます。

- 使用可能なオプション([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))のリストを決定するための形式を保存します
- 解像度([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- ページ数([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/),[PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- 色と照明の設定([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- イメージの質([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- イメージを二値化するために使用されるメソッド([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/),[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- 生成された画像のピクセル形式([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windowsメタファイルを処理するには、次のようにします。Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- **ImageSaveOptions**クラスで見ることができる追加のオプション

次の例は、構成されたオプションを使用してDOCをTIFFに変換する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## TIFF二値化のしきい値

[PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/)プロパティをFormat1bppIndexedpixel format typeに設定し、`TiffCompression`プロパティをCcitt3またはCcitt4に設定することで、TIFFイメージを1bpp b/w形式で保存できます。

画像セグメンテーションの場合、Aspose.Wordsは最も単純な方法であるしきい値処理を使用します。 この方法では、しきい値を使用して、グレースケールTIFF画像をバイナリ画像に変換します。 したがって、文書をTIFFファイル形式に変換する必要がある場合は、[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/)プロパティを介してTIFF二値化のしきい値を取得または設定することができます。 このプロパティのデフォルト値は128に設定されており、この値が大きいほど画像は暗くなります。

次の例は、指定したしきい値を使用してTIFF二値化を実行する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

以下では、さまざまなしきい値でTIFF二値化が実行された画像を比較できます:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
