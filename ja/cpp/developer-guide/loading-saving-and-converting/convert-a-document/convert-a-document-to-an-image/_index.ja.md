---
title: C++で文書を画像に変換する
second_title: C++の場合Aspose.Words
articleTitle: 文書を画像に変換する
linktitle: 文書を画像に変換する
type: docs
description: "文書を画像形式（JPG、PNGなど）に変換します。 ドキュメントプレビューを作成するか、ドキュメントスキャンを作成して請求書を送信します。"
weight: 43
url: /ja/cpp/convert-a-document-to-an-image/
timestamp: 2024-01-30-16-22-34
---

DOCXやPDFなどの他の形式の文書の代わりに画像を取得する必要がある場合があります。 たとえば、ドキュメントページのプレビューをwebサイトまたはアプリケーションに追加したり、ドキュメントの「スキャン」を作成して請求書を送信したりする必要があります。 これは、任意の[supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/)の文書を任意の[supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/)の画像に変換する必要がある場合です。

## 画像形式に変換する

既に説明したすべての変換例と同様に、新しいドキュメントを作成するか、既存のドキュメントをサポートされている任意の形式でロードし、必要な変更を加えて、JPEG、PNG、BMPなどの使用可能な画像形式で保存する必要があります。

次のコード例は、DOCXをJPEGに変換する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## 画像に変換するときに保存オプションを指定する

Aspose.Wordsは、ドキュメントをさまざまな画像形式で保存する方法をより詳細に制御できる[ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/)クラスを提供します。 このクラスの一部のプロパティは、[FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/)や[SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/)などの基本クラスのプロパティを継承またはオーバーロードしますが、画像の保存に固有のオプションもあり

[PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/)プロパティを使用して、画像形式に変換するページを指定することができます。 たとえば、最初のページまたは明確なページのプレビューのみが必要な場合に適用できます。

また、次のプロパティを使用して、出力画質とピクセル形式を制御することもできます– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), 次のプロパティを使用して、画像の色の設定を設定するだけでなく、– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

また、[JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/)や[TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/)など、特定の形式に適用されるプロパティもあります。

次のコード例は、いくつかの追加設定を適用して最初のドキュメントページのプレビューを作成する方法を示しています:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
