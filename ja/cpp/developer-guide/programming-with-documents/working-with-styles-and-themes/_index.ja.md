---
title: C++でのスタイルの操作
second_title: C++の場合Aspose.Words
articleTitle: スタイルの操作
linktitle: スタイルの操作
description: "C++を使用してスタイルとテーマを操作するMicrosoft Word書式設定機能が強化されました。"
type: docs
weight: 110
url: /ja/cpp/working-with-styles-and-themes/
timestamp: 2024-01-30-16-22-34
---

[StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/)クラスは、組み込みを管理し、ユーザー定義の設定をスタイルに適用するために使用されます。

## スタイルに基づいてコンテンツを抽出する方法

単純なレベルでは、Word文書からスタイルに基づいてコンテンツを取得することは、特定のスタイルでフォーマットされた段落やテキストの実行を識別、リスト、カウントするのに役立ちます。 たとえば、例、タイトル、参照、キーワード、図の名前、ケーススタディなど、ドキュメント内の特定の種類のコンテンツを特定する必要がある場合があります。

これをさらに数ステップ実行するために、これを使用して、使用するスタイルによって定義された文書の構造を活用して、HTMLなどの別の出力のために文書を再利用することもできます。 これは実際にAsposeのドキュメントがどのように構築されているかであり、Aspose.Wordsをテストに入れます。 Aspose.Wordsを使用して構築されたツールは、ソースWord文書を取得し、特定の見出しレベルでトピックに分割します。 XMLファイルは、左側に表示されるナビゲーションツリーを構築するために使用されるAspose.Wordsを使用して生成されます。 そしてAspose.Wordsは各トピックをHTMLに変換します。

Word文書内の特定のスタイルでフォーマットされたテキストを取得するための解決策は、通常、Aspose.Wordsを使用して経済的で簡単です。

### 解決策

スタイルに基づいてコンテンツを取得するAspose.Wordsがどのように簡単に処理されるかを説明するために、例を見てみましょう。 この例では、サンプルWord文書から特定の段落スタイルと文字スタイルで書式設定されたテキストを取得します。 高レベルでは、これには次のものが含まれます:
- `Document`クラスを使用してWord文書を開く。
- ドキュメント内のすべての段落とすべての実行のコレクションを取得します。
- 必要な段落と実行のみを選択します。 具体的には、このサンプルWord文書から、'Heading1'段落スタイルと'Intense Emphasis'文字スタイルで書式設定されたテキストを取得します。

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


このサンプル文書では、'Heading1'段落スタイルで書式設定されたテキストは'Insert Tab'、'Quick Styles'、'Theme'であり、'Intense emphasis'文字スタイルで書式設定されたテキストは、'galleries'や'overall look'などの青、斜体、太字

### コード

スタイルベースのクエリの実装は、Aspose.Wordsドキュメントオブジェクトモデルでは、既に配置されているツールを使用するだけなので、非常に簡単です。 このソリューションには2つのクラスメソッドが実装されています:**ParagraphsByStyleName**-このメソッドは、ドキュメント内の特定のスタイル名を持つ段落の配列を取得します。 **RunsByStyleName**-このメソッドは、特定のスタイル名を持つドキュメント内の実行の配列を取得します。 これらのメソッドはどちらも非常に似ていますが、唯一の違いは、ノードタイプと、段落ノードと実行ノード内のスタイル情報の表現です。 ここにParagraphsByStyleNameの実装があります。 以下の例では、指定されたスタイルでフォーマットされたすべての段落を検索します。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

この実装では、`Document`クラスの`Document.GetChildNodes`メソッドも使用します。`Document`クラスは、指定された型を持つすべてのノードのコレクションを返します。この場合、すべての段落で返されます。

**Document.GetChildNodes**メソッドの2番目のパラメータがtrueに設定されていることに注意してください。 これにより、**Document.GetChildNodes**メソッドは、直接の子のみを選択するのではなく、すべての子ノードから再帰的に選択するように強制されます。

{{% /alert %}}

また、段落内の項目にアクセスするときにのみ段落がこのコレクションに読み込まれるため、paragraphコレクションは即時のオーバーヘッドを作成しないこ 次に、各演算子の標準を使用してコレクションを調べ、指定されたスタイルを持つ段落をparagraphsWithStyle配列に追加するだけです。 `Paragraph`スタイル名はスタイルで見つけることができます。 `Paragraph.ParagraphFormat`オブジェクトのNameプロパティ。 RunsByStyleNameの実装はほぼ同じですが、明らかに`NodeType.Run`を使用して実行ノードを取得しています。 `Run`オブジェクトの`Font.Style`プロパティは、**Run**ノードのスタイル情報にアクセスするために使用されます。 Below codeの例では、指定されたスタイルでフォーマットされたすべての実行を検索します。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


両方のクエリが実装されている場合は、documentオブジェクトを渡し、取得するコンテンツのスタイル名を指定するだけです。以下の例では、クエリを実行して結果を表示します。 この例のテンプレートファイルはこちらからダウンロードできます。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### 最終結果

すべてが完了すると、サンプルを実行すると、次の出力が表示されます:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


ご覧のとおり、これは非常に簡単な例であり、収集された段落の数とテキストを示し、サンプルWord文書で実行されます。

## 目次フィールドを挿入して操作する方法

多くの場合、目次(TOC)を含むドキュメントを操作します。 Aspose.Wordsを使用すると、数行のコードを使用して、独自の目次を挿入したり、ドキュメント内の既存の目次を完全に再構築したりできます。Aspose.Wordsを使用すると、独自の目次を挿入することができます。 この記事では、目次フィールドを操作する方法の概要と、次のことを示します:

