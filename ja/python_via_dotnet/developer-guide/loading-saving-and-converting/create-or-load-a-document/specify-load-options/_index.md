---
title: Python でのロード オプションの指定
second_title: Python via .NET用Aspose.Words
articleTitle: ロードオプションの指定
linktitle: ロードオプションの指定
description: "Python を使用してロード プロセスをより正確に制御します。"
type: docs
weight: 10
url: /ja/python-net/specify-load-options/
---

ドキュメントをロードするときに、いくつかの詳細プロパティを設定できます。 Aspose.Words は、ロード プロセスをより正確に制御できる [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) クラスを提供します。一部のロード形式には、このロード形式のロード オプションを保持する対応するクラスがあります。たとえば、PDF 形式にロードする場合は [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/)、TXT にロードする場合は [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) があります。この記事では、[LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) クラスのオプションを使用する例を示します。

## Microsoft Word バージョンを設定して外観を変更する

Microsoft Word アプリケーションのバージョンが異なると、ドキュメントの表示方法も異なります。たとえば、WPS Office を使用して作成された DOCX や DOTX などの OOXML ドキュメントにはよく知られた問題があります。このような場合、重要なドキュメント マークアップ要素が欠落しているか、異なる解釈が行われる可能性があり、その結果、Microsoft Word 2019 ではそのようなドキュメントが Microsoft Word 2010 と比べて異なって表示されます。

デフォルトでは、Aspose.Words は Microsoft Word 2019 ルールを使用してドキュメントを開きます。ドキュメントの読み込みを以前の Microsoft Word アプリケーション バージョンのいずれかで行われたように表示する必要がある場合は、[LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) クラスの [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) プロパティを使用して目的のバージョンを明示的に指定する必要があります。

次のコード例は、ロード オプションを使用して Microsoft Word バージョンを設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## 言語設定を行って外観を変更する

Microsoft Word でのドキュメントの表示の詳細は、アプリケーションのバージョンと [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) プロパティの値だけでなく、言語設定にも依存します。 Microsoft Word では、[[ファイル] → [オプション] → [] にある [Office 言語設定] ダイアログの設定に応じて、ドキュメントの表示言語が異なる場合があります。このダイアログを使用する場合、ユーザーは主言語、補正言語、表示言語などAspose.Wordsでは、このダイアログと同等の [ language_preferences ]](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) プロパティが提供されます。 Aspose.Words 出力が Microsoft Word 出力と異なる場合は、[EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) に適切な値を設定します。これにより、出力ドキュメントが改善される可能性があります。

次のコード例は、日本語を [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) として設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## TempFolder を使用してメモリ例外を回避する

Aspose.Words は、豊富なコンテンツが詰まった何千ページもの非常に大きなドキュメントをサポートします。このようなドキュメントをロードするには、大量の RAM が必要になる場合があります。読み込みの過程で、Aspose.Words はドキュメントの解析に使用される一時構造を保持するためにさらに多くのメモリを必要とします。

ドキュメントの読み込み中にメモリ不足例外が発生する場合は、[temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/) プロパティを使用してみてください。この場合、Aspose.Words は一部のデータをメモリではなく一時ファイルに保存するため、このような例外を回避できます。

次のコード例は、[temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/) を設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## エンコーディングを明示的に設定する

最新のドキュメント形式のほとんどはコンテンツを Unicode で保存するため、特別な処理は必要ありません。一方で、Unicode 以前のエンコーディングを使用するドキュメントが依然として多くあり、エンコーディング情報が欠落しているか、エンコーディング情報を本質的にサポートしていない場合があります。 Aspose.Words はデフォルトで適切なエンコーディングを自動的に検出しようとしますが、まれに、エンコーディング認識アルゴリズムによって検出されたエンコーディングとは異なるエンコーディングを使用する必要がある場合があります。この場合、[encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) プロパティを使用してエンコーディングを取得または設定します。

次のコード例は、自動的に選択されたエンコーディングをオーバーライドするエンコーディングを設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## 暗号化されたドキュメントをロードする

パスワードで暗号化された Word 文書を読み込むことができます。これを行うには、[LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) オブジェクトを受け入れる特別なコンストラクター オーバーロードを使用します。このオブジェクトには、パスワード文字列を指定する [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/) プロパティが含まれています。

次のコード例は、パスワードで暗号化されたドキュメントをロードする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

ファイルが暗号化されているかどうかが事前にわからない場合は、[FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/) クラスを使用できます。このクラスは、ファイル形式の検出やファイル拡張子とファイル形式の列挙間の変換など、ファイル形式を操作するためのユーティリティ メソッドを提供します。ドキュメントが暗号化されており、開くためにパスワードが必要かどうかを検出するには、[is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) プロパティを使用します。

次のコード例は、ドキュメントが暗号化されているかどうかを確認する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
