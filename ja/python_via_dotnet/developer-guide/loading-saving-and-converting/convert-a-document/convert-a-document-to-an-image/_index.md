---
title: ドキュメントを画像に変換する
second_title: Python via .NET用Aspose.Words
articleTitle: ドキュメントを画像に変換する
linktitle: ドキュメントを画像に変換する
type: docs
description: "ドキュメントを画像形式 (JPG、PNG など) に変換します。 Python を使用して請求書を送信するには、ドキュメント プレビューを作成するか、ドキュメント スキャンを作成します。"
weight: 43
url: /ja/python-net/convert-a-document-to-an-image/
---

場合によっては、DOCX や PDF などの他の形式のドキュメントの代わりに画像を取得する必要があります。たとえば、ドキュメント ページのプレビューを Web サイトやアプリケーションに追加したり、請求書を送信するためにドキュメントの「スキャン」を作成したりする必要があります。この場合、[サポートされているロード形式](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) のドキュメントを [サポートされている保存形式](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) の画像に変換する必要がある場合があります。

## 画像形式{#convert-to-image-format}に変換

すでに説明したすべての変換例と同様に、新しいドキュメントを作成するか、サポートされている形式で既存のドキュメントをロードし、必要な変更を加えて、JPEG、PNG、BMP などの使用可能な画像形式で保存する必要があります。

次のコード例は、PDF を JPEG に変換する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## イメージ {#specify-save-options-when-converting-to-an-image} に変換するときに保存オプションを指定する

Aspose.Words には、ドキュメントをさまざまな画像形式で保存する方法をより詳細に制御できる [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) クラスが用意されています。このクラスの一部のプロパティは、[FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) や [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) などの基本クラスのプロパティを継承またはオーバーロードしますが、画像の保存に固有のオプションもあります。

[page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/) プロパティを使用して、画像形式に変換するページを指定できます。たとえば、最初のページまたは特定のページのプレビューのみが必要な場合に適用できます。

また、[horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/)、[vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/)、[scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/)、[pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) のプロパティを使用して出力画像の品質とピクセル形式を制御したり、[image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/)、[image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/)、[image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/)、[paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/) のプロパティを使用して画像の色の設定をセットアップしたりすることもできます。

[jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) や [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) など、特定の形式に適用されるプロパティもあります。

次のコード例は、いくつかの追加設定を適用して最初のドキュメント ページのプレビューを作成する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
