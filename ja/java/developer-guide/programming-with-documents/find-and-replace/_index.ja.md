---
title: 見つけ、取り替えて下さい Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: 見つけ、取り替えて下さい
linktitle: 見つけ、取り替えて下さい
type: docs
description: "ドキュメント内の文字列や正規表現パターンを見つけ、使用するテキストに置き換えます。 Javaお問い合わせ"
weight: 100
url: /ja/java/find-and-replace/
---

キーボードとマウスを使用してドキュメント内で簡単にナビゲートできますが、多くのページをスクロールするには、長いドキュメントで特定のテキストを見つけるのにしばらくかかります。 ドキュメントで使用した特定の文字や単語を置き換えるときには、より多くの時間を消費します。 「修正と置換」機能を使用すると、ドキュメント内の文字のシーケンスを見つけ、別の文字のシーケンスに置き換えることができます。

Aspose.Words ドキュメントに特定の文字列や正規表現パターンを見つけ、追加アプリケーションをインストールして使用せずに代替品に置き換えることができます。 Microsoft Wordお問い合わせ これにより、タスクの入力とフォーマットを高速化し、時間を大幅に節約できます。

本記事では、メタキャラクタのサポートで文字列の置換と正規表現を適用する方法について説明します。

## 見つけ、取り替える方法 {#ways-to-find-and-replace}

Aspose.Words 以下を使用して、検索を適用し、操作を置き換える2つの方法を提供します。

1。 *Simple string replace* - 特定の文字列を別の文字列で見つけ、置換するために、別の指定された置換文字列ですべての発生に応じて置換される検索文字列(英数字)を指定する必要があります。 どちらの文字列も記号を含んでいません。 文字列の比較が大文字を区別できるか、スペルが不明なり、類似のスペルがいくつかあるかを考慮に入れます。
2。 *正規表現* - 正規表現を指定して、正確な文字列マッチを見つけて、正規表現に従って置換します。 単語は英数字のみで構成されているように定義されます。 置換が一致している単語全体で実行され、入力文字列がシンボルを含む場合に、フレーズが見つかりません。

また、単純な文字列置換と正規表現で特殊なメタキャラクタを使うと、検索と置換操作内のブレイクを指定できます。

Aspose.Words 機能を見つけて置き換える [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/)お問い合わせ 見つけると使用プロセスを置き換えるときに多くのオプションで作業することができます [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) クラス。

### 単純な文字列の置換を使用してテキストを検索して置換する {#find-and-replace-text-using-simple-string-replacement}

いずれかの1つを使用することができます [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) 特定の文字列を検索または置換し、生成された置換の数を返す方法。 この場合、置換する文字列を指定できます。置換がケースに敏感なものか、スタンドアローンの単語のみが影響を受けるかにかかわらず、すべての発生を置き換える文字列です。

次のコードの例では、文字列 "_CustomerName_" を見つけて文字列に置換する方法を示します。 *「James Bond」*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

単純な文字列置換を適用する前に、ドキュメントの違いに気づくことができます。

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

そして簡単な文字列の交換を適用した後:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### 正規表現を使用してテキストを見つけて置換する {#find-and-replace-text-using-regular-expressions}

正規表現(regex)は、特定のテキストのシーケンスを表すパターンです。 単語のすべての倍の発生を単一の単語の発生と交換したいとします。 次に、次の正規表現をダブルワードパターンを指定することができます。 `([a-zA-Z]+) \1`お問い合わせ

その他を使う [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) 特定のキャラクターの組み合わせを検索して置換する方法 `Regex` マッチを見つける正規表現パターンとしてパラメータ。

次のコードの例では、正規表現パターンと指定された置換文字列と一致する文字列を置き換える方法を示します。


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


通常の式で文字列の置換を適用する前に、ドキュメントの違いに気づくことができます。

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

文字列置換を正規表現で適用した後:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### メタキャラクタを使用して文字列を見つけて置換する {#find-and-replace-text-using-metacharacters}

特定のテキストまたはフレーズが複数の段落、セクション、またはページで構成されている場合、検索文字列または置換文字列でメタキャラクタを使うことができます。 メタキャラクタの中には、 **&p** 段落の壊れ目のために、 **&b** セクションの壊れ目のため、 **&m** ページの内訳 **&l** ラインブレイクのため。

{{% alert color="primary" %}}

メタキャラクタとは **&&** に等しい **&**お問い合わせ たとえば、テキストを検索する必要がある場合 **&p** それは段落の壊れ目ではありません、そしてあなたは使用することができます **&&p**お問い合わせ

{{% /alert %}}

次のコードの例では、段落とページ分割でテキストを置き換える方法を示します。
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## 文書のヘッダ/Footerで文字列を見つけて置換する {#find-and-replace-string-in-header-or-footer-of-a-document}

ワード文書のヘッダ/フッターセクションでテキストを見つけて置換することができます。 [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) クラス。

次のコードの例では、ドキュメントのヘッダセクションのテキストを置き換える方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


ヘッダー文字列の置換を適用する前にドキュメントの違いに気づくことができます。

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

ヘッダー文字列置換を適用した後:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

ドキュメントのフッターセクションのテキストを置き換えるコード例は、以前のヘッダコード例に非常に似ています。 あなたがする必要があるのは、次の2行を置き換えます。

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

以下を使って:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


フッター文字列の置換を適用する前に、ドキュメントの違いに気づくことができます。

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

そしてフッターのひもの取り替えを適用した後:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## 検索と置換中にテキストを無視 {#ignore-text-during-find-and-replace}

検索を適用し、操作を置き換えながら、テキストの特定のセグメントを無視することができます。 そのため、検索からテキストの特定の部分が除外され、検索と置換は残りの部分のみ適用できます。

Aspose.Words そのようなテキストを無視するための多くの発見と置き換え特性を提供します [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), そして、 [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted)お問い合わせ

次のコードの例では、削除リビジョンの中でテキストを無視する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## 見つけ、取り替える操作をカスタマイズして下さい {#customize-find-and-replace-operation}

Aspose.Words 多くの異なった提供します [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) 特定の形式を適用するなどのテキストを検索し、置き換える [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) そして、 [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) プロパティ, 置換パターンの置換を使用して置換 [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) 物件、その他

次のコードの例では、ドキュメントの特定の単語を強調する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words 使用することを可能にします [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) インターフェイスは、置換操作中にカスタムメソッドを作成して呼び出します。 正規表現で指定されたテキストをHTMLタグに置き換えるなど、検索をカスタマイズし、操作を置き換える必要がある場合もありますので、基本的にはHTMLのインサートに置き換えます。

HTMLタグで文字列を交換する必要がある場合は、 **IReplacingCallback** インターフェイスは、検索をカスタマイズし、操作を置き換えるため、マッチはドキュメントのマッチノードで実行の始まりから始まります。 使用例をいくつかご紹介します。 **IReplacingCallback**お問い合わせ

次のコードの例では、HTMLで指定されたテキストを置き換える方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


次のコードの例では、緑色とマイナスの数字を赤色で強調する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

次のコードの例では、各行に行番号を優先する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
