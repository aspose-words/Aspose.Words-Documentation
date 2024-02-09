---
title: C# での検索と置換
second_title: .NET用Aspose.Words
articleTitle: 検索と置換
linktitle: 検索と置換
type: docs
description: "文書内で文字列または正規表現パターンを検索し、C# を使用して必要なテキストに置き換えます。"
weight: 100
url: /ja/net/find-and-replace/
---

キーボードとマウスを使用して文書内を簡単に移動できますが、スクロールするページが多い場合、長い文書内で特定のテキストを見つけるのにかなりの時間がかかります。文書内で使用した特定の文字や単語を置き換える場合は、さらに時間がかかります。 「検索と置換」機能を使用すると、文書内で一連の文字を検索し、別の一連の文字に置き換えることができます。

Aspose.Words を使用すると、Microsoft Word などの追加のアプリケーションをインストールして使用しなくても、ドキュメント内で特定の文字列または正規表現パターンを検索し、代替文字列に置き換えることができます。これにより、多くの入力や書式設定のタスクが高速化され、作業時間を節約できる可能性があります。

この記事では、メタキャラクターのサポートを使用して文字列置換と正規表現を適用する方法について説明します。

## {#ways-to-find-and-replace} を検索して置換する方法

Aspose.Words では、次の 2 つの方法で検索と置換操作を適用できます。

1. *単純な文字列置換* – 特定の文字列を検索して別の文字列に置換するには、すべての出現に従って別の指定された置換文字列に置換される検索文字列 (英数字) を指定する必要があります。どちらの文字列にも記号を含めることはできません。文字列の比較では大文字と小文字が区別される場合があること、またはスペルがわからない場合や、類似したスペルが複数ある場合があることを考慮してください。
2. *正規表現* – 正規表現を指定して、完全に一致する文字列を検索し、正規表現に従って置換します。単語は英数字のみで構成されるものとして定義されることに注意してください。単語全体のみが一致する置換が実行され、入力文字列にたまたま記号が含まれている場合、フレーズは検出されません。

さらに、単純な文字列置換および正規表現とともに特別なメタキャラクタを使用して、検索および置換操作内でブレークを指定できます。

