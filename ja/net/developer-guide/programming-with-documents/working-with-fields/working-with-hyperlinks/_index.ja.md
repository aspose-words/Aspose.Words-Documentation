---
title: C# でのハイパーリンクの操作
second_title: .NET用Aspose.Words
articleTitle: ハイパーリンクの追加または変更
linktitle: ハイパーリンクの追加または変更
description: "Aspose.Words for .NET を使用して C# のドキュメントにハイパーリンクを追加する方法。"
type: docs
weight: 50
url: /ja/net/working-with-hyperlinks/
---

Microsoft Word ドキュメントのハイパーリンクは `HYPERLINK` フィールドです。 Aspose.Words では、ハイパーリンクは [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) クラスを通じて実装されます。

## ハイパーリンクを挿入する

[InsertHyperlink](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthyperlink/) メソッドを使用して、ドキュメントにハイパーリンクを挿入します。このメソッドは 3 つのパラメータを受け入れます。

1. 文書内に表示されるリンクのテキスト
2. リンク先（文書内のURLまたはブックマーク名）
3. `URL` がドキュメント内のブックマークの名前である場合は true である必要があるブール型パラメーター

**InsertHyperlink** メソッドでは、URL の先頭と末尾に常にアポストロフィが追加されます。

{{% alert color="primary" %}}

`Font` プロパティを使用して、ハイパーリンク表示テキストのフォント形式を明示的に指定する必要があることに注意してください。

{{% /alert %}}

次のコード例は、[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) を使用してドキュメントにハイパーリンクを挿入する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## ハイパーリンクの置換または変更

Microsoft Word ドキュメントのハイパーリンクはフィールドです。前述したように、Word 文書のフィールドは、フィールド開始、フィールド コード、フィールド区切り文字、フィールド結果、フィールド終了を含む複数のノードで構成される複雑な構造です。フィールドはネストでき、豊富なコンテンツを含めることができ、文書内の複数の段落またはセクションにまたがることができます。

ハイパーリンクを置換または変更するには、ドキュメント内でハイパーリンクを検索し、そのテキスト、URL、またはその両方を置換する必要があります。

次のコード例は、Word 文書内のすべてのハイパーリンクを検索し、その `URL` と表示名を変更する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
