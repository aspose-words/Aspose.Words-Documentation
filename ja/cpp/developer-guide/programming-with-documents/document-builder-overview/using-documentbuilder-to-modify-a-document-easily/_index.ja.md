---
title: DocumentBuilder を使用して文書を簡単に変更する
second_title: C++の場合Aspose.Words
articleTitle: DocumentBuilder を使用して文書を簡単に変更する
linktitle: DocumentBuilder を使用して文書を簡単に変更する
type: docs
description: "ドキュメントビルダーを使用して、c++で文書を簡単に変更できます。"
weight: 190
url: /ja/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## 書式の指定

### フォントの書式設定

現在のフォントの書式は、`DocumentBuilder.Font`プロパティによって返される`Font`オブジェクトで表されます。 `Font`クラスには、Microsoft Wordで可能なさまざまなフォントプロパティが含まれています。 以下の例は、フォントの書式設定を設定する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### 段落の書式設定

現在の段落の書式設定は、`DocumentBuilder.ParagraphFormat`プロパティによって返される`ParagraphFormat`オブジェクトによって表されます。 このオブジェクトはMicrosoft Wordで利用可能な様々な段落書式設定プロパティをカプセル化します。 `ParagraphFormat.ClearFormatting`を呼び出すことで、段落の書式をデフォルトの通常のスタイル、左揃え、インデントなし、間隔なし、境界線なし、陰影なしに簡単にリセットできます。 以下の例は、段落の書式設定を設定する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### アジアのタイポグラフィを扱う

#### アジアとラテンのテキスト、数字の間のスペースを自動的に調整します

東アジアとラテン語の両方のテキストを含むテンプレートを設計していて、両方のタイプのテキスト間のスペースを制御してフォームテンプレートの外観を向上させたい場合は、これらの2つのタイプのテキスト間のスペースを自動的に調整するようにフォームテンプレートを構成できます。 これを実現するには、ParagraphFormatクラスのAddSpaceBetweenFarEastAndAlphaプロパティとAddSpaceBetweenFarEastAndDigitプロパティを使用できます。

次のコード例は、`ParagraphFormat.AddSpaceBetweenFarEastAndAlpha`および`ParagraphFormat.AddSpaceBetweenFarEastAndDigit`プロパティの使用方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### アジアの段落の間隔とインデントを変更する

次のコード例は、アジアの段落の間隔とインデントを変更する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### 改行オプションの設定

MS Wordの`Paragraph`プロパティダイアログのアジアのタイポグラフィタブには改行グループがあります。 このグループのオプションは、以下を使用して設定できますFarEastLineBreakControl, WordWrap, HangingPunctuation ParagraphFormatクラスのプロパティ。 Below codeの例は、これらのプロパティの使用方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### セルの書式設定

セルの書式設定は、テーブルの構築中に使用されます。 これは、`DocumentBuilder.CellFormat`プロパティによって返される`CellFormat`オブジェクトによって表されます。 CellFormat幅や垂直方向の配置など、さまざまなテーブルセルプロパティをカプセル化します。 以下の例は、単一の書式設定されたセルを含むテーブルを作成する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### 行の書式設定

現在の行の書式設定は、`DocumentBuilder.RowFormat`プロパティによって返される`RowFormat`オブジェクトによって決定されます。 このオブジェクトは、すべての表の行の書式設定に関する情報をカプセル化します。 以下の例は、単一のセルを含むテーブルを作成し、行の書式設定を適用する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### リストの書式設定

Aspose.Wordsリストの書式設定を適用することで、リストを簡単に作成できます。 DocumentBuilderは`ListFormat`オブジェクトを返す`DocumentBuilder.ListFormat`プロパティを提供します。 このオブジェクトには、リストの開始と終了、およびインデントの増減を行ういくつかのメソッドがあります。 Microsoft Wordには、箇条書きと番号付きの2つの一般的なタイプのリストがあります。

