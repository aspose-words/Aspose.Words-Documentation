---
title: ドキュメントを複数ページの TIFF として保存する
second_title: Python via .NET用Aspose.Words
articleTitle: ドキュメントを複数ページの TIFF として保存する
linktitle: ドキュメントを複数ページの TIFF として保存する
description: "Python を使用してドキュメントをマルチページ TIFF に変換します。ドキュメントが画像上でどのように表示されるかを決定するには、解像度、ページ数、画像の二値化などの追加オプションを指定する必要があります。"
type: docs
weight: 30
url: /ja/python-net/saving-a-document-as-a-multipage-tiff/
---

ドキュメントを操作するとき、多くの場合、ドキュメントをラスター イメージ ファイルに変換する必要があります。これは、文書を読み取り可能で印刷可能だが編集できない形式で提示する必要がある場合に特に関係します。たとえば、ドキュメントの最初のページのラスター イメージをプレビューとして使用できます。この記事では、最も一般的な画像形式の 1 つである TIFF 形式の例を使用して、ドキュメントをラスター イメージに変換する方法について説明します。

## DOC からマルチページ TIFF への変換

Aspose.Words では、「保存先」パスと関連するファイル拡張子を [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) メソッドに渡すだけで、DOC から TIFF への変換を 1 行のコードで実行できます。 [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) メソッドは、パスで指定されたファイル名拡張子から [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) を自動的に取得します。次の例は、ドキュメントを TIFF 形式に変換する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## TIFF レンダリング時の追加オプションの指定

多くの場合、レンダリング結果に影響する追加オプションを指定する必要があります。この目的のために、ドキュメントが画像上にどのように表示されるかを決定するプロパティを含む [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) クラスを使用します。以下を指定できます。

- 使用可能なオプションのリストを決定するための保存形式 ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- 解像度 ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/)、[vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- ページ数 ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- 色と照明の設定 ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/)、[image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/)、[image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/)、[image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- 画質（[jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/)、[scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/)、[tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/)）
・画像を二値化する方式（[tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/)、[threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/)）
- 生成された画像のピクセル形式 ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/)、[use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/)) による Windows メタファイルの処理
- [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) クラスで確認できる追加オプション

次の例は、構成されたオプションを使用して DOC を TIFF に変換する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## TIFF二値化の閾値

TIFF イメージは、[pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) プロパティを [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) ピクセル形式タイプに設定し、[tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) プロパティを [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) または [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4) に設定することにより、1bpp 白黒形式で保存できます。

画像のセグメンテーションには、Aspose.Words は最も単純な方法であるしきい値処理を使用します。この方法では、しきい値を使用して、グレースケール TIFF イメージをバイナリ イメージに変換します。したがって、ドキュメントを TIFF ファイル形式に変換する必要がある場合は、[threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/) プロパティを介して TIFF バイナリ化のしきい値を取得または設定できます。このプロパティのデフォルト値は 128 に設定されており、この値が高くなるほど、画像は暗くなります。

次の例は、指定されたしきい値を使用して TIFF バイナリ化を実行する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

以下では、さまざまなしきい値で TIFF 二値化が実行された画像を比較できます。

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="文書を複数ページとして保存する-tiff-aspose-words-net" style="width:800px"/>
