---
title: ワード文書のオプションと外観
second_title: Aspose.Words お問い合わせ Java
articleTitle: Word文書のオプションと外観を扱う
linktitle: Word文書のオプションと外観を扱う
description: "さまざまな違いを考慮に入れるWord文書の出現を制御する Microsoft Word バージョン使用 Javaお問い合わせ"
type: docs
weight: 40
url: /ja/java/work-with-word-document-options-and-appearance/
---

たとえば、言語の設定やページごとの行数など、ドキュメントの外観を変更する必要がある場合があります。Aspose.Words ドキュメントの表示方法と追加のオプションを制御する機能を提供します。 この記事ではこのような可能性について説明しています。

## ドキュメント表示オプションの設定

ドキュメントの表示方法を制御することができます。 Microsoft Word 利用する [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) クラス。 たとえば、ドキュメント zoom の値を設定できます。 [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) プロパティ、またはビューモードを使用して [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) プロパティ.

次のコードの例では、開いたときにドキュメントが50%に表示されていることを確認する方法を示します。 Microsoft Word:::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc)お問い合わせ

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013年は、任意のズーム係数を文書に書き出しず、ドキュメントに書かれている値からデフォルトのズームを設定しなくなり、代わりに、最後のオープン文書のズーム係数を使用するようです。

{{% /alert %}}

## ページ表示オプションの設定

1行の文字数を設定したい場合は、 [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) 宿泊施設 また、Word文書の1ページあたりの行数を設定することもできます。 [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) ドキュメントグリッド内の1ページあたりの行数を取得するか、設定するプロパティ。

{{% alert color="primary" %}}

インスタグラム Microsoft Word, 「ページ設定」ダイアログの「ドキュメントグリッド」タブを使用して、アジア言語のサポートがインストールされている場合にのみ同じパラメータを設定できます。

{{% /alert %}}

次のコードの例では、行ごとの文字数とページごとの行数を設定する方法を示します。 Microsoft Word ドキュメント:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## 言語環境の設定

ドキュメントの表示 Microsoft Word このドキュメントのデフォルトとして設定されている言語に依存します。 デフォルトで言語が設定されていない場合、 Microsoft Word 「Office Language Preferences の設定」ダイアログ ボックスから情報を取得します。たとえば、「File → Options → Language」で見つけることができます。 Microsoft Word 2019年12月12日

と Aspose.Words, また、言語の好みを設定することもできます。 [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) クラス。 また、ドキュメントの正しい表示のために、設定する必要があります。 Microsoft Word ドキュメントの読み込みプロセスが一致すべきバージョン – これは、使用することができます [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) プロパティ.

{{% alert color="primary" %}}

もし、 Aspose.Words 生成されたドキュメントは期待どおりに見えません。 **LanguagePreferences** そして、 **MswVersion** 必要に応じて値を設定し、調整し、 Microsoft Word バージョン。

{{% /alert %}}

以下のコードの例では、日本語を編集言語に追加する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

次のコードの例では、デフォルトの編集言語としてロシアを設定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## 特定の文書を最適化 ワードバージョン

ザ・オブ・ザ・ [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) メソッドは、ドキュメントコンテンツの最適化、およびデフォルトを可能にします。 Aspose.Words 特定のバージョンの動作 Microsoft Wordお問い合わせ 防ぐためにこの方法を使うことができます Microsoft Word ドキュメントの読み込み時に「互換性モード」リボンを表示することから。 設定する必要もありますのでご注意ください。 `Compliance` Iso29500_2008_Transitional 以上のプロパティ。

以下のコード例では、ドキュメントコンテンツを最適化する方法を示します。 Microsoft Word 2016年:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