- 箇条書きリストを開始するには、`ListFormat.ApplyBulletDefault`を呼び出します。
- 番号付きリストを開始するには、`ListFormat.ApplyNumberDefault`を呼び出します。

箇条書きまたは番号と書式設定は現在の段落に追加され、**DocumentBuilder**を使用して作成された以降のすべての段落は`ListFormat.RemoveNumbers`が呼び出されて箇条書きリストの書式 Word文書では、リストは最大9つのレベルで構成されています。 各レベルのリストの書式設定は、使用される箇条書きまたは番号、左インデント、箇条書きとテキストの間のスペースなどを指定します。

- 現在の段落のリストレベルを1レベル上げるには、`ListFormat.ListIndent`を呼び出します。
- 現在の段落のリストレベルを1レベル下げるには、`ListFormat.ListOutdent`を呼び出します。

これらのメソッドは、リストレベルを変更し、新しいレベルの書式設定プロパティを適用します。

{{% alert color="primary" %}}

また、`ListFormat.ListLevelNumber`プロパティを使用して、段落のリストレベルを取得または設定することもできます。 リストレベルには0から8の番号が付けられています。

{{% /alert %}}

以下の例は、マルチレベルリストを構築する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### ページの設定とセクションの書式設定

ページ設定とセクションプロパティは`DocumentBuilder.PageSetup`プロパティによって返される`PageSetup`オブジェクトにカプセル化されます。 このオブジェクトには、セクションのすべてのページ設定属性(左余白、下余白、用紙サイズなど)がプロパティとして含まれます。 以下の例は、現在のセクションのページサイズや向きなどのプロパティを設定する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### スタイルの適用

フォントやParagraphFormatのような一部の書式設定オブジェクトはスタイルをサポートしています。 単一の組み込みまたはユーザー定義のスタイルは、名前、基本スタイル、フォント、スタイルの段落書式などの対応するスタイルプロパティを含む`Style`オブジ

さらに、**Style**オブジェクトは、**Style.StyleIdentifier**列挙値によって表されるロケールに依存しないスタイル識別子を返す`Style.StyleIdentifier`プロパティを提供します。 重要なのは、Microsoft Wordの組み込みスタイルの名前が異なる言語にローカライズされていることです。 スタイル識別子を使用すると、文書の言語に関係なく正しいスタイルを見つけることができます。 列挙値は、Normal、Heading1、Heading2などの組み込みスタイルMicrosoft Wordに対応しています。 すべてのユーザー定義スタイルには**StyleIdentifier.User value**が割り当てられます。 以下の例は、段落スタイルを適用する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### 境界線とシェーディング

境界線はBorderCollectionで表されます。 これは、インデックスまたは境界線の種類によってアクセスされるBorderオブジェクトのコレクションです。 境界線の型は`BorderType`列挙体で表されます。 列挙体の一部の値は、複数または1つのドキュメント要素にのみ適用できます。 たとえば、`BorderType.Bottom`は段落または表のセルに適用できますが、`BorderType.DiagonalDown`は表のセル内の対角線の境界線のみを指定します。

Borderコレクションとそれぞれの境界線の両方に、色、線のスタイル、線の幅、テキストからの距離、オプションの影などの同様の属性があります。 それらは同じ名前のプロパティによって表されます。 プロパティ値を組み合わせることで、さまざまな境界線の種類を実現できます。 さらに、**BorderCollection**オブジェクトと**Border**オブジェクトの両方で、`Border.ClearFormatting`メソッドを呼び出すことでこれらの値をデフォルトにリセットできます。 境界線のプロパティがデフォルト値にリセットされると、境界線は非表示になります。 `Shading`クラスには、文書要素のシェーディング属性が含まれています。 必要なシェーディングテクスチャと、要素の背景と前景に適用される色を設定できます。

シェーディングテクスチャは、**Shading**オブジェクトにさまざまなパターンを適用できる`TextureIndex`列挙値で設定されます。 たとえば、ドキュメント要素の背景色を設定するには、`TextureIndex.TextureSolid`の値を使用し、必要に応じて前景の陰影の色を設定します。 下の例は、段落に境界線と陰影を適用する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### グリッドにスナップ

