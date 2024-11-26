---
title: C#のMustache構文からのMail Mergeテンプレート
second_title: Aspose.Wordsのための.NET
articleTitle: Mail MergeテンプレートからMustache構文
linktitle: Mail MergeテンプレートからMustache構文
type: docs
description: "C#を使用してMustache構文でテンプレートを作成します。 Mustache構文は、フィールド(HTMLまたはTXT)を含まないテンプレートで使用する唯一のオプションです。 Wordテンプレートでは、フィールドまたはMustache構文の二つのオプションがあります。"
keywords: "mail merge template mustache syntax c#"
weight: 40
url: /ja/net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-07-11-08-07-06
---

Aspose.Wordsを使用すると、使い慣れたテンプレートに加えてmustache構文を使用してテンプレートを作成できます。 Mustacheは、タグ名で囲まれたテンプレート構文の代替バリアントであり、テンプレートのデータを含むモデルオブジェクトによってサポートされています。Mustacheは、テンプレート構文の代替バリアントです。

Mustache構文は、HTMLテンプレートやTXTテンプレートなどのフィールドを含まないテンプレートで使用する唯一のオプションです。 Wordテンプレートでは、フィールドまたはMustache構文を使用する二つのオプションがあります。

Mustache構文は*foreach*タグをサポートしていますが、これは地域でMail Mergeを使用するための代替手段です。 したがって、何らかの理由でmustache構文を使用できない場合、または単に差し込み項目と差し込み領域を使用したくない場合は、mustache構文を使用できるという利点があります。

下の図に示すように、*foreach*タグを使用してMail Mergeフィールドといくつかの追加フィールドを組み合わせることもできます。

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Mustacheテンプレートを作成する

明確にすべき最初の重要な点は、Mustacheはテンプレートエンジンではないということです。 Mustacheは、Aspose.Wordsでサポートされている[load format](https://reference.aspose.com/words/net/aspose.words/loadformat/)内の任意のテンプレートで使用できる別の構文バリアントです。 したがって、プログラムとインターフェイスの両方を介してこのようなテンプレートを作成することができます。特定の構文を含め、Mustache仕様に準拠するだけで済みます。

対応する名で挨拶をパーソナライズするために、同じメールを50人の受信者に送信する必要があるとします。 次のように、受信者の名をプレースホルダーに置き換えることができます:

> Dear {{FirstName}}
>
> I hereby...

ここでの質問：1つのMustacheテンプレートから50個のメールを作成するにはどうすればよいですか？ これに答えるには、Mail Mergeを領域で実行して、テンプレート内のプレースホルダーの中括弧を実際のデータで埋め、出力ドキュメントを生成する必要があります。

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

上記の例からわかるように、Mustacheでは、中括弧を時計回りに90度回転させたときにmustacheのように見えるプレースホルダに中括弧を使用する必要があります。

{{% /alert %}}

## Mustache構文を使用する

Mustacheは、*for*ループや*if*や*else*条件などの特定の制御フローステートメントがないため、ロジックレスオーダーとして表されます。 しかし、条件付き評価とループを実現するために、セクションタグ処理リストとラムダを使用することができます。 したがって、Mail Merge操作内にMustache構文を含めるには、[UseNonMergeFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/usenonmergefields/)プロパティを使用し、その値を*True*に設定する必要があります。

次のコード例は、Mustacheタグを特定のデータに置き換える方法を示しています:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "mustache-syntax-using-data-table.cs" >}}

**UseNonMergeFields**プロパティを適用するとともに、領域でMail Mergeを実行する前に、ドキュメントの違いに気付くことができます:

<img src="mustache-syntax-1.png" alt="mustache_syntax" style="width:400px"/>

{{% alert color="primary" %}}

セクションはポンドで始まり、スラッシュで終わります。 つまり、`{{#foreach list}}`は"foreach"セクションを開始し、`{{/foreach list}}`は"foreach"セクションを終了します。

{{% /alert %}}

そして、領域でMail Mergeを適用した後:

<img src="mustache-syntax-2.png" alt="mustache_syntax_result" style="width:300px"/>

## `IF`フィールドを使用してMail Mergeをインテリジェントにする

Aspose.Wordsを使用すると、Mail MergeフィールドとMustacheタグを`IF`ステートメントで使用できます。 `IF`フィールドは、任意のMail Mergeドキュメントで使用して、フィールドが空白の場合に不要なスペースとコンマを抑制できます。

`IF`フィールドの式を以下に示します:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

ここでは、条件は差し込み項目またはMustacheタグのいずれかになります。

たとえば、次のように性別に応じて"his"、"her"、"he"、または"she"を挿入する必要がある場合は、`IF`フィールドを使用できます:

**{ IF { MERGEFIELD Gender } = "MALE" "真のテキスト" "偽のテキスト"}**

**{ IF "{{ GENDER }}" = "MALE" "真のテキスト" "偽のテキスト"}**

次のコード例は、Mustacheタグと`IF`フィールドを使用してMail Merge操作を実行する方法を示しています:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "use-if-else-mustache.cs" >}}

**UseNonMergeFields**プロパティを適用する前に、ドキュメントの違いに気付くことができます:

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

**UseNonMergeFields**プロパティを適用した後:

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
