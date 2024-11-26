---
title: C++でのセクションの操作
second_title: C++の場合Aspose.Words
articleTitle: セクションの操作
linktitle: セクションの操作
description: "C++を使用したドキュメントセクションの概念と操作の実践を理解する。 ドキュメントC++にセクションを挿入します。 セクションC++を削除します。 ドキュメント間のセクションをコピーします。"
type: docs
weight: 120
url: /ja/cpp/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

場合によっては、すべてのページで同じ書式設定を持たないドキュメントが必要になることがあります。 たとえば、ページ番号の書式を変更したり、ページサイズと向きを変えたり、最初の文書ページを番号なしの表紙として使用したりする必要がある場合があ あなたはセクションでそれを達成することができます。

セクションは、ヘッダーとフッター、方向、列、余白、ページ番号の書式設定などを制御するレベルノードです。

Aspose.Wordsセクションを管理したり、ドキュメントをセクションに分割したり、特定のセクションにのみ適用される書式設定を変更したりできます。 Aspose.Wordsは、ヘッダーとフッター、ページ設定、列設定などのセクションの書式設定に関する情報をセクション区切りに格納します。

この記事では、セクションとセクションブレークを操作する方法について説明します。

## セクションとセクションブレークとは何ですか

ドキュメントセクションは[Section](https://reference.aspose.com/words/cpp/aspose.words/section/)クラスと[SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/)クラスで表されます。 セクションオブジェクトは[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)ノードの直接の子であり、[Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/)プロパティを介してアクセスできます。 これらのノードは、次のようないくつかの方法を使用して管理できます[Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), と他の人。

セクション区切りは、ドキュメントページをカスタマイズ可能なレイアウトのセクションに分割するオプションです。

## セクションブレークの種類

Aspose.Wordsでは、[BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/)列挙体の異なるセクション区切りを使用してドキュメントを分割および書式設定できます:

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

また、[SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/)列挙体を使用して、次のような最初のセクションにのみ適用されるブレークタイプを選択することもできますNewColumn, NewPage, EvenPage, とOddPage。

## セクションの管理

セクションは通常の複合ノードであるため、ノード操作API全体を使用してセクションを操作することができます。セクションの追加、削除、およびその他の操作を行います。 記事でノードの詳細を読むことができます [Aspose.Wordsドキュメントオブジェクトモデル(DOM)](/words/cpp/aspose-words-document-object-model/).

一方、`DocumentBuilder`APIを使用してセクションを操作することもできます。 この記事では、セクションを操作するこの特定の方法に焦点を当てます。

## セクション区切りを挿入または削除する

Aspose.Wordsは、[InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/)メソッドを使用してテキストにセクション区切りを挿入できます。

次のコード例は、セクション区切りをドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

セクション区切りを削除するには、[Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/)メソッドを使用します。 特定のセクション区切りを削除する必要がなく、代わりにそのセクションのコンテンツを削除する場合は、[ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/)メソッドを使用できます。

次のコード例は、セクションの区切りを削除する方法を示しています:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

セクション区切りには、その前にあるセクションに関する情報が含まれ、後にあるセクションに関する情報は含まれないことに注意してください。 したがって、セクション区切りを削除すると、削除された区切りの前のテキストは、それに続くセクション区切りのプロパティを取得します。 これにより、ドキュメント全体が横長になったり、ヘッダーとフッターが変更されたり、完全に消えたりする可能性があります。

{{% /alert %}}

## セクションを移動する

ドキュメント内のある位置から別の位置にセクションを移動する場合は、そのセクションのインデックスを取得する必要があります。 Aspose.Wordsは[SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/)からセクションの位置を取得できます。 ドキュメント内のすべてのセクションを取得するには、[Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/)プロパティを使用できます。 ただし、最初のセクションのみを取得する場合は、[FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/)プロパティを使用できます。

次のコード例は、最初のセクションにアクセスし、複合ノードの子を反復処理する方法を示しています:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## セクションレイアウトの指定

ドキュメントセクションごとにクリエイティブなレイアウトを作成して、ドキュメントの見栄えを良くしたい場合があります。 現在のセクショングリッドのタイプを指定する場合は、[SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/)列挙体を使用してセクションレイアウトモードを選択できます:

- デフォルト
- グリッド
- LineGrid
- SnapToChars

次のコード例は、各ページが持つ可能性のある行数を制限する方法を示しています:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## セクションを編集する

ドキュメントに新しいセクションを追加すると、編集できる本文や段落はありません。 Aspose.Wordsは、[EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/)メソッドを使用して、セクションに少なくとも一つの段落を持つ本文が含まれていることを保証することができます–本文(またはHeaderFooter)ノードを文書に自動的に追加し、それに段落を追加します。

次のコード例は、**EnsureMinimum**を使用して新しいセクションノードを準備する方法を示しています:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### コンテンツの追加または先頭への追加

図形を描画したり、セクションの先頭/末尾にテキストや画像を追加したりする場合は、[Section](https://reference.aspose.com/words/cpp/aspose.words/section/)クラスの[AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/)メソッドと[PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/)メソッドを使用できます。

次のコード例は、既存のセクションのコンテンツを追加する方法を示しています:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### セクションのクローンを作成する

Aspose.Wordsを使用すると、[Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/)メソッドを使用してセクションの完全なコピーを作成することにより、セクションを複製できます。

次のコード例は、ドキュメントの最初のセクションを複製する方法を示しています:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### ドキュメント間のセクションのコピー

場合によっては、多数のセクションを含む大きなドキュメントがあり、セクションの内容をあるドキュメントから別のドキュメントにコピーする

Aspose.Wordsは、[ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/)メソッドを使用してドキュメント間のセクションをコピーできます。

次のコード例は、ドキュメント間のセクションをコピーする方法を示しています:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### セクションヘッダーとフッターの操作

各セクションのヘッダーまたはフッターを表示するための基本的なルールは非常に簡単です:

1. セクションに特定のタイプの独自のヘッダー/フッターがない場合は、前のセクションから取得されます。
2. ページに表示されるヘッダー/フッターのタイプは、"異なる最初のページ"および"異なる奇数ページと偶数ページ"セクション設定によって制御されます。

次のコード例は、異なるヘッダーを持つ2セクションを作成する方法を示しています:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

ドキュメント内の[HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/)オブジェクトを削除せずにヘッダーとフッターのテキストを削除する場合は、[ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/)メソッドを使用できます。 さらに、[DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/)メソッドを使用して、ドキュメント内のヘッダーとフッターからすべての図形を削除できます。

次のコード例は、セクション内のすべてのヘッダーとフッターのコンテンツをクリアする方法を示しています:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

セクション内のすべてのヘッダーフッターからすべての図形を削除する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## セクション内のページプロパティをカスタマイズする

ページまたは文書を印刷する前に、単一ページまたは文書全体のサイズとレイアウトをカスタマイズおよび変更することができます。 ページ設定を使用すると、異なる最初のページまたは奇数ページを印刷するための余白、向き、サイズなどのドキュメントページの設定を変更できます。

Aspose.Wordsは[PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/)クラスを使用してページおよびセクションプロパティをカスタマイズできます。

次のコード例は、現在のセクションのページサイズや向きなどのプロパティを設定する方法を示しています:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

次のコード例は、すべてのセクションのページプロパティを変更する方法を示しています:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## また見て下さい

- [ドキュメント内のノードの論理レベル](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [文書の挿入と追加](/words/cpp/insert-and-append-documents/)
