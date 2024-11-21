---
title: ロードオプションを指定する Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ロードオプションを指定する
linktitle: ロードオプションを指定する
description: "ドキュメントをロードするときに高度なプロパティを設定する Java プロセスのより精密な制御を得るために。"
type: docs
weight: 10
url: /ja/java/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

ドキュメントをロードすると、高度なプロパティを設定できます。 Aspose.Words あなたに提供する [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) 負荷プロセスのより精密な制御を可能にするクラス。 いくつかのロードフォーマットには、このロードフォーマットのロードオプションを保持する対応するクラスがあります。例えば、 [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) PDF形式への読み込みまたは [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) TXTへのローディングのため。 この記事では、オプションの動作例を提供しています **LoadOptions** クラス。

## セット Microsoft Word 外観を変更するバージョン

異なるバージョンの Microsoft Word 適用は異なった文書を表示できます。 たとえば、DOCX などの OOXML 文書や DOTWPSオフィスで制作したX。 このような場合、必須文書のマークアップ要素が欠落しているか、異なる理由で解釈される可能性があります Microsoft Word 2019年は、この文書が異なるものを示すために Microsoft Word 2010年10月1日

デフォルトで Aspose.Words ドキュメントの公開 Microsoft Word 2019年ルール 前の1つで起こるように文書のローディングを現わす必要がある場合 Microsoft Word アプリケーションバージョンでは、希望するバージョンを明示的に指定する必要があります。 [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) のプロパティ **LoadOptions** クラス。

次のコードの例では、設定方法を示します。 Microsoft Word ロードオプション付きのバージョン:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## 出現を変更する言語環境設定を設定する

ドキュメントの表示の詳細 Microsoft Word アプリケーションバージョンとアプリケーションバージョンだけでなく、 **MswVersion** プロパティ値だけでなく、言語設定にも。 Microsoft Word 「Office Language Preferences」ダイアログ設定により異なるドキュメントを表示できます。これは「File → Options → Languаge」にあります。 このダイアログを使用して、プライマリ言語、校正言語、表示言語など、ユーザーが選択できます。 Aspose.Words 提供して下さい [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) このダイアログの同等のプロパティ。 お問い合わせ Aspose.Words 出力は異なる Microsoft Word 出力、適切な値を設定 **EditingLanguage** - これは、出力文書を改善することができます。

以下のコード例では、日本語の設定方法を示します。 **EditingLanguage**:::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## 使用条件 WarningCallback 問題の制御 ドキュメントを読み込みながら

一部の文書は、破損、無効なエントリを含む、または現在サポートされていない機能がある可能性があります。 Aspose.Wordsお問い合わせ 書類を積みながら発生した問題について知りたい場合は、 Aspose.Words 提供して下さい [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) インターフェイス。

次のコードの例では、実装の実装を示します。 **IWarningCallback** インターフェイス:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

負荷時間を通してすべての問題についての情報を得るために、使用して下さい [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) プロパティ.

以下のコードの例では、このプロパティを使用する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## ResourceLoading を使う 外部リソースの読み込みを制御するコールバック

ドキュメントには、ローカルディスク、ネットワーク、またはインターネット上のどこかにある画像への外部リンクが含まれる場合があります。 Aspose.Words そのような画像を文書に自動的にロードしますが、このプロセスが制御する必要があるときに状況があります。 たとえば、特定の画像を読み込む必要があるか、またはおそらくそれをスキップする必要があるかどうかを判断します。 ザ・オブ・ザ・ [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) ロードオプションを使用すると、これを制御できます。

次のコードの例では、実装の実装を示します。 [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) インターフェイス:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

以下のコード例では、使い方を示します。 **ResourceLoadingCallback** プロパティ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## TempFolder を使用してメモリ例外を回避

Aspose.Words 豊富なコンテンツが数千ページある非常に大きな文書をサポートしています。 そのような文書の読み込みには、多くのRAMが必要な場合があります。 ローディングのプロセスでは、 Aspose.Words ドキュメントを解析するために使用される一時的な構造を保持するためにさらにメモリが必要です。

ドキュメントをロードしながらメモリ例外のOut に問題がある場合、使用しようとする [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) プロパティ. この場合、 Aspose.Words メモリの代わりに一時ファイルに保存されます。これにより、このような例外を回避できます。

次のコードの例では、設定方法を示します。 **TempFolder**:::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## エンコーディングを明示的に設定する

ほとんどの近代的な文書のフォーマットはUnicodeで内容を貯え、特別な処理を必要としません。 一方、いくつかの事前Unicodeエンコーディングを使用し、時にはエンコーディング情報を逃したり、エンコーディング情報を自然でサポートしたりする文書はまだまだ多くあります。 Aspose.Words デフォルトで適切なエンコーディングを自動的に検出しようとします。ただし、エンコーディングアルゴリズムによって検出されたエンコーディングとは異なるエンコーディングを使用する必要は稀です。 この場合は、 [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) エンコーディングを取得または設定するプロパティ。

次のコードの例では、選択したエンコーディングをオーバーライドする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## 暗号化された文書の読み込み

ロードできます パスワードで暗号化されたWord文書。 これを行うには、特別なコンストラクタの積み過ぎを使用してください。 [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) オブジェクト。 このオブジェクトには、 [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) パスワード文字列を指定するプロパティ。

次のコードの例では、パスワードで暗号化されたドキュメントを読み込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

ファイルが暗号化されているかどうかを事前に知らない場合は、 [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) クラスは、ファイルフォーマットを検出したり、ファイルの拡張子をファイルフォーマットの列挙から/に変換するなどのファイル形式で作業するためのユーティリティメソッドを提供します。 文書が暗号化されていれば検出し、パスワードで開くように要求するには、 [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) プロパティ.

次のコードの例では、OpenDocumentが暗号化されているか、暗号化されていないかを検証する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