Aspose.Words は、[Aspose.Words.Replacing](https://reference.aspose.com/words/net/aspose.words.replacing/) 名前空間を使用して検索と置換の機能を提供します。 [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) クラスを使用して、検索と置換のプロセス中に多くのオプションを使用できます。

### 単純な文字列置換 {#find-and-replace-text-using-simple-string-replacement} を使用したテキストの検索と置換

[Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/#replace/) メソッドの 1 つを使用して、特定の文字列を検索または置換し、行われた置換の数を返すことができます。この場合、置換する文字列、その出現箇所すべてを置換する文字列、置換で大文字と小文字を区別するかどうか、および単独の単語のみが影響を受けるかどうかを指定できます。

次のコード例は、文字列「_CustomerName_」を検索し、文字列 *「James Bond」* に置き換える方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

単純な文字列置換を適用する前に、ドキュメントの違いに気づくことができます。

<img src="/words/net/find-and-replace/before-simple-string-replacement.png" alt="単純な文字列置換前" style="width:600px"/>

単純な文字列置換を適用した後:

<img src="/words/net/find-and-replace/after-simple-string-replacement.png" alt="単純な文字列置換後" style="width:600px"/>

### 正規表現を使用したテキストの検索と置換 {#find-and-replace-text-using-regular-expressions}

正規表現 (regex) は、特定のテキストのシーケンスを記述するパターンです。単語が 2 回出現するすべての単語を 1 つの単語に置き換えるとします。次に、正規表現 `([a-zA-Z]+) \1` を適用して、ダブルワード パターンを指定できます。

もう 1 つの [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) メソッドを使用して、一致を見つけるための正規表現パターンとして `Regex` パラメータを設定し、特定の文字の組み合わせを検索および置換します。

次のコード例は、正規表現パターンに一致する文字列を指定された置換文字列で置換する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

正規表現による文字列置換を適用する前に、ドキュメントの違いに気づくことができます。

<img src="/words/net/find-and-replace/before-replacement-with-regular-expressions.png" alt="正規表現による置換前" style="width:600px"/>

そして、正規表現による文字列置換を適用した後、次のようになります。

<img src="/words/net/find-and-replace/after-replacement-with-regular-expressions.png" alt="正規表現による置換後" style="width:600px"/>

### メタキャラクターを使用した文字列の検索と置換 {#find-and-replace-text-using-metacharacters}

特定のテキストまたは語句が複数の段落、セクション、またはページで構成されている場合は、検索文字列または置換文字列でメタキャラクターを使用できます。メタキャラクタの中には、段落区切りの **&amp;p**、セクション区切りの **&amp;b**、ページ区切りの **&amp;m**、改行の **&amp;l** などがあります。

{{% alert color="primary" %}}

メタキャラクター **&&** は **&** と等しいことに注意してください。たとえば、段落区切りではない **&amp;p** のテキストを検索する必要がある場合は、**&amp;&amp;p** を使用できます。

{{% /alert %}}

次のコード例は、テキストを段落と改ページに置き換える方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## ドキュメントのヘッダー/フッターの文字列を検索して置換する {#find-and-replace-string-in-header-or-footer-of-a-document}

[HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) クラスを使用すると、Word 文書のヘッダー/フッター セクション内のテキストを検索して置換できます。

次のコード例は、ドキュメント内のヘッダー セクションのテキストを置換する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

ヘッダー文字列の置換を適用する前に、ドキュメントの違いに気づくことができます。

<img src="/words/net/find-and-replace/before-applying-header-string-replacement.png" alt="適用前ヘッダー文字列置換" style="width:600px"/>

ヘッダー文字列の置換を適用した後:

<img src="/words/net/find-and-replace/after-applying-header-string-replacement.png" alt="適用後のヘッダー文字列の置換" style="width:600px"/>

ドキュメント内のフッター セクションのテキストを置換するコード例は、前のヘッダー コード例とよく似ています。次の 2 行を置き換えるだけです。

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

以下のとおりです。

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

フッター文字列の置換を適用する前に、ドキュメントの違いに気づくことができます。

<img src="/words/net/find-and-replace/before-applying-footer-string-replacement.png" alt="適用前フッター文字列置換" style="width:600px"/>

フッター文字列置換を適用した後:

<img src="/words/net/find-and-replace/after-applying-footer-string-replacement.png" alt="適用後のフッター文字列置換" style="width:600px"/>

## {#ignore-text-during-find-and-replace} の検索と置換中にテキストを無視する

検索と置換操作を適用する際、テキストの特定のセグメントを無視できます。したがって、テキストの特定の部分を検索から除外し、残りの部分にのみ検索と置換を適用することができます。

Aspose.Words には、[IgnoreDeleted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoredeleted/)、[IgnoreFieldCodes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefieldcodes/)、[IgnoreFields](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefields/)、[IgnoreFootnotes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefootnotes/)、[IgnoreInserted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoreinserted/) などのテキストを無視するための検索および置換プロパティが多数用意されています。

次のコード例は、削除リビジョン内のテキストを無視する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## 検索と置換操作 {#customize-find-and-replace-operation} をカスタマイズする

Aspose.Words は、[ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) および [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/) プロパティで特定の形式を適用したり、[UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) プロパティで置換パターンで置換を使用したりするなど、テキストを検索および置換するためのさまざまな [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) を提供します。

次のコード例は、文書内の特定の単語を強調表示する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

Aspose.Words を使用すると、置換操作中に [IReplacingCallback](https://reference.aspose.com/words/net/aspose.words.replacing/ireplacingcallback/) インターフェイスを使用してカスタム メソッドを作成し、呼び出すことができます。正規表現で指定したテキストをHTMLタグで置換するなど、検索置換操作をカスタマイズする必要があるユースケースもあるため、基本的にはHTMLを挿入して置換を適用することになります。

文字列を HTML タグで置換する必要がある場合は、**IReplacingCallback** インターフェイスを適用して検索と置換の操作をカスタマイズし、ドキュメントの一致ノードでの実行の開始時に一致が開始されるようにします。 **IReplacingCallback** の使用例をいくつか紹介します。

次のコード例は、HTML で指定されたテキストを置換する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

次のコード例は、正の数値を緑色で強調表示し、負の数値を赤色で強調表示する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

次のコード例は、各行の先頭に行番号を追加する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