Aspose.Wordsは、段落プロパティスナップをグリッドに取得および設定するための二つのプロパティ`ParagraphFormat.SnapToGrid`と`Font.SnapToGrid`を提供します。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## カーソルの移動

### 現在のカーソル位置の検出

Builderのカーソルが現在位置している場所はいつでも取得できます。 `DocumentBuilder.CurrentNode`プロパティは、このビルダーで現在選択されているノードを返します。 ノードは段落の直接の子です。 `DocumentBuilder`を使用して実行する挿入操作は、`DocumentBuilder.CurrentNode`の前に挿入されます。 現在の段落が空の場合、またはカーソルが段落の終わりの直前に配置されている場合、`DocumentBuilder.CurrentNode`はnullを返します。

また、この**DocumentBuilder**で現在選択されている段落を取得する`DocumentBuilder.CurrentParagraph`プロパティを使用することもできます。 以下の例は、ドキュメントビルダーで現在のノードにアクセスする方法を示しています。 この例のテンプレートファイルはこちらからダウンロードできます。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### 任意のノード（段落とその子）への移動

段落または段落の直接の子であるドキュメントオブジェクトノードがある場合は、ビルダーのカーソルをこのノードにポイントできます。 これを実行するには`DocumentBuilder.MoveTo`メソッドを使用します。 以下の例は、カーソル位置を指定したノードに移動する方法を示しています。 この例のテンプレートファイルはこちらからダウンロードできます。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### ドキュメントの開始/終了への移動

文書の先頭に移動する必要がある場合は、`DocumentBuilder.MoveToDocumentStart`を呼び出します。 文書の最後に移動する必要がある場合は、`DocumentBuilder.MoveToDocumentEnd`を呼び出します。 以下の例は、カーソル位置を文書の先頭または末尾に移動する方法を示しています。 この例のテンプレートファイルはこちらからダウンロードできます。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### セクションへの移動

複数のセクションを含むドキュメントを操作している場合は、`DocumentBuilder.MoveToSection`を使用して目的のセクションに移動できます。 このメソッドは、指定されたセクションの先頭にカーソルを移動し、必要なセクションのインデックスを受け入れます。 セクションインデックスが0以上の場合、文書の先頭からのインデックスを指定し、0が最初のセクションになります。 セクションインデックスが0より小さい場合、ドキュメントの末尾からのインデックスを指定し、最後のセクションを-1とします。 以下の例は、指定されたセクションにカーソル位置を移動する方法を示しています。 この例のテンプレートファイルはこちらからダウンロードできます。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### ヘッダー/フッターへの移動

ヘッダーまたはフッターにデータを配置する必要がある場合は、最初に`DocumentBuilder.MoveToHeaderFooter`を使用してそこに移動する必要があります。 このメソッドは、カーソルを移動するヘッダーまたはフッターのタイプを識別するHeaderFooterType列挙値を受け入れます。 最初のページで異なるヘッダーとフッターを作成する場合は、`PageSetup.DifferentFirstPageHeaderFooter`プロパティを**true**に設定する必要があります。 偶数ページと奇数ページで異なるヘッダーとフッターを作成する場合は、`PageSetup.OddAndEvenPagesHeaderFooter`を**true**に設定する必要があります。

メインストーリーに戻る必要がある場合は、**DocumentBuilder.MoveToSection**を使用してヘッダーまたはフッターから移動します。 以下の例では、DocumentBuilderを使用してドキュメント内にヘッダーとフッターを作成します。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### 段落への移動

現在のセクションの目的の段落にカーソルを移動するには、`DocumentBuilder.MoveToParagraph`を使用します。 このメソッドには、paragraphIndex(移動先の段落のインデックス)とcharacterIndex(段落内の文字のインデックス)の二つのパラメータを渡す必要があります。

