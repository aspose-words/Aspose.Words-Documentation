---
title: C# でのロード オプションの指定
second_title: .NET用Aspose.Words
articleTitle: ロードオプションの指定
linktitle: ロードオプションの指定
description: "C# を使用してロード プロセスをより正確に制御します。"
type: docs
weight: 10
url: /ja/net/specify-load-options/
timestamp: 2024-07-09-19-00-42
---

ドキュメントをロードするときに、いくつかの詳細プロパティを設定できます。 Aspose.Words は、ロード プロセスをより正確に制御できる [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) クラスを提供します。一部のロード形式には、このロード形式のロード オプションを保持する対応するクラスがあります。たとえば、PDF 形式にロードする場合は [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/)、TXT にロードする場合は [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) があります。この記事では、**LoadOptions** クラスのオプションを使用する例を示します。

## Microsoft Word バージョンを設定して外観を変更する

Microsoft Word アプリケーションのバージョンが異なると、ドキュメントの表示方法も異なります。たとえば、WPS Office を使用して作成された DOCX や DOTX などの OOXML ドキュメントにはよく知られた問題があります。このような場合、重要なドキュメント マークアップ要素が欠落しているか、異なる解釈が行われる可能性があり、その結果、Microsoft Word 2019 ではそのようなドキュメントが Microsoft Word 2010 と比べて異なって表示されます。

デフォルトでは、Aspose.Words は Microsoft Word 2019 ルールを使用してドキュメントを開きます。ドキュメントの読み込みを以前の Microsoft Word アプリケーション バージョンのいずれかで行われたように表示する必要がある場合は、**LoadOptions** クラスの [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) プロパティを使用して目的のバージョンを明示的に指定する必要があります。

次のコード例は、ロード オプションを使用して Microsoft Word バージョンを設定する方法を示しています。

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## 言語設定を行って外観を変更する

Microsoft Word でのドキュメントの表示の詳細は、アプリケーションのバージョンと **MswVersion** プロパティの値だけでなく、言語設定にも依存します。 Microsoft Word では、[[ファイル] → [オプション] → [] にある [Office 言語設定] ダイアログの設定に応じて、ドキュメントの表示言語が異なる場合があります。このダイアログを使用する場合、ユーザーは主言語、補正言語、表示言語などAspose.Wordsでは、このダイアログと同等の [LanguagePreferences]](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) プロパティが提供されます。 Aspose.Words 出力が Microsoft Word 出力と異なる場合は、**EditingLanguage** に適切な値を設定します。これにより、出力ドキュメントが改善される可能性があります。

次のコード例は、日本語を **EditingLanguage** として設定する方法を示しています。

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## WarningCallback を使用してドキュメントのロード時の問題を制御する

一部のドキュメントは破損しているか、無効なエントリが含まれているか、Aspose.Words で現在サポートされていない機能を含んでいる可能性があります。ドキュメントのロード中に発生した問題について知りたい場合は、Aspose.Words が [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) インターフェイスを提供します。

次のコード例は、**IWarningCallback** インターフェイスの実装を示しています。

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

ロード時間中のすべての問題に関する情報を取得するには、[WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/) プロパティを使用します。

次のコード例は、このプロパティの使用方法を示しています。

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## ResourceLoadingCallback を使用して外部リソースの読み込みを制御する

ドキュメントには、ローカル ディスク、ネットワーク、またはインターネット上のどこかにある画像への外部リンクが含まれている場合があります。 Aspose.Words はそのような画像をドキュメントに自動的に読み込みますが、このプロセスを制御する必要がある場合があります。たとえば、特定の画像を本当にロードする必要があるか、それともスキップする必要があるかを判断するためです。 [ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/) ロード オプションを使用すると、これを制御できます。

次のコード例は、[IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/) インターフェイスの実装を示しています。

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

次のコード例は、**ResourceLoadingCallback** プロパティの使用方法を示しています。

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## TempFolder を使用してメモリ例外を回避する

Aspose.Words は、豊富なコンテンツが詰まった何千ページもの非常に大きなドキュメントをサポートします。このようなドキュメントをロードするには、大量の RAM が必要になる場合があります。読み込みの過程で、Aspose.Words はドキュメントの解析に使用される一時構造を保持するためにさらに多くのメモリを必要とします。

ドキュメントの読み込み中にメモリ不足例外が発生する場合は、[TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/) プロパティを使用してみてください。この場合、Aspose.Words は一部のデータをメモリではなく一時ファイルに保存するため、このような例外を回避できます。

次のコード例は、**TempFolder** を設定する方法を示しています。

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## エンコーディングを明示的に設定する

最新のドキュメント形式のほとんどはコンテンツを Unicode で保存するため、特別な処理は必要ありません。一方で、Unicode 以前のエンコーディングを使用するドキュメントが依然として多くあり、エンコーディング情報が欠落しているか、エンコーディング情報を本質的にサポートしていない場合があります。 Aspose.Words はデフォルトで適切なエンコーディングを自動的に検出しようとしますが、まれに、エンコーディング認識アルゴリズムによって検出されたエンコーディングとは異なるエンコーディングを使用する必要がある場合があります。この場合、[Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/) プロパティを使用してエンコーディングを取得または設定します。

次のコード例は、自動的に選択されたエンコーディングをオーバーライドするエンコーディングを設定する方法を示しています。

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## 暗号化されたドキュメントをロードする

パスワードで暗号化された Word 文書を読み込むことができます。これを行うには、[LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) オブジェクトを受け入れる特別なコンストラクター オーバーロードを使用します。このオブジェクトには、パスワード文字列を指定する [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/) プロパティが含まれています。

次のコード例は、パスワードで暗号化されたドキュメントをロードする方法を示しています。

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

ファイルが暗号化されているかどうかが事前にわからない場合は、[FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/) クラスを使用できます。このクラスは、ファイル形式の検出やファイル拡張子とファイル形式の列挙間の変換など、ファイル形式を操作するためのユーティリティ メソッドを提供します。ドキュメントが暗号化されており、開くためにパスワードが必要かどうかを検出するには、[IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) プロパティを使用します。

次のコード例は、OpenDocument が暗号化されているかどうかを確認する方法を示しています。

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
