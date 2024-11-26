---
title: Mail MergeMustache構文
second_title: Aspose.WordsはPython via .NETに対してAspose.Wordsを意味します。
articleTitle: Mail MergeテンプレートからMustache構文
linktitle: Mail MergeテンプレートからMustache構文
type: docs
description: "Pythonを使用してMustache構文でテンプレートを作成します。 Mustache構文は、フィールド(HTMLまたはTXT)を含まないテンプレートで使用する唯一のオプションです。 Wordテンプレートでは、フィールドまたはMustache構文の二つのオプションがあります。"
keywords: "mail merge template mustache syntax python"
weight: 40
url: /ja/python-net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsを使用すると、使い慣れたテンプレートに加えてmustache構文を使用してテンプレートを作成できます。 Mustacheは、`{{ }}`で囲まれたタグ名で構成され、テンプレートのデータを含むモデルオブジェクトによってサポートされるテンプレート構文の代替バリアントです。Mustacheは、`{{ }}`で囲まれたタグ名で構成され、テンプレートのデータを含むモデルオブジェクトによってサポートされます。

Mustache構文は、HTMLテンプレートやTXTテンプレートなどのフィールドを含まないテンプレートで使用する唯一のオプションです。 Wordテンプレートでは、フィールドまたはMustache構文を使用する二つのオプションがあります。

Mustache構文は*foreach*タグをサポートしていますが、これは地域でMail Mergeを使用するための代替手段です。 したがって、何らかの理由でmustache構文を使用できない場合、または単に差し込み項目と差し込み領域を使用したくない場合は、mustache構文を使用できるという利点があります。

下の図に示すように、*foreach*タグを使用してMail Mergeフィールドといくつかの追加フィールドを組み合わせることもできます。

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Mustacheテンプレートを作成する

明確にすべき最初の重要な点は、Mustacheはテンプレートエンジンではないということです。 Mustacheは、Aspose.Wordsでサポートされている[load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/)内の任意のテンプレートで使用できる別の構文バリアントです。 したがって、プログラムとインターフェイスの両方を介してこのようなテンプレートを作成することができます。特定の構文を含め、Mustache仕様に準拠するだけで済みます。

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

Mustacheは、*for*ループや*if*や*else*条件などの特定の制御フローステートメントがないため、ロジックレスオーダーとして表されます。 しかし、条件付き評価とループを実現するために、セクションタグ処理リストとラムダを使用することができます。 したがって、Mail Merge操作内にMustache構文を含めるには、[use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/)プロパティを使用し、その値を*True*に設定する必要があります。

## `IF`フィールドを使用してMail Mergeをインテリジェントにする

Aspose.Wordsを使用すると、Mail MergeフィールドとMustacheタグを`IF`ステートメントで使用できます。 `IF`フィールドは、任意のMail Mergeドキュメントで使用して、フィールドが空白の場合に不要なスペースとコンマを抑制できます。

`IF`フィールドの式を以下に示します:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

ここでは、条件は差し込み項目またはMustacheタグのいずれかになります。

たとえば、次のように性別に応じて"his"、"her"、"he"、または"she"を挿入する必要がある場合は、`IF`フィールドを使用できます:

**{ IF { MERGEFIELD Gender } = "MALE" "真のテキスト" "偽のテキスト"}**

**{ IF "{{ GENDER }}" = "MALE" "真のテキスト" "偽のテキスト"}**

次のコード例は、Mustacheタグと`IF`フィールドを使用してMail Merge操作を実行する方法を示しています:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-UseOfifelseMustacheSyntax.py" >}}

[use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/)プロパティを適用する前に、ドキュメントの違いに気付くことができます:

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

[use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/)プロパティを適用した後:

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