- 新しい`TOC`を挿入する方法
- 文書内の新規または既存のTOCsを更新します。
- 目次の書式設定と全体的な構造を制御するスイッチを指定します。
- 目次のスタイルと外観を変更する方法。
- 文書からすべてのエントリとともに`TOC`フィールド全体を削除する方法。

### TCフィールドの挿入

多くの場合、特定のテキスト行が`TOC`に指定され、`TC`フィールドでマークされます。 MS Wordでこれを行う簡単な方法は、テキストを強調表示して*ALT+SHIFT+O*を押すことです。 これにより、選択したテキストを使用して`TC`フィールドが自動的に作成されます。 同じ手法は、コードを介して達成することができます。 以下のコードは、入力に一致するテキストを検索し、テキストと同じ位置に`TC`フィールドを挿入します。 このコードは、記事で使用されているのと同じ手法に基づいています。 以下の例は、文書内のテキストに`TC`フィールドを見つけて挿入する方法を示しています。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### 目次を変更する

#### スタイルの書式設定を変更する

`TOC`内のエントリの書式設定は、マークされたエントリの元のスタイルを使用せず、代わりに各レベルは同等の`TOC`スタイルを使用して書式設定されます。 たとえば、`TOC`の最初のレベルは**TOC1**スタイルで書式設定され、2番目のレベルは**TOC2**スタイルで書式設定されます。 これは、`TOC`の外観を変更するには、これらのスタイルを変更する必要があることを意味します。 Aspose.Wordsでは、これらのスタイルはロケールに依存しない`StyleIdentifier.TOC1`から`StyleIdentifier.TOC9`で表され、これらの識別子を使用して`Document.Styles`コレクションから取得できます。 文書の適切なスタイルが取得されたら、このスタイルの書式を変更することができます。 これらのスタイルへの変更は、文書内のTOCsに自動的に反映されます。 Below codeの例では、最初のレベル`TOC`スタイルで使用される書式設定プロパティを変更します。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

また、`TOC`を含めるようにマークされた段落の直接の書式設定（スタイルではなく段落自体で定義されている）は、目次のエントリにコピーされることに注意 たとえば、見出し1スタイルを使用して`TOC`のコンテンツをマークし、このスタイルには太字の書式があり、段落には斜体の書式が直接適用されています。 結果の`TOC`エントリはスタイルの書式設定の一部であるため太字ではありませんが、段落で直接書式設定されているため斜体になります。 また、各エントリとページ番号の間で使用される区切り文字の書式設定を制御することもできます。 デフォルトでは、これはタブ文字を使用してページ番号に広がる点線であり、右マージンの近くに並んでいる右タブストップがあります。

変更する特定の`TOC`レベルに対して取得された`Style`クラスを使用して、これらが文書内でどのように表示されるかを変更することもできます。 これが最初にどのように表示されるかを変更するには、スタイルの段落書式を取得するために`Style.ParagraphFormat`を呼び出す必要があります。 これにより、タブストップは`ParagraphFormat.TabStops`を呼び出し、適切なタブストップを変更することによって取得できます。 この同じ手法を使用して、タブ自体を移動または完全に削除することができます。 Below codeの例は、`TOC`関連する段落の右タブストップの位置を変更する方法を示しています。 この例のテンプレートファイルはこちらからダウンロードできます。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### ドキュメントから目次を削除する

目次は、`TOC`フィールドの`FieldStart`ノードとFieldEndノードの間にあるすべてのノードを削除することによって、ドキュメントから削除できます。 以下のコードはこれを示しています。 `TOC`フィールドの削除は、ネストされたフィールドを追跡しないため、通常のフィールドよりも簡単です。 代わりに、現在の目次の終わりに遭遇したことを意味する`FieldEnd`ノードのタイプが`FieldType.FieldTOC`であることを確認します。 この場合、適切に形成された文書は別の`TOC`フィールド内に完全にネストされた`TOC`フィールドを持たないと仮定できるので、ネストされたフィールドを気にせずにこの手法を使用することができます。 まず、各`TOC`の`FieldStart`ノードが収集され、格納されます。 次に、指定された`TOC`が列挙され、フィールド内のすべてのノードが訪問されて格納されます。 その後、ノードはドキュメントから削除されます。 Below codeの例は、指定された`TOC`を文書から削除する方法を示しています。 この例のテンプレートファイルはこちらからダウンロードできます。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## 別の段落スタイルを配置するには、スタイル区切り文字を挿入します

スタイルセパレータは、Ctrl+Alt+EnterキーボードショートカットをMS Wordに使用して段落の最後に追加することができます。 この機能を使用すると、1つの論理的に印刷された段落で使用される2つの異なる段落スタイルを使用できます。 特定の見出しの先頭からのテキストを目次に表示したいが、見出し全体を目次に表示したくない場合は、この機能を使用できます。 Below codeの例では、異なる段落スタイルを配置するためにスタイル区切り文字を挿入する方法を示しています。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## テンプレートからすべてのスタイルをコピーする

ある文書から別の文書にすべてのスタイルをコピーする場合があります。 `Document.CopyStylesFromTemplate`メソッドを使用すると、指定したテンプレートからドキュメントにスタイルをコピーできます。 スタイルがテンプレートからドキュメントにコピーされると、ドキュメント内の同様の名前のスタイルがテンプレート内のスタイルの説明と一致するよ テンプレートの一意のスタイルがドキュメントにコピーされます。 ドキュメント内の一意のスタイルはそのまま残ります。 Below codeの例は、ある文書から別の文書にスタイルをコピーする方法を示しています。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}
