---
title: セクションで作業 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: セクションと連携
linktitle: セクションと連携
description: "ドキュメントセクションの概念と操作の実践を理解する Javaお問い合わせ ドキュメントへのインサートセクション Javaお問い合わせ セクションを削除 Javaお問い合わせ ドキュメント間でセクションをコピーします。"
type: docs
weight: 120
url: /ja/java/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

時々、すべてのページで同じ書式を持たないドキュメントが欲しい。 たとえば、ページ番号のフォーマットを変更したり、異なるページサイズやオリエンテーションをしたり、任意の番号付けなしでカバーページとして最初のドキュメントページを持っている必要があります。 セクションで実現できます。

セクションは、ヘッダとフッター、オリエンテーション、列、マージン、ページ番号のフォーマットなどを制御するレベルノードです。

Aspose.Words セクションを管理し、文書をセクションに分割し、特定のセクションにのみ適用される変更をフォーマットすることができます。 Aspose.Words セクション内のヘッダやフッター、ページ設定、カラムの設定などのセクションフォーマットに関する情報を格納します。

この記事では、セクションとセクションの分割で動作する方法について説明します。

## セクションとセクションブレイクが何であるか

ドキュメントセクションは、 [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) そして、 [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) クラス。 セクションオブジェクトはすぐに子供の子供です [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ノードを経由してアクセスできる [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) プロパティ. これらのノードは、以下のようなメソッドを使用して管理できます。 [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), その他。

セクションブレイクは、ドキュメントページをカスタマイズ可能なレイアウトでセクションに分割するオプションです。

## セクションブレイクの種類

Aspose.Words 異なるセクションブレイクを使用して文書を分割し、フォーマットすることができます [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) 列挙:

- セクションブレイク連続
- セクションブレイクニューコロン
- セクションブレイク新規ページ
- セクションブレイクEvenPage
- セクションBreakOddPage

また、 [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) NewColumn、NewPage、 EvenPage、OddPageなどの最初のセクションでのみ適用されるブレイクタイプを選択するための列挙。

## セクションを管理する

セクションは通常のコンポジットノードなので、全ノード操作 API セクションに追加、削除、およびセクションのその他の操作を操作するために使用できる。 記事内のノードについてもっと読むことができます [Aspose.Words Document Object Model (DOM)](/words/ja/java/aspose-words-document-object-model/)お問い合わせ

一方、また、 `DocumentBuilder` API セクションで作業する。 この記事では、セクションを扱うこの特定の方法に焦点を当てます。

## セクションブレイクをインサートまたは削除する

Aspose.Words セクションをテキストに切り込みます。 [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) メソッド。

次のコードの例では、セクションをドキュメントに分割する方法を示します。

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

利用する [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) セクションブレイクを削除する方法。 特定のセクションを削除し、そのセクションのコンテンツを削除する必要がある場合は、 [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) メソッド。

次のコードの例では、セクションを破棄する方法を示します。

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

セクションブレイクは、その前に行くセクションに関する情報を持っていることに注意してください, その後に行くセクションではありません. セクションを破棄すると、削除されたブレイク前のテキストは、セクションのプロパティがそれに従って破棄されます。 これにより、文書全体が風景になるか、ヘッダやフッターが変更または完全に消える可能性があります。

{{% /alert %}}

## セクションを移動する

セクションを 1 つのポジションから別のドキュメントに移動したい場合は、そのセクションのインデックスを取得する必要があります。 Aspose.Words セクションの位置をから得ることを可能にします [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/)お問い合わせ 使うことができます。 [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) ドキュメントのすべてのセクションを取得できます。 しかし、最初のセクションだけを取得したい場合は、 [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) プロパティ.

次のコードの例では、コンポジットノードの子供から最初のセクションにアクセスし、反復する方法を示します。

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## セクションレイアウトを指定する

時々、異なる文書セクションのクリエイティブなレイアウトを作ることによって、ドキュメントがより良く見えるようにしたいです。 現在のセクショングリッドの型を指定する場合は、セクションレイアウトモードを選択できます。 [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) 列挙:

- デフォルト
- グリッド
- ライングリッド
- ・SnapToChars

次のコードの例では、各ページの行数を制限する方法を示します。

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## セクションの編集

ドキュメントに新しいセクションを追加すると、編集できる身体または段落はありません。 Aspose.Words セクションには、少なくとも1つの段落で体が含まれていることを保証することができます [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) メソッド – ドキュメントに Body (または HeaderFooter) ノードを自動的に追加し、パラグラフを追加します。

次のコードの例では、新しいセクションノードを準備する方法を示します。 **EnsureMinimum**:::

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### コンテンツを追加または送信

いくつかの形状を描画したり、セクションの先頭/末にテキストやイメージを追加したい場合は、 [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) そして、 [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) メソッド [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) クラス。

次のコードの例では、既存のセクションのコンテンツを追加する方法を示します。

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### セクションのクローン

Aspose.Words セクションを完全にコピーすることで、セクションを複製することができます。 [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) メソッド。

次のコードの例では、ドキュメントの最初のセクションをクローンする方法を示します。

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### 文書間のコピーセクション

場合によっては、複数のセクションで大きな文書をコピーして、セクションの内容を1つの文書から別の文書にコピーしたい場合があります。

Aspose.Words ドキュメント間でセクションをコピーすることができます。 [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) メソッド。

次のコードの例では、文書間でセクションをコピーする方法を示します。

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### セクションヘッダとフッターで作業

各セクションのヘッダーまたはフッターを表示するための基本的なルールはかなり簡単です。

1。 セクションが特定のタイプの独自のヘッダ/フッターを持たない場合は、前のセクションから取得します。
2。 ページに表示されているヘッダ/フッターの型は、"Different First Page" と "Different Odd & Even Page" セクションの設定で制御されます。 無効な場合は、セクション自身のタイトルは無視されます。

次のコードの例では、異なるヘッダで2つのセクションを作成する方法を示します。

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

ヘッダーとフッターのテキストを外すことなく削除したい場合 [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) ドキュメント内のオブジェクトは、 [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) メソッド。 また、ご利用いただくことも可能です。 [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) ドキュメント内のヘッダやフッターから全ての形状を削除するためのメソッドです。

次のコードの例では、すべてのヘッダーとフッターの内容をセクションでクリアする方法を示します。

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

次のコードの例では、すべてのヘッダのフッターからすべてのシェイプをセクションで削除する方法を示します。

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## セクション内のページプロパティをカスタマイズする

ページまたは文書を印刷する前に、単一のページまたは文書全体のサイズとレイアウトをカスタマイズして変更する場合があります。 ページ設定では、マージン、オリエンテーション、サイズなどのドキュメントページの設定を変更して、異なる最初のページやオッズページを印刷することができます。

Aspose.Words ページとセクションのプロパティをカスタマイズできます。 [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) クラス。

次のコードの例では、現在のセクションのページサイズとオリエンテーションなどのプロパティを設定する方法を示します。

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

次のコードの例では、すべてのセクションでページプロパティを変更する方法を示します。

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## お問い合わせ

- [ドキュメント内のノードの論理レベル](/words/ja/java/logical-levels-of-nodes-in-a-document/)
- [文書のインサートと添付](/words/ja/java/insert-and-append-documents/)