ナビゲーションは、現在のセクションの現在のストーリー内で実行されます。 つまり、カーソルを最初のセクションのプライマリヘッダーに移動した場合、paragraphIndexはそのセクションのそのヘッダー内の段落のインデックスを指定します。

ParagraphIndexが0以上の場合、セクションの先頭からのインデックスを指定し、0が最初の段落になります。paragraphIndexが0以上の場合、セクションの先頭からのインデックスを指定します。 paragraphIndexが0より小さい場合は、セクションの最後からのインデックスを指定し、-1が最後の段落になります。

文字インデックスは、現在、段落の先頭に移動するには0、段落の末尾に移動するには-1としてのみ指定できます。 以下の例は、指定された段落にカーソル位置を移動する方法を示しています。 この例のテンプレートファイルはこちらからダウンロードできます。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### テーブルセルへの移動

現在のセクションのテーブルセルにカーソルを移動する必要がある場合は`DocumentBuilder.MoveToCell`を使用します。 このメソッドは、次の4つのパラメータを受け入れます:

- tableIndex-移動先のテーブルのインデックス。
- rowIndex-テーブル内の行のインデックス。
- columnIndex-テーブル内の列のインデックス。
- characterIndex-セル内の文字のインデックス。

ナビゲーションは、現在のセクションの現在のストーリー内で実行されます。 Indexパラメータの場合、indexが0以上の場合、最初の要素である0で先頭からインデックスを指定します。 Indexが0より小さい場合、末尾からのインデックスを指定し、-1が最後の要素になります。

また、characterIndexは現在、セルの先頭に移動するには0、セルの末尾に移動するには-1しか指定できないことに注意してください。 以下の例は、指定されたテーブルセルにカーソル位置を移動する方法を示しています。 この例のテンプレートファイルはこちらからダウンロードできます。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### ブックマークへの移動

ブックマークは、新しい要素が挿入される文書内の特定の場所をマークするために頻繁に使用されます。 ブックマークに移動するには、`DocumentBuilder.MoveToBookmark`を使用します。 このメソッドには2つのオーバーロードがあります。 最も単純なものは、カーソルが移動されるブックマークの名前だけを受け入れます。 以下の例は、カーソル位置をブックマークに移動する方法を示しています。 この例のテンプレートファイルはこちらからダウンロードできます。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

このオーバーロードは、指定された名前のブックマークの開始直後の位置にカーソルを移動します。 別のオーバーロード`DocumentBuilder.MoveToBookmark`は、カーソルをより高い精度でブックマークに移動します。 2つの追加のブールパラメータを受け入れます:

- isStartカーソルをブックマークの先頭に移動するか末尾に移動するかを指定します。
- isAfterカーソルをブックマークの開始位置または終了位置の後に移動するか、ブックマークの開始位置または終了位置の前に移動するかを決定します。

以下の例では、ブックマークの終了直後にカーソル位置を移動する方法を示しています。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

両方の方法の比較では、大文字と小文字は区別されません。

この方法で新しいテキストを挿入しても、ブックマークの既存のテキストは置き換えられません。 ドキュメント内のブックマークの中には、フォームフィールドに割り当てられているものがあります。 そのようなブックマークに移動してテキストを挿入すると、テキストがフォームフィールドコードに挿入されます。 これによりフォームフィールドが無効になることはありませんが、挿入されたテキストはフィールドコードの一部になるため表示されません。

## 測定単位間で変換する方法

Aspose.Words API で提供される、何らかの測定値 (幅/高さ、余白、さまざまな距離) を表すオブジェクト プロパティのほとんどは、ポイント単位の値を受け入れます (1 インチは 72 ポイントに相当)。これが不便な場合もあるため、さまざまな測定単位を変換するためのヘルパー関数を提供する `ConvertUtil` クラスがあります。これにより、インチをポイントに、ポイントをインチに、ピクセルをポイントに、ポイントをピクセルに変換できます。ピクセルをポイントに変換する場合、またはその逆の場合、96 dpi (ドット/インチ) 解像度または指定された dpi 解像度で実行できます。
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
