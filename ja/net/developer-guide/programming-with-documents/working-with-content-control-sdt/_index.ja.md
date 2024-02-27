---
title: コンテンツ コントロール SDT の使用
second_title: .NET用Aspose.Words
articleTitle: コンテンツ コントロール SDT の使用
linktitle: コンテンツ コントロール SDT の使用
description: "高度なドキュメント コンテンツ管理。C# を使用してコンテンツ コントロール (構造化ドキュメント タグ) を作成および操作する方法。"
type: docs
weight: 390
url: /ja/net/working-with-content-control-sdt/
---

Microsoft Word では、テンプレートから始めて、チェックボックス、テキスト ボックス、日付ピッカー、ドロップダウン リストなどのコンテンツ コントロールを追加することでフォームを作成できます。 Aspose.Words では、Aspose.Words にロードされたドキュメントの構造化ドキュメント タグまたはコンテンツ コントロールが StructuredDocumentTag ノードとしてインポートされます。構造化ドキュメント タグ (SDT またはコンテンツ コントロール) を使用すると、顧客定義のセマンティクスとその動作および外観をドキュメントに埋め込むことができます。

StructuredDocumentTag は、ドキュメント内の次の場所に使用できます。

- ブロックレベル – 段落と表の間で、Body、HeaderFooter、Comment、Footnote、または Shape ノードの子として
- 行レベル – テーブル内の行の間で、テーブル ノードの子として
- セルレベル – テーブル行内のセルのうち、行ノードの子として
- インラインレベル – 内部のインラインコンテンツの中で、段落の子として
- 別の StructuredDocumentTag 内にネストされています

## ドキュメントへのコンテンツ コントロールの挿入

このバージョンの Aspose.Words では、次のタイプの SDT またはコンテンツ コントロールを作成できます。

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

次のコード例は、チェックボックス タイプのコンテンツ コントロールを作成する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

次のコード例は、リッチ テキスト ボックス タイプのコンテンツ コントロールを作成する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

次のコード例は、タイプ コンボ ボックスのコンテンツ コントロールを作成する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## コンテンツ コントロールを更新する方法

このセクションでは、SDT またはコンテンツ コントロールの値をプログラムで更新する方法について説明します。

次のコード例は、チェックボックスの現在の状態を設定する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

次のコード例は、プレーン テキスト ボックス、ドロップダウン リスト、および画像タイプのコンテンツ コントロールを変更する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## コンテンツ コントロールをカスタム XML パーツにバインドする

Word 文書内の XML データ (*カスタム XML 部分*) にコンテンツ コントロールをバインドできます。

次のコード例は、コンテンツ コントロールをカスタム XML 部分にバインドする方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## 構造化文書タグ範囲の XML マッピング

**StructuredDocumentTagRangeStart.XmlMapping プロパティ** を使用すると、この構造化ドキュメントのタグ範囲と現在のドキュメントのカスタム XML 部分の XML データとのマッピングを取得できます。ただし、[SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/) メソッドを使用して、構造化文書のタグ範囲を XML データにマップすることはできます。

次のコード例は、XML マッピングを設定する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## コンテンツ コントロールのコンテンツをクリアする

プレースホルダーを表示すると、コンテンツ コントロールのコンテンツをクリアできます。 **StructuredDocumentTag.Clear** メソッドは、この構造化文書タグの内容をクリアし、プレースホルダーが定義されている場合はそれを表示します。ただし、コンテンツ コントロールにリビジョンがある場合、コンテンツ コントロールの内容をクリアすることはできません。コンテンツ コントロールにプレースホルダーがない場合は、Microsoft Word と同様に 5 つのスペースが挿入されます (繰り返しセクション、繰り返しセクション項目、グループ、チェックボックス、引用を除く)。コンテンツ コントロールがカスタム XML にマップされている場合、参照された XML ノードはクリアされます。

次のコード例は、コンテンツ コントロールのコンテンツをクリアする方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## コンテンツ コントロールの背景と境界線の色の変更

`StructuredDocumentTag.Color` プロパティを使用すると、コンテンツ コントロールの色を取得または設定できます。色は、次の 2 つの状況でコンテンツ コントロールに影響します。

1. MS Word は、マウスをコンテンツ コントロール上に移動すると、コンテンツ コントロールの背景を強調表示します。これは、コンテンツ コントロールを識別するのに役立ちます。ハイライトの色は*Color*よりも少し「柔らかい」です。たとえば、*Color* が赤の場合、MS Word は背景をピンク色で強調表示します。
2. コンテンツ コントロールを操作 (編集、選択など) すると、コンテンツ コントロールの境界線が *Color* で色付けされます。

次のコード例は、コンテンツ コントロールの色を変更する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## スタイルを設定してコンテンツ コントロールに入力されたテキストの書式を設定する方法

コンテンツ コントロールのスタイルを設定する場合は、`StructuredDocumentTag.Style` または `StructuredDocumentTag.StyleName` プロパティを使用できます。出力ドキュメントのコンテンツ コントロールにテキストを入力すると、入力されたテキストのスタイルは「引用」になります。

{{% alert color="primary" %}}

コンテンツ コントロールに適用できるのは、リンク スタイルと文字スタイルのみであることに注意してください。存在するがリンクされていないスタイルまたは文字スタイルが適用されている場合、InvalidOperationException (「このスタイルを SDT に適用できません」) がスローされます。

{{% /alert %}}

次のコード例は、コンテンツ コントロールのスタイルを設定する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## 繰り返しセクションのコンテンツ コントロールの操作

繰り返しセクションのコンテンツ コントロールを使用すると、その中に含まれるコンテンツを繰り返すことができます。 Aspose.Words を使用すると、繰り返しセクションと繰り返しセクション項目タイプの構造化文書タグ ノードを作成できます。この目的のために、[SdtType 列挙型](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) は **RepeatingSectionItem** プロパティを提供します。

次のコード例は、繰り返しセクションのコンテンツ コントロールをテーブルにバインドする方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
