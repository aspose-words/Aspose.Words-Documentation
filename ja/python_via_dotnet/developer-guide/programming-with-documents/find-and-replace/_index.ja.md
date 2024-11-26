---
title: Python での検索と置換
second_title: Python via .NET用Aspose.Words
articleTitle: 検索と置換
linktitle: 検索と置換
type: docs
description: "文書内で文字列または正規表現パターンを検索し、Python を使用して必要なテキストに置き換えます。"
weight: 100
url: /ja/python-net/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

キーボードとマウスを使用して文書内を簡単に移動できますが、スクロールするページが多い場合、長い文書内で特定のテキストを見つけるのにかなりの時間がかかります。文書内で使用した特定の文字や単語を置き換える場合は、さらに時間がかかります。 「検索と置換」機能を使用すると、文書内で一連の文字を検索し、別の一連の文字に置き換えることができます。

Aspose.Words を使用すると、Microsoft Word などの追加のアプリケーションをインストールして使用しなくても、ドキュメント内で特定の文字列または正規表現パターンを検索し、代替文字列に置き換えることができます。これにより、多くの入力や書式設定のタスクが高速化され、作業時間を節約できる可能性があります。

この記事では、メタキャラクターのサポートを使用して文字列置換と正規表現を適用する方法について説明します。

## {#ways-to-find-and-replace} を検索して置換する方法

Aspose.Words では、次の 2 つの方法で検索と置換操作を適用できます。

1. *単純な文字列置換* – 特定の文字列を検索して別の文字列に置換するには、すべての出現に従って別の指定された置換文字列に置換される検索文字列 (英数字) を指定する必要があります。どちらの文字列にも記号を含めることはできません。文字列の比較では大文字と小文字が区別される場合があること、またはスペルがわからない場合や、類似したスペルが複数ある場合があることを考慮してください。
2. *正規表現* – 正規表現を指定して、完全に一致する文字列を検索し、正規表現に従って置換します。単語は英数字のみで構成されるものとして定義されることに注意してください。単語全体のみが一致する置換が実行され、入力文字列にたまたま記号が含まれている場合、フレーズは検出されません。

さらに、単純な文字列置換および正規表現とともに特別なメタキャラクタを使用して、検索および置換操作内でブレークを指定できます。

Aspose.Words は、[aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/) モジュールを使用して検索および置換機能を提供します。 [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/) クラスを使用して、検索と置換のプロセス中に多くのオプションを使用できます。

### 単純な文字列置換 {#find-and-replace-text-using-simple-string-replacement} を使用したテキストの検索と置換

[replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) メソッドと [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) メソッドのいずれかを使用して、特定の文字列を検索または置換し、行われた置換の数を返すことができます。この場合、置換する文字列、その出現箇所すべてを置換する文字列、置換で大文字と小文字を区別するかどうか、および単独の単語のみが影響を受けるかどうかを指定できます。

次のコード例は、文字列「_CustomerName_」を検索し、文字列 *「James Bond」* に置き換える方法を示しています。

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

単純な文字列置換を適用する前に、ドキュメントの違いに気づくことができます。

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="単純な文字列置換前" style="width:600px"/>

単純な文字列置換を適用した後:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="単純な文字列置換後" style="width:600px"/>

### 正規表現を使用したテキストの検索と置換 {#find-and-replace-text-using-regular-expressions}

正規表現は、特定のテキストのシーケンスを記述するパターンです。単語が 2 回出現するすべての単語を 1 つの単語に置き換えるとします。次に、正規表現 `([a-zA-Z]+) \1` を適用してダブルワード パターンを指定できます。

[replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) メソッドを使用して、一致を見つけるパターンとして正規表現パラメータを設定することで、特定の文字の組み合わせを検索および置換します。

次のコード例は、正規表現パターンに一致する文字列を指定された置換文字列で置換する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

正規表現による文字列置換を適用する前に、ドキュメントの違いに気づくことができます。

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="正規表現による置換前" style="width:600px"/>

そして、正規表現による文字列置換を適用した後、次のようになります。

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="正規表現による置換後" style="width:600px"/>

### メタキャラクターを使用した文字列の検索と置換 {#find-and-replace-text-using-metacharacters}

特定のテキストまたはフレーズが複数の段落、セクション、またはページで構成されている場合は、検索文字列または置換文字列でメタキャラクターを使用できます。メタキャラクタの中には、段落区切りの **&amp;p**、セクション区切りの **&amp;b**、ページ区切りの **&amp;m**、改行の **&amp;l** などがあります。

{{% alert color="primary" %}}

メタキャラクタ **&&** は **&** と等しいことに注意してください。たとえば、段落区切りではない **&amp;p** のテキストを検索する必要がある場合は、**&amp;&amp;p** を使用できます。

{{% /alert %}}

次のコード例は、テキストを段落と改ページに置き換える方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## ドキュメントのヘッダー/フッターの文字列を検索して置換する {#find-and-replace-string-in-header-or-footer-of-a-document}

[HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) クラスを使用すると、Word 文書のヘッダー/フッター セクション内のテキストを検索して置換できます。

次のコード例は、ドキュメント内のヘッダー セクションのテキストを置換する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

ヘッダー文字列の置換を適用する前に、ドキュメントの違いに気づくことができます。

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="適用前ヘッダー文字列置換" style="width:600px"/>

ヘッダー文字列の置換を適用した後:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="適用後のヘッダー文字列の置換" style="width:600px"/>

ドキュメント内のフッター セクションのテキストを置換するコード例は、前のヘッダー コード例とよく似ています。次の 2 行を置き換えるだけです。

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

以下のとおりです。

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

フッター文字列の置換を適用する前に、ドキュメントの違いに気づくことができます。

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="適用前フッター文字列置換" style="width:600px"/>

フッター文字列置換を適用した後:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="適用後のフッター文字列置換" style="width:600px"/>

## {#ignore-text-during-find-and-replace} の検索と置換中にテキストを無視する

検索と置換操作を適用する際、テキストの特定のセグメントを無視できます。したがって、テキストの特定の部分を検索から除外し、残りの部分にのみ検索と置換を適用することができます。

Aspose.Words には、[ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/)、[ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/)、[ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/) などのテキストを無視するための検索および置換プロパティが多数用意されています。

次のコード例は、削除リビジョン内のテキストを無視する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## 検索と置換操作 {#customize-find-and-replace-operation} をカスタマイズする

Aspose.Words は、[apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) および [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/) プロパティによる特定の形式の適用、[use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) プロパティによる置換パターンでの置換の使用など、テキストを検索および置換するためのさまざまなプロパティを提供します。

次のコード例は、文書内の特定の単語を強調表示する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
