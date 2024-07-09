---
title: ドキュメントの比較 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ドキュメントの比較
linktitle: ドキュメントの比較
type: docs
description: "サポートされているフォーマットで2つの文書を比較し、コンテンツの変更を表示します。 比較するときに高度なオプションを適用できます Javaお問い合わせ"
weight: 60
url: /ja/java/compare-documents/
---

文書の比較は、2つの文書間で変更を識別し、変更をリビジョンとして含んだプロセスです。 このプロセスは、特定の文書のバージョンを含む2つの文書を比較し、両方の文書間の変更が最初の文書のリビジョンとして表示されます。

文字レベルや単語レベルで単語を比較することで比較方法が実現します。 単語が少なくとも1文字の変更を含んでいる場合、結果では、単語全体の変更として、文字ではなく、違いが表示されます。 比較のこのプロセスは、法的および金融業界の通常のタスクです。

ドキュメントと異なるバージョンの違いを手動で検索するのではなく、 Aspose.Words 文書を比較し、フォーマット、ヘッダ/フッター、テーブルなどのコンテンツの変更を得るため。

この記事では、ドキュメントを比較する方法と、高度な比較特性を指定する方法について説明します。

{{% alert color="primary" %}}

**オンラインで試す**

オンラインで2つのドキュメントを比較できます。 [オンラインドキュメント比較](https://products.aspose.app/words/comparison) ツール。

下記の比較方法は、等しい結果を得るためにこのツールで使用されます。 そのため、オンライン比較ツールや比較方法を使用しても同じ結果が得られます。 Aspose.Wordsお問い合わせ

{{% /alert %}}

## 制限とサポートされているファイル形式 {#limitations-and-supported-file-formats}

ドキュメントの比較は非常に複雑な機能です。 すべての違いを認識するために分析する必要があるコンテンツの組み合わせのさまざまな部分があります。 この複雑さの理由は、 Aspose.Words 同じ比較結果を得るために Microsoft Word 比較アルゴリズム。

比較する2つの文書の一般的な制限は、この制限が存在しているように、比較メソッドを呼び出す前にリビジョンを持っていないことです。 Microsoft Wordお問い合わせ

{{% alert color="primary" %}}

2つの文書を内部で比較できることに注意してください。 [サポートされているドキュメントフォーマット](/words/ja/java/supported-document-formats/)お問い合わせ 基本的には、ドキュメントオブジェクトを比較し、特定のフォーマットを持たずにスクラッチからオブジェクトを作成することもできます。

{{% /alert %}}

## 2つのドキュメントを比較する {#compare-two-documents}

文書を比較すると、元からの後者の文書の相違が修正として上回ります。 ドキュメントを変更すると、各編集は、比較メソッドを実行した後に独自のリビジョンを持っています。

Aspose.Words ドキュメントの違いを識別できる [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) メソッド – これは、 Microsoft Word ドキュメント比較機能。 フォント変更、間隔変更、単語の追加、段落などの修正を含む文書や文書のバージョンが違いや変更を見つけることができるようにすることができます。

比較の結果、文書は等しいか等しくないと判断することができます。 「等しい」という文書は、比較方法が変更をリビジョンとして表すことができないことを意味します。 これは、文書のテキストとテキストの書式の両方が同じであることを意味します。 しかし、文書の相違点は他の違いがあります。 例えば、 Microsoft Word スタイル変更のみをサポートし、スタイルインサート/削除を表現することはできません。 そのため、文書にはさまざまなスタイルがあります。 **Compare** メソッドはリビジョンを生成しません。

次のコードの例では、2つの文書が等しいかどうかを確認する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

次のコードの例では、単に適用する方法を示します `Compare` 2つの文書への方法:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## 高度な比較オプションを指定する {#specify-advanced-comparing-properties}

多くの異なる特性があります [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) ドキュメントを比較したい時に申請できるクラス。

例えば、 Aspose.Words 元の文書内の特定の種類のオブジェクトの比較操作中に行われた変更を無視することができます。 オブジェクトタイプの適切なプロパティを選択できます。 [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), それらを「」に設定することにより、他の人trueお問い合わせ

その他、 Aspose.Words 提供して下さい [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) 文字や単語によって変更を追跡するかどうかを指定できます。

別の一般的なプロパティは、比較の変更を示すための文書の選択です。 たとえば、「文書の対話ボックスの比較」 Microsoft Word オプションがあります "変更を表示する" – これは、比較結果に影響を与えます. Aspose.Words 提供して下さい [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) この目的のために役立つプロパティ。

次のコードの例では、高度な比較プロパティを設定する方法を示します。
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
