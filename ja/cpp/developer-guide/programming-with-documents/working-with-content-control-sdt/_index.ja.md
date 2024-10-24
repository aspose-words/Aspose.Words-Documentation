---
title: コンテンツコントロールSDTの操作
second_title: C++の場合Aspose.Words
articleTitle: コンテンツコントロールSDTの操作
linktitle: コンテンツコントロールSDTの操作
type: docs
description: "高度な文書コンテンツ管理、C++を使用してコンテンツコントロール（構造化文書タグ）を作成および操作する方法。"
weight: 390
url: /ja/cpp/structured-document-tags-or-content-control/
---

Microsoft Wordでは、テンプレートから始めて、チェックボックス、テキストボックス、日付ピッカー、ドロップダウンリストなどのコンテンツコントロールを追加して、フォームを作成できます。 Aspose.Wordsでは、Aspose.Wordsにロードされたドキュメントの構造化ドキュメントタグまたはコンテンツコントロールがStructuredDocumentTagノードとしてインポートされます。 構造化ドキュメントタグ（SDTまたはコンテンツコントロール）は、顧客定義のセマンティクスだけでなく、その動作と外観を文書に埋め込むことがで StructuredDocumentTagは、次の場所の文書で発生する可能性があります:

- ブロックレベル-段落と表の間で、Body、HeaderFooter、Comment、Footnote、またはShapeノードの子として使用されます
- Row-level-テーブルノードの子としてのテーブル内の行の間
- Cell-level-テーブル行のセルの中で、行ノードの子として
- Inline-level-段落の子として、内部のインラインコンテンツの中で
- 別のStructuredDocumentTagの中にネストされています

## コンテンツコントロールに入力されたテキストの書式設定にスタイルを設定する方法

コンテンツコントロールのスタイルを設定する場合は、`StructuredDocumentTag.Style`または`StructuredDocumentTag.StyleName`プロパティを使用できます。 出力ドキュメントのコンテンツコントロールにテキストを入力すると、入力されたテキストのスタイルは"引用"になります。

{{% alert color="primary" %}}

コンテンツコントロールに適用できるのは、リンクされたスタイルと文字スタイルのみです。 InvalidOperationException("CANNOT apply this style to THE SDT")は、存在するがリンクされていないスタイルまたは文字スタイルが適用されている場合にスローされます。

{{% /alert %}}

次のコード例は、コンテンツコントロールのスタイルを設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## 繰り返しセクションコンテンツコントロールの操作

繰り返しセクションコンテンツコントロールでは、その中に含まれるコンテンツを繰り返すことができます。 Aspose.Wordsを使用すると、繰り返しセクションと繰り返しセクション項目タイプの構造化ドキュメントタグノードを作成でき、この目的のためにSdtType列挙型は**RepeatingSectionItem**

次のコード例は、繰り返しセクションコンテンツコントロールをテーブルにバインドする方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}
