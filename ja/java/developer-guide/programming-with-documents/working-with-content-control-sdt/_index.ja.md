---
title: コンテンツコントロールSDTと連携 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: コンテンツコントロールSDTと連携
linktitle: コンテンツコントロールSDTと連携
type: docs
description: "高度なドキュメントコンテンツ管理、コンテンツ管理の作成と操作方法(Structured Document Tags) 使用 Javaお問い合わせ"
weight: 390
url: /ja/java/working-with-content-control-sdt/
---

インスタグラム Microsoft Word, テンプレートからフォームを作成し、チェックボックス、テキストボックス、日付ピッカー、ドロップダウンリストなど、コンテンツコントロールを追加できます。 インスタグラム <span notrans="<span notrans=" Aspose.Words"=""></span>????? 構造化された文書のタグまたはコンテンツ管理 にロードされた文書から Aspose.Words 構造ドキュメントタグノードとしてインポートします。 構造化された文書タグ(SDTまたはコンテンツコントロール)は、顧客定義のセマンティックだけでなく、その行動や文書への外観を埋め込むことができます。

構造文書 タグは、次の場所で文書で起こることができます。

- ブロックレベル - 段落とテーブルの中で、身体の子として、HeaderFooter、コメント、脚注または形状ノード。
- Row-level - テーブル内の行の中で、テーブルノードの子として。
- セルレベル - 列のセルの中で、列ノードの子として。
- インラインレベル - 内側のインラインコンテンツの中で、パラグラフの子供として。
- 別の構造化されたDocumentTagの中にネスト。

## コンテンツを文書に表示する

このバージョンでは Aspose.Words, SDT またはコンテンツ管理の次のタイプを作成できます。

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

次のコードの例では、型チェックボックスのコンテンツ制御を作成する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

次のコードの例では、種類豊富なテキストボックスのコンテンツ制御を作成する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

次のコードの例では、型コンボボックスのコンテンツ制御を作成する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## コンテンツコントロールを更新する方法

このセクションでは、SDTやコンテンツコントロールの値をプログラム的に更新する方法について説明します。

次のコードの例では、チェックボックスの現在の状態を設定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

次のコードの例では、タイププレーンテキストボックス、ドロップダウンリスト、画像のコンテンツコントロールを変更する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

これらの例のサンプルファイルをダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx)お問い合わせ

{{% /alert %}}

## カスタムXML部品へのコンテンツコントロールの結合

Word文書のXMLデータ(*カスタムXML部分*)でコンテンツコントロールをバインドできます。

次のコードの例では、コンテンツ制御をカスタムXML部品にバインドする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## コンテンツ管理の明確な内容

プレースホルダーを表示することでコンテンツ管理の内容をクリアできます。 **構造文書Tag.clear()** メソッドは、この構造化されたドキュメントタグの内容をクリアし、定義されている場合はプレースホルダーを表示します。 しかし、 リビジョンがあればコンテンツコントロールの内容をクリアすることはできません。 コンテンツ管理がプレースホルダを持たない場合、MS Word で5つのスペースが入力されます(繰り返しセクション、繰り返しセクション項目、グループ、チェックボックス、引用を除く)。 コンテンツコントロールがカスタムXMLにマッピングされている場合、参照されたXMLノードが消去されます。

次のコードの例では、コンテンツ管理の内容をクリアする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## コンテンツコントロールの背景とボーダー色の変更

ザ・オブ・ザ・ `StructuredDocumentTag.Color` プロパティを使用すると、コンテンツコントロールの色を取得または設定できます。 色は2つの状況でコンテンツコントロールに影響を与えます。

1。 MS Wordは、マウスがコンテンツコントロールを上に移動したときにコンテンツコントロールの背景を強調します。 コンテンツ管理を識別するのに役立ちます。 ハイライトの色は少し「柔らかく」よりも *Color*お問い合わせ 例えば、MS Word はピンク色の背景を強調します。 *Color* 赤です。
2。 コンテンツコントロールでやり取り(編集、ピックなど)する場合、コンテンツコントロールの境界線は、 *Color*お問い合わせ

次のコードの例では、コンテンツコントロールの色を変更する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## スタイルを設定してテキストをコンテンツコントロールに入力する方法

コンテンツコントロールのスタイルを設定したい場合は、 `StructuredDocumentTag.Style` または `StructuredDocumentTag.StyleName` プロパティ。 テキストを出力文書のコンテンツコントロールに入力すると、タイプされたテキストはスタイル "Quote" になります。

{{% alert color="primary" %}}

リンクやキャラクターのスタイルのみをコンテンツコントロールに適用できます。 InvalidOperationException(「このスタイルをSDTに適用することができません」)は、そのスタイルが存在しているが、リンクされていないか、キャラクタースタイルが適用されるときに投げられます。

{{% /alert %}}

次のコードの例では、コンテンツコントロールのスタイルを設定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## 繰り返すセクションコンテンツコントロールで作業

繰り返すセクション コンテンツ コントロールは、その中に含まれているコンテンツを繰り返すことを可能にします。 使用方法 Aspose.Words, リピートセクションとリピートセクション項目タイプの構造化されたドキュメントタグノードは、この目的のために作成することができます。 [SdtType列挙型](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) REPEATING_SECTION_ITEM 会員様には、

次のコードの例では、繰り返しセクションのコンテンツコントロールをテーブルにバインドする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

