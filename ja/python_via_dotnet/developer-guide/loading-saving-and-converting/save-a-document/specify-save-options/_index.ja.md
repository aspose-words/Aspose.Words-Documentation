---
title: Python での保存オプションの指定
second_title: Python via .NET用Aspose.Words
articleTitle: 保存オプションの指定
linktitle: 保存オプションの指定
description: "Python を使用して保存プロセスをより正確に制御します。"
type: docs
weight: 10
url: /ja/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

ドキュメントを保存するときに、いくつかの詳細プロパティを設定できます。 Aspose.Words は、保存プロセスをより正確に制御できる [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) クラスを提供します。 [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) オブジェクトを受け入れる [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) メソッドのオーバーロードがあります。これは、[SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) クラスから派生したクラスのオブジェクトである必要があります。各保存形式には、この保存形式の保存オプションを保持する対応するクラスがあります。たとえば、PDF 形式に保存する場合は [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/)、画像に保存する場合は [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) があります。この記事では、[SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) から派生したいくつかのオプション クラスの操作例を示します。

次のコード例は、ドキュメントを HTML に保存する前に保存オプションを設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

{{% /alert %}}

この記事では、ドキュメントを保存するときに制御できるいくつかのプロパティについて説明します。

## パスワードを使用してドキュメントを暗号化する

**パスワード** プロパティを使用して、暗号化されたドキュメントのパスワードを取得または設定します。選択したドキュメント形式を操作するには、対応するクラスの **パスワード** プロパティを使用します。

たとえば、ドキュメントを DOC または DOT 形式で保存する場合は、[DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) クラスの [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) プロパティを使用します。

次のコード例は、RC4 暗号化方式を使用してドキュメントを暗号化するためのパスワードを設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

ドキュメントを [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) 形式で保存する場合は、[OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) クラスの [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) プロパティを使用します。

次のコード例は、パスワードで暗号化された Docx をロードおよび保存する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

すべての形式が暗号化と **パスワード** プロパティの使用をサポートしているわけではありません。

## ドキュメント作成時刻を更新する

Aspose.Words は、[created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) プロパティを使用してドキュメントの作成日を UTC で取得または設定する機能を提供します。 [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/) オプションを使用して、保存する前にこの値を更新することもできます。

次のコード例は、ドキュメントの作成時間を更新する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## 最後に保存したプロパティを更新する

Aspose.Words は、[update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) プロパティを使用して、[last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) プロパティが保存前に更新されるかどうかを決定する値を取得または設定する機能を提供します。

次のコード例は、このプロパティを設定してドキュメントを保存する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## 白黒画像を 1 ビット/ピクセル形式で保存する

画像保存オプションを制御するには、[ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) クラスが使用されます。たとえば、[pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) プロパティを使用して、生成される画像のピクセル形式を設定できます。 Skiaの作業により、出力画像のピクセル形式が設定値と異なる場合がありますのでご了承ください。

次のコード例は、白黒画像を 1 ピクセルあたり 1 ビットの形式で保存する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
