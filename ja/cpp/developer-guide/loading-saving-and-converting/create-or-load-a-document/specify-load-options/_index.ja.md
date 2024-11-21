---
title: C++でのロードオプションの指定
second_title: C++の場合Aspose.Words
articleTitle: ロードオプションの指定
linktitle: ロードオプションの指定
description: "より正確に負荷プロセスを制御して下さい。"
type: docs
weight: 10
url: /ja/cpp/specify-load-options/
timestamp: 2024-01-30-16-22-34
---

ドキュメントを読み込むときに、いくつかの高度なプロパティを設定できます。 Aspose.Wordsは、ロードプロセスのより正確な制御を可能にする[LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/)クラスを提供します。 たとえば、PDF形式への読み込みには[PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/)、TXTへの読み込みには[TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/)があります。 この記事では、**LoadOptions**クラスのオプションを使用する例を示します。

## 外観を変更するにはMicrosoft Wordバージョンを設定します

Microsoft Wordアプリケーションの異なるバージョンでは、ドキュメントを無関心に表示できます。 たとえば、WPS Officeを使用して作成されたDOCXやDOTXなどのOOXML文書にはよく知られている問題があります。 このような場合、必須の文書マークアップ要素が欠落している可能性があるか、Microsoft Word2019がMicrosoft Word2010と比較してそのような文書を異なる方法で表示する原因とな

デフォルトでAspose.WordsはMicrosoft Word2019ルールを使用してドキュメントを開きます。 以前のMicrosoft Wordアプリケーションバージョンのいずれかで発生するようにドキュメントのロードを表示する必要がある場合は、**LoadOptions**クラスの[MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/)プロパティを使用して目的のバージョンを明示的に指定する必要があります。

次のコード例は、loadオプションを使用してMicrosoft Wordバージョンを設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## 外観を変更するには、言語環境設定を設定します

Microsoft Word でのドキュメントの表示の詳細は、アプリケーションのバージョンと **MswVersion** プロパティ値だけでなく、言語設定にも依存します。Microsoft Word では、[ファイル] → [オプション] → [言語] にある [Office 言語設定] ダイアログの設定に応じて、ドキュメントの表示が異なる場合があります。このダイアログを使用して、ユーザーは、たとえば、プライマリ言語、校正言語、表示言語などを選択できます。Aspose.Words では、このダイアログに相当する [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) プロパティが提供されます。Aspose.Words の出力が Microsoft Word の出力と異なる場合は、**EditingLanguage** に適切な値を設定します。これにより、出力ドキュメントが改善されます。

次のコード例は、日本語を**EditingLanguage**に設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## ドキュメントの読み込み中の問題を制御するにはWarningCallbackを使用します

一部の文書が破損しているか、無効なエントリが含まれているか、現在Aspose.Wordsでサポートされていない機能を持っている可能性があります。 ドキュメントの読み込み中に発生した問題について知りたい場合は、Aspose.Wordsは[IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/)インターフェイスを提供します。

次のコード例は、**IWarningCallback**インターフェイスの実装を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

読み込み時間中のすべての問題に関する情報を取得するには、`WarningCallback`プロパティを使用します。

次のコード例は、このプロパティを使用する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## ResourceLoadingCallbackを使用して外部リソースの読み込みを制御します

ドキュメントには、ローカルディスク、ネットワーク、またはインターネット上のどこかにあるイメージへの外部リンクが含まれている場合があります。 Aspose.Wordsはこのような画像を自動的に文書に読み込みますが、このプロセスを制御する必要がある状況があります。 たとえば、特定の画像を本当にロードする必要があるのか、それともスキップする必要があるのかを判断します。 ResourceLoadingCallbackloadオプションを使用すると、これを制御できます。

次のコード例は、IResourceLoadingCallbackインターフェイスの実装を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

次のコード例は、**ResourceLoadingCallback**プロパティを使用する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## メモリ例外を回避するにはTempFolderを使用します

Aspose.Wordsは、リッチコンテンツでいっぱいの数千ページの非常に大きな文書をサポートします。 負荷などの書類が必要かに違います。 読み込みの過程で、Aspose.Wordsは文書を解析するために使用される一時構造体を保持するためにさらに多くのメモリを必要とします。

ドキュメントの読み込み中にメモリ不足の例外に問題がある場合は、[TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/)プロパティを使用してみてください。 この場合、Aspose.Wordsは一部のデータをメモリではなく一時ファイルに保存し、このような例外を回避するのに役立ちます。

次のコード例は、**TempFolder**を設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## エンコーディングを明示的に設定する

最新のドキュメント形式のほとんどは、コンテンツをUnicodeで保存し、特別な処理を必要としません。 一方、Unicode以前のエンコーディングを使用しており、エンコーディング情報を見逃したり、エンコーディング情報を本質的にサポートしていないドキュメント Aspose.Wordsはデフォルトで適切なエンコーディングを自動的に検出しようとしますが、まれにエンコーディング認識アルゴリズムで検出されたエンコーディングとは異なるエンコーディングを使用する必要がある場合があります。 この場合、[Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/)プロパティを使用してエンコーディングを取得または設定します。

次のコード例は、自動的に選択されたエンコーディングを上書きするようにエンコーディングを設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## 暗号化された文書を読み込む

パスワードで暗号化されたWord文書を読み込むことができます。 これを行うには、[LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/)オブジェクトを受け入れる特別なコンストラクタオーバーロードを使用します。 このオブジェクトには、パスワード文字列を指定する[Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/)プロパティが含まれています。

次のコード例は、パスワードで暗号化されたドキュメントを読み込む方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

ファイルが暗号化されているかどうかが事前にわからない場合は、[FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/)クラスを使用して、ファイル形式を検出したり、ファイル拡張子をファイル形式の列挙に変換したりするなど、ファイル形式を操作するためのユーティリティメソッドを提供します。 文書が暗号化されていて、それを開くためにパスワードが必要かどうかを検出するには、`IsEncrypted`プロパティを使用します。

次のコード例は、OpenDocumentが暗号化されているかどうかを確認する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}
