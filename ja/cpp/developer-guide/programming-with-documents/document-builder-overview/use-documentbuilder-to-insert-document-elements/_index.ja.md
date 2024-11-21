---
title: DocumentBuilder を使用して文書要素を挿入します
second_title: C++の場合Aspose.Words
articleTitle: DocumentBuilder を使用して文書要素を挿入します
linktitle: DocumentBuilder を使用して文書要素を挿入します
type: docs
description: "C++のドキュメントビルダーを使用してドキュメント要素を挿入します。"
weight: 80
url: /ja/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

`DocumentBuilder`は文書を変更するために使用されます。 この記事では、いくつかのタスクを実行する方法について説明します:

## テキストの文字列を挿入する

ドキュメントに挿入する必要があるテキストの文字列を`DocumentBuilder.Write`メソッドに渡すだけです。 テキストの書式設定は`Font`プロパティによって決まります。 このオブジェクトには、さまざまなフォント属性(フォント名、フォントサイズ、色など)が含まれています。 いくつかの重要なフォント属性は、直接アクセスできるようにDocumentBuilderプロパティでも表されます。 これらはブール値のプロパティ`Font.Bold`、`Font.Italic`、および`Font.Underline`です。

設定した文字書式は、ドキュメント内の現在の位置から挿入されたすべてのテキストに適用されます。

以下の例は、DocumentBuilderを使用して書式設定されたテキストを挿入します。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## 段落の挿入

 `DocumentBuilder.Writeln`は文書にもテキストの文字列を挿入しますが、それに加えて段落区切りを追加します。 現在のフォントの書式設定は`DocumentBuilder.Font`プロパティでも指定され、現在の段落の書式設定は`DocumentBuilder.ParagraphFormat`プロパティで決定されます。 以下の例は、文書に段落を挿入する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## テーブルの挿入

DocumentBuilderを使用してテーブルを作成するための基本的なアルゴリズムは簡単です:

1. `DocumentBuilder.StartTable`を使用してテーブルを開始します。
1. `DocumentBuilder.InsertCell`を使用してセルを挿入します。 これにより、新しい行が自動的に開始されます。 必要に応じて、`DocumentBuilder.CellFormat`プロパティを使用してセルの書式を指定します。
1. `DocumentBuilder`メソッドを使用してセルの内容を挿入します。
1. 行が完了するまで、手順2と3を繰り返します。
1. 現在の行を終了するには`DocumentBuilder.EndRow`を呼び出します。 必要に応じて、`DocumentBuilder.RowFormat`プロパティを使用して行の書式を指定します。
1. テーブルが完了するまで、手順2-5を繰り返します。
1. テーブルの構築を終了するには`DocumentBuilder.EndTable`を呼び出します。 適切なDocumentBuilderテーブルの作成方法については、以下で説明します。

### テーブルの開始

`DocumentBuilder.StartTable`を呼び出すことは、テーブルを構築する最初のステップです。 セル内で呼び出すこともでき、その場合はネストされたテーブルを開始します。 次に呼び出すメソッドは`DocumentBuilder.InsertCell`です。

### セルの挿入

`DocumentBuilder->InsertCell`を呼び出すと、新しいセルが作成され、`DocumentBuilder`クラスの他のメソッドを使用して追加したコンテンツが現在のセルに追加されます。 同じ行の新しいセルを開始するには、`DocumentBuilder->InsertCell`を再度呼び出します。 セルの書式設定を指定するには、`DocumentBuilder.CellFormat`プロパティを使用します。 テーブルセルのすべての書式設定を表す`CellFormat`オブジェクトを返します。

### 行を終了する

現在の行を終了するには`DocumentBuilder.EndRow`を呼び出します。 その直後に`DocumentBuilder->InsertCell`を呼び出すと、テーブルは新しい行で続行されます。

行の書式設定を指定するには、`DocumentBuilder.RowFormat`プロパティを使用します。 テーブル行のすべての書式設定を表す`RowFormat`オブジェクトを返します。

### テーブルの終了

現在のテーブルを終了するには`DocumentBuilder.EndTable`を呼び出します。 このメソッドは、`DocumentBuilder->EndRow`が呼び出された後に一度だけ呼び出す必要があります。 呼び出されると、`DocumentBuilder.EndTable`はカーソルを現在のセルの外にテーブルの直後の位置に移動します。 次の例は、2行と2列を含む書式設定されたテーブルを作成する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## 休憩を挿入する

新しい行、段落、列、セクション、またはページを明示的に開始する場合は、`DocumentBuilder.InsertBreak`を呼び出します。 このメソッドに、`BreakType`列挙体で表される挿入する必要のあるブレークの型を渡します。 以下の例は、文書に改ページを挿入する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## 画像の挿入

DocumentBuilderは、インラインまたはフローティングイメージを挿入できる`DocumentBuilder->InsertImage`メソッドのいくつかのオーバーロードを提供します。 画像がEMFまたはWMFメタファイルの場合は、メタファイル形式でドキュメントに挿入されます。 他のすべての画像はPNG形式で保存されます。 `DocumentBuilder->InsertImage`メソッドは、異なるソースからの画像を使用できます:

- 文字列パラメータ`DocumentBuilder->InsertImage`を渡すことにより、ファイルまたは`URL`から。
- `Stream`パラメータ`DocumentBuilder->InsertImage`を渡すことによってストリームから。
- Imageパラメータ`DocumentBuilder->InsertImage`を渡してImageオブジェクトから取得します。
- バイト配列パラメータ`DocumentBuilder.InsertImage`を渡すことにより、バイト配列から。`DocumentBuilder->InsertImage`メソッドごとに、次のオプションを使用して画像を挿入できるオーバーロードがさらにあります:
- `DocumentBuilder->InsertImage`のように、特定の位置でインラインまたは浮動します。
- パーセントスケールまたはカスタムサイズ(例:`DocumentBuilder.InsertImage`)。 さらに、`DocumentBuilder->InsertImage`メソッドは、シェイプのプロパティをさらに変更できるように、作成および挿入されたばかりの`Shape`オブジェクトを返します。

