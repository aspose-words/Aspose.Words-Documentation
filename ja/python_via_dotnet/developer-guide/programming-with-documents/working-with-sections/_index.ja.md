---
title: Python でのセクションの操作
second_title: Python via .NET用Aspose.Words
articleTitle: セクションの操作
linktitle: セクションの操作
description: "Python を使用して、ドキュメント内のセクションとセクション区切りを作成および管理します。セクションをドキュメント Python に挿入します。セクションPythonを削除します。ドキュメント間でセクションをコピーします。"
type: docs
weight: 120
url: /ja/python-net/working-with-sections/
timestamp: 2024-09-25-11-08-55
---

場合によっては、すべてのページにわたって同じ書式設定を持たないドキュメントが必要になることがあります。たとえば、ページ番号の形式を変更したり、ページのサイズや方向を変更したり、文書の最初のページを番号を付けずに表紙として使用したりする必要がある場合があります。セクションを使用するとそれを実現できます。

セクションは、ヘッダーとフッター、方向、列、余白、ページ番号の書式設定などを制御するレベル ノードです。

Aspose.Words を使用すると、セクションを管理し、ドキュメントをセクションに分割し、特定のセクションにのみ適用される書式変更を行うことができます。 Aspose.Words は、ヘッダーとフッター、ページ設定、セクション区切りの列設定などのセクションの書式設定に関する情報を保存します。

この記事では、セクションとセクション区切りの操作方法について説明します。

## セクションとセクション区切りとは

ドキュメント セクションは、[Section](https://reference.aspose.com/words/python-net/aspose.words/section/) クラスと [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/) クラスによって表されます。セクション オブジェクトは [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ノードの直接の子であり、[Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) プロパティを介してアクセスできます。これらのノードは、[Remove](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove/#node)、[Add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/#node)、[IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/#node) などのメソッドを使用して管理できます。

セクション区切りは、カスタマイズ可能なレイアウトを使用して文書ページをセクションに分割するオプションです。

## セクション区切りの種類

Aspose.Words を使用すると、[BreakType](https://reference.aspose.com/words/python-net/aspose.words/breaktype/) 列挙のさまざまなセクション区切りを使用してドキュメントを分割し、フォーマットすることができます。

- セクション区切り連続
- セクション区切り新しい列
- セクション区切り新しいページ
- セクション区切り偶数ページ
- セクション区切り奇数ページ

[SectionStart](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/) 列挙を使用して、NewColumn、NewPage、EvenPage、OddPage など、最初のセクションにのみ適用されるブレーク タイプを選択することもできます。

## セクションの管理

セクションは通常の複合ノードであるため、ノード操作 API 全体を使用してセクションを操作し、セクションに対する追加、削除、その他の操作を行うことができます。ノードの詳細については、[Aspose.Words Document Object Model (DOM)](/words/ja/python-net/aspose-words-document-object-model/) の記事を参照してください。

一方、`DocumentBuilder` API を使用してセクションを操作することもできます。この記事では、セクションを操作するこの特定の方法に焦点を当てます。

## セクション区切りの挿入または削除

Aspose.Words では、[InsertBreak](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/#breaktype) メソッドを使用してテキストにセクション区切りを挿入できます。

次のコード例は、ドキュメントにセクション区切りを挿入する方法を示しています。

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "insert-section-breaks.py" >}}

セクション区切りを削除するには、[Remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/#default) メソッドを使用します。特定のセクション区切りを削除する必要がなく、代わりにそのセクションのコンテンツを削除する場合は、[ClearContent](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/#default) メソッドを使用できます。

次のコード例は、セクション区切りを削除する方法を示しています。

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "remove-section-breaks.py" >}}

{{% alert color="primary" %}}

セクション区切りには、その後のセクションではなく、その前のセクションに関する情報が含まれることに注意してください。したがって、セクション区切りを削除すると、削除された区切りの前のテキストは、その後に続くセクション区切りのプロパティを取得します。これにより、文書全体が横向きになったり、ヘッダーとフッターが変更されたり、完全に消えたりする可能性があります。

{{% /alert %}}

## セクションを移動する

ドキュメント内のある位置から別の位置にセクションを移動する場合は、そのセクションのインデックスを取得する必要があります。 Aspose.Words を使用すると、[SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/) からセクションの位置を取得できます。 [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) プロパティを使用すると、ドキュメント内のすべてのセクションを取得できます。ただし、最初のセクションのみを取得したい場合は、[FirstSection](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) プロパティを使用できます。

次のコード例は、最初のセクションにアクセスし、複合ノードの子を反復処理する方法を示しています。

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "section-child-nodes.py" >}}

