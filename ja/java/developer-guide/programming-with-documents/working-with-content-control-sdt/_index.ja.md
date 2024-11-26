---
title: Java内のコンテンツコントロールSDTの操作
second_title: Aspose.WordsのためのJava
articleTitle: コンテンツコントロールSDTの操作
linktitle: コンテンツコントロールSDTの操作
type: docs
description: "高度な文書コンテンツ管理、Javaを使用してコンテンツコントロール(構造化文書タグ)を作成および操作する方法。"
weight: 390
url: /ja/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

Microsoft Wordでは、テンプレートから始めて、checkboxes、テキストボックス、日付ピッカー、ドロップダウンリストなどのコンテンツコントロールを追加することで、フォームを作 Aspose.Wordsでは、Aspose.Wordsにロードされたドキュメントの構造化ドキュメントタグまたはコンテンツコントロールがStructuredDocumentTagノードとしてインポートされます。 構造化ドキュメントタグ(SDTまたはコンテンツコントロール)を使用すると、顧客定義のセマンティクスとその動作と外観を文書に埋め込むことがで

StructuredDocumentTagは、次の場所の文書で発生する可能性があります:

- ブロックレベル-段落と表の間で、Body、HeaderFooter、Comment、Footnote、またはShapeノードの子として使用されます。
- Row-level-テーブルノードの子としてのテーブル内の行の間。
- Cell-level-テーブル行のセルのうち、行ノードの子として。
- Inline-level-段落の子として、内部のインラインコンテンツの中で。
- 別のStructuredDocumentTagの中にネストされています。

## ドキュメントへのコンテンツコントロールの挿入

このバージョンのAspose.Wordsでは、次のタイプのSDTまたはコンテンツコントロールを作成できます:

- Checkbox
- DropDownList
- ComboBox
- 日付
- BuildingBlockGallery
- グループ
- `Picture`
- RichText
- PlainText

次のコード例は、タイプcheckboxのコンテンツコントロールを作成する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

次のコード例は、リッチテキストボックス型のコンテンツコントロールを作成する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

次のコード例は、コンボボックス型のコンテンツコントロールを作成する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## コンテンツコントロールを更新する方法

このセクションでは、SDTまたはコンテンツコントロールの値をプログラムで更新する方法について説明します。

次のコード例は、checkboxの現在の状態を設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

次のコード例は、プレーンテキストボックス、ドロップダウンリスト、および画像タイプのコンテンツコントロールを変更する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

これらの例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## コンテンツコントロールをカスタムXMLパーツにバインドする

Word文書では、コンテンツコントロールをXMLデータ(*custom XML part*)でバインドできます。

次のコード例は、コンテンツコントロールをカスタムXMLパーツにバインドする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## コンテンツコントロールの内容をクリアする

プレースホルダーを表示することで、コンテンツコントロールの内容をクリアできます。 **StructuredDocumentTag.clear()**メソッドは、この構造化ドキュメントタグの内容をクリアし、定義されている場合はプレースホルダを表示します。 ただし、コンテンツコントロールにリビジョンがある場合は、コンテンツコントロールの内容をクリアすることはできません。 コンテンツコントロールにプレースホルダーがない場合、MSWordのように5つのスペースが挿入されます(繰り返しセクション、繰り返しセクション項目、グループ、チェ コンテンツコントロールがカスタムXMLにマップされている場合、参照されているXMLノードはクリアされます。

次のコード例は、コンテンツコントロールのコンテンツをクリアする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## コンテンツコントロールの背景色と境界線の色を変更する

`StructuredDocumentTag.Color`プロパティを使用すると、コンテンツコントロールの色を取得または設定できます。 色は、次の2つの状況でコンテンツコントロールに影響します:

1. MSWordは、マウスがコンテンツコントロールの上に移動すると、コンテンツコントロールの背景を強調表示します。 これは、コンテンツコントロールを識別するのに役立ちます。 強調表示の色は*Color*よりも少し「柔らかい」です。 たとえば、*Color*が赤の場合、MSWordは背景をピンク色で強調表示します。
2. コンテンツコントロールと対話（編集、ピッキングなど）すると、コンテンツコントロールの境界線は*Color*で色付けされます。

次のコード例は、コンテンツコントロールの色を変更する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## コンテンツコントロールに入力されたテキストの書式設定にスタイルを設定する方法

コンテンツコントロールのスタイルを設定する場合は、`StructuredDocumentTag.Style`または`StructuredDocumentTag.StyleName`プロパティを使用できます。 出力ドキュメントのコンテンツコントロールにテキストを入力すると、入力されたテキストのスタイルは"引用"になります。

{{% alert color="primary" %}}

コンテンツコントロールに適用できるのは、リンクされたスタイルと文字スタイルのみです。 InvalidOperationException("Cannot apply this style to theSDT")は、存在するがリンクされていないスタイルまたは文字スタイルが適用されているときにスローされます。

{{% /alert %}}

次のコード例は、コンテンツコントロールのスタイルを設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## 繰り返しセクションコンテンツコントロールの操作

繰り返しセクションコンテンツコントロールでは、その中に含まれるコンテンツを繰り返すことができます。 Aspose.Wordsを使用すると、繰り返しセクションおよび繰り返しセクション項目タイプの構造化ドキュメントタグノードを作成でき、この目的のために[SdtType列挙型](https://reference.aspose.com/words/java/com.aspose.words/sdttype/)はREPEATING_SECTION_ITEMメ

次のコード例は、繰り返しセクションコンテンツコントロールをテーブルにバインドする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