### インラインイメージの挿入

画像を含むファイルを表す単一の文字列を`DocumentBuilder->InsertImage`に渡して、画像をインライングラフィックスとしてドキュメントに挿入します。 以下の例は、カーソル位置にインライン画像をドキュメントに挿入する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### フローティング(絶対配置)イメージの挿入

この例では、指定された位置とサイズのファイルまたは`URL`から浮動イメージを挿入します。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## ブックマークの挿入

ドキュメントにブックマークを挿入するには、次の操作を行います:

1. `DocumentBuilder->StartBookmark`を呼び出して、ブックマークの目的の名前を渡します。
1. DocumentBuilderメソッドを使用してブックマークテキストを挿入します。
1. **DocumentBuilder->StartBookmark**で使用したのと同じ名前を渡して`DocumentBuilder.EndBookmark`を呼び出します。
1. ブックマークは、任意の範囲に重複してまたがることができます。 有効なブックマークを作成するには、`DocumentBuilder->StartBookmark`と`DocumentBuilder->EndBookmark`の両方を同じブックマーク名で呼び出す必要があります。

{{% alert color="primary" %}}

不適切に形成されたブックマークまたは重複した名前のブックマークは、文書を保存するときに無視されます。

{{% /alert %}}

以下の例は、ドキュメントビルダーを使用してドキュメントにブックマークを挿入する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## `Form`フィールドの挿入

フォームフィールドは、ユーザーとの"対話"を可能にする単語フィールドの特定のケースです。 Microsoft Wordのフォームフィールドには、textbox、combo box、checkboxが含まれます。DocumentBuilderは、`DocumentBuilder.InsertTextInput`、`DocumentBuilder->InsertCheckBox`、`DocumentBuilder.InsertComboBox`の各タイプのフォームフィールドをドキュメントに挿入するための特別なメソッドを提供します。 フォームフィールドに名前を指定すると、同じ名前のブックマークが自動的に作成されることに注意してください。

### テキスト入力の挿入

 `DocumentBuilder.InsertTextInput`テキストボックスを文書に挿入します。 以下の例は、文書にテキスト入力フォームフィールドを挿入する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### チェックボックスの挿入

文書にチェックボックスを挿入するには`DocumentBuilder.InsertCheckBox`を呼び出します。 以下の例は、チェックボックスフォームフィールドをドキュメントに挿入する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### コンボボックスの挿入

ドキュメントにコンボボックスを挿入するには`DocumentBuilder.InsertComboBox`を呼び出します。 以下の例は、コンボボックスフォームフィールドをドキュメントに挿入する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## フィールドレベルでのロケールの挿入

顧客は今、フィールドレベルでロケールを指定することができ、より良い制御を達成することができます。 ロケールIdはDocumentBuilder内の各フィールドに関連付けることができます。 以下の例は、このオプションを使用する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## ハイパーリンクの挿入

ドキュメントにハイパーリンクを挿入するには`DocumentBuilder.InsertHyperlink`を使用します。 このメソッドは、ドキュメント内に表示されるリンクのテキスト、リンク先(URLまたはドキュメント内のブックマークの名前)、および`URL`がドキュメント内のブックマークの名前である場合にtrueにする必要があるbooleanパラメータの三つのパラメータを受け入れます。DocumentBuilder.InsertHyperlinkは内部的に`DocumentBuilder.InsertField`を呼び出します。このメソッドは、常にURLの先頭と末尾にアポストロフィを追加します。 `Font`プロパティを使用して、ハイパーリンク表示テキストのフォント書式を明示的に指定する必要があることに注意してください。 以下の例では、DocumentBuilderを使用して文書にハイパーリンクを挿入します。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Oleオブジェクトの挿入

Oleオブジェクトが必要な場合は`DocumentBuilder.InsertOleObject`を呼び出します。 このメソッドに`ProgId`を他のパラメータとともに明示的に渡します。 以下の例は、Oleオブジェクトをドキュメントに挿入する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Oleオブジェクトを挿入するときにファイル名と拡張子を設定する

OLEパッケージは、oleハンドラーが不明な場合に埋め込まれたオブジェクトを格納するためのレガシーで「文書化されていない」方法です。 Windows3.1、95、98などの初期のWindowsバージョンにはパッケージャがありました。文書にデータの任意のタイプを埋め込むために使用することができるexeアプリケーション。 現在、このアプリケーションはWindowsから除外されていますが、MS Wordや他のアプリケーションでは、OLEハンドラーが欠落しているか不明な場合にデータを埋め込 OlePackageクラスはOLEパッケージのプロパティにアクセスできます。 以下の例は、OLEパッケージのファイル名、拡張子、表示名を設定する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## HTMLの挿入

HtmlフラグメントまたはHTML文書全体を含むHTML文字列をWord文書に簡単に挿入できます。 この文字列を`DocumentBuilder->InsertHtml`メソッドに渡すだけです。 このメソッドの便利な実装の1つは、html文字列をデータベースに格納し、mail merge中にドキュメントに挿入して、ドキュメントビルダーのさまざまなメソッドを使用して作成するのではなく、書式設定されたコンテンツを追加することです。 以下の例は、DocumentBuilderを使用して文書にHTMLを挿入することを示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## 水平ルールを文書に挿入する

Below codeの例では、`DocumentBuilder->InsertHorizontalRule`メソッドを使用して水平ルール形状を文書に挿入する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