## セクションレイアウトの指定

ドキュメントのさまざまなセクションにクリエイティブなレイアウトを作成して、ドキュメントの見栄えを良くしたい場合があります。現在のセクション グリッドのタイプを指定する場合は、[SectionLayoutMode](https://reference.aspose.com/words/python-net/aspose.words/sectionlayoutmode/) 列挙を使用してセクション レイアウト モードを選択できます。

- デフォルト
- グリッド
- ライングリッド
- SnapToChars

次のコード例は、各ページの行数を制限する方法を示しています。

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "line-grid-section-layout-mode.py" >}}

## セクションを編集する

ドキュメントに新しいセクションを追加する場合、編集できる本文や段落はありません。 Aspose.Words では、[EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words/section/ensure_minimum/#default) メソッドを使用してセクションに少なくとも 1 つの段落を含む本文が含まれていることを保証できます。これにより、自動的に本文 (またはヘッダーフッター) ノードがドキュメントに追加され、次に段落が追加されます。

次のコード例は、**EnsureMinimum** を使用して新しいセクション ノードを準備する方法を示しています。

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "ensure-minimum.py" >}}

### コンテンツを追加または先頭に追加

セクションの先頭/末尾に何らかの図形を描画したり、テキストや画像を追加したりする場合は、[Section](https://reference.aspose.com/words/python-net/aspose.words/section/) クラスの [AppendContent](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/#section) メソッドと [PrependContent](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/#section) メソッドを使用できます。

次のコード例は、既存のセクションのコンテンツを追加する方法を示しています。

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "append-section-content.py" >}}

### セクションのクローンを作成する

Aspose.Words では、[Clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/#default) メソッドを使用してセクションの完全なコピーを作成し、セクションを複製できます。

次のコード例は、ドキュメントの最初のセクションのクローンを作成する方法を示しています。

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "clone-section.py" >}}

### ドキュメント間でセクションをコピーする

場合によっては、多数のセクションを含む大きなドキュメントがあり、セクションの内容をあるドキュメントから別のドキュメントにコピーしたいことがあります。

Aspose.Words では、[ImportNode](https://reference.aspose.com/words/python-net/aspose.words/nodeimporter/import_node/#node_bool) メソッドを使用してドキュメント間でセクションをコピーできます。

次のコード例は、ドキュメント間でセクションをコピーする方法を示しています。

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "copy-section.py" >}}

### セクションヘッダーとフッターの操作

各セクションのヘッダーまたはフッターを表示するための基本的なルールは非常に簡単です。

1. セクションに特定のタイプの独自のヘッダー/フッターがない場合は、前のセクションから取得されます。
2. ページに表示されるヘッダー/フッターのタイプは、「異なる最初のページ」および「異なる奇数ページと偶数ページ」セクションの設定によって制御されます。これらが無効になっている場合、セクション自体のタイトルは無視されます。

次のコード例は、異なるヘッダーを持つ 2 つのセクションを作成する方法を示しています。

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

ドキュメント内の [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) オブジェクトを削除せずにヘッダーとフッターのテキストを削除する場合は、[ClearHeadersFooters](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default) メソッドを使用できます。さらに、[DeleteHeaderFooterShapes](https://reference.aspose.com/words/python-net/aspose.words/section/delete_header_footer_shapes/#default) メソッドを使用して、ドキュメント内のヘッダーとフッターからすべての図形を削除できます。

次のコード例は、セクション内のすべてのヘッダーとフッターのコンテンツをクリアする方法を示しています。

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-content.py" >}}

次のコード例は、セクション内のすべてのヘッダー フッターからすべての図形を削除する方法を示しています。

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-shapes.py" >}}

## セクションのページプロパティをカスタマイズする

ページまたはドキュメントを印刷する前に、単一ページまたはドキュメント全体のサイズとレイアウトをカスタマイズおよび変更することができます。ページ設定を使用すると、異なる最初のページまたは奇数ページを印刷するための余白、向き、サイズなどのドキュメント ページの設定を変更できます。

Aspose.Words では、[PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) クラスを使用してページとセクションのプロパティをカスタマイズできます。

次のコード例は、現在のセクションのページ サイズや方向などのプロパティを設定する方法を示しています。

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "page-setup-and-section-formatting.py" >}}

次のコード例は、すべてのセクションのページ プロパティを変更する方法を示しています。

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "modify-page-setup-in-all-sections.py" >}}

## 関連項目

- [ドキュメント内のノードの論理レベル](/words/python-net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
- [ドキュメントの挿入と追加](/words/ja/python-net/insert-and-append-documents/)
