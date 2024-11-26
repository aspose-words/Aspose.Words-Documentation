---
title: C++でのハイパーリンクの操作
second_title: C++の場合Aspose.Words
articleTitle: ハイパーリンクの追加または変更
linktitle: ハイパーリンクの追加または変更
description: "を使用して文書にハイパーリンクを追加する方法 C++の場合Aspose.Words."
type: docs
weight: 180
url: /ja/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Microsoft Wordドキュメント内のハイパーリンクは`HYPERLINK`フィールドです。 Aspose.Wordsでは、ハイパーリンクは[FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/)クラスを介して実装されます。

## ハイパーリンクの挿入

ドキュメントにハイパーリンクを挿入するには、[InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/)メソッドを使用します。 このメソッドは、次の3つのパラメーターを受け入れます:

1. ドキュメントに表示されるリンクのテキスト
2. リンク先（文書内のurlまたはブックマークの名前）
3. `URL`がドキュメント内のブックマークの名前である場合にtrueにする必要があるBooleanパラメータ

**InsertHyperlink**メソッドは、常にURLの先頭と末尾にアポストロフィを追加します。

{{% alert color="primary" %}}

`Font`プロパティを使用して、ハイパーリンク表示テキストのフォント書式を明示的に指定する必要があることに注意してください。

{{% /alert %}}

次のコード例は、[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)を使用してドキュメントにハイパーリンクを挿入する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## ハイパーリンクの置換または変更

Microsoft Word文書内のハイパーリンクはフィールドです。 Word文書のフィールドは、フィールドの開始、フィールドコード、フィールド区切り文字、フィールドの結果、フィールドの終了を含む複数のノードで構成される複雑な構 フィールドは入れ子にすることができ、リッチコンテンツを含み、ドキュメント内の複数の段落またはセクションにまたがることができます。

`FieldHyperlink`クラスは`HYPERLINK`フィールドを実装します。

次のコード例は、Word文書内のすべてのハイパーリンクを検索し、それらの`URL`と表示名を変更する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
