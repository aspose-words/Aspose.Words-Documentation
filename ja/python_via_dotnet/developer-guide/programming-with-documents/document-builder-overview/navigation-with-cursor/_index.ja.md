---
title: Python でのカーソルによるナビゲーション
second_title: Python via .NET用Aspose.Words
articleTitle: カーソルによるナビゲーション
linktitle: カーソルによるナビゲーション
description: "Python を使用して、段落、ブックマーク、特定の文字など、ドキュメント内の異なるノード間を移動します。"
type: docs
weight: 10
url: /ja/python-net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

ドキュメントを操作するときは、ドキュメントが短くても長くても、ドキュメント内を移動する必要があります。仮想カーソルを使用したナビゲーションは、ドキュメント内の異なるノード間を移動する機能を表します。

短いドキュメント内では、キーボードの矢印キーを使用するか、マウスをクリックして挿入ポイントを任意の場所に配置することによっても挿入ポイントを移動できるため、ドキュメント内での移動は簡単です。しかし、多くのページがある大きな文書を作成した場合、これらの基本的なテクニックでは不十分になります。

この記事では、文書内を移動し、仮想カーソルを使用して文書の別の部分に移動する方法について説明します。

## 現在のカーソル位置の検出

ドキュメント内を移動するプロセスを開始する前に、現在選択されているノードを取得する必要があります。 [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) プロパティを使用すると、選択したノードのカーソルの正確な位置を取得できます。さらに、現在のノードを取得する代わりに、[current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) プロパティと [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/) プロパティを使用して、現在選択されている段落または現在選択されているセクションを取得できます。

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) を使用して実行する挿入操作はすべて、[current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) の前に挿入されます。現在の段落が空であるか、カーソルが段落の終わりの直前に位置している場合、[current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) は None を返します。

## ドキュメント内のメソッドの移動

テキストを編集するときは、ドキュメント内を移動する方法とドキュメント内のどこに正確に移動するかを知っておくことが重要です。 Aspose.Words を使用すると、文書内を移動して、そのさまざまなセクションや部分に移動できます。これは、スクロールせずに Word 文書内のページまたは見出しに移動する Microsoft Word のナビゲーション ウィンドウの機能に似ています。

主な方法は、カーソル位置をドキュメント内の特定のノードに移動できるようにすることです。これは、[move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) メソッドを使用して実現できます。

次のコード例は、[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) をドキュメント内の別のノードに移動する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

ただし、基本的な [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) メソッド以外にも、より具体的なメソッドがあります。

### ドキュメントの先頭または末尾に移動する

[move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) および [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/) メソッドを使用して、ドキュメントの先頭または末尾に移動できます。

次のコード例は、カーソル位置をドキュメントの先頭または末尾に移動する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### ブックマークを使用してナビゲートする

探したい場所にマークを付けて、再度簡単に移動できます。ドキュメントにブックマークを必要な数だけ挿入し、一意の名前でブックマークを識別してブックマーク内を移動できます。 [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) メソッドを使用してブックマークに移動できます。

次のコード例は、カーソル位置をブックマークに移動する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### 表のセルに移動します

[move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) メソッドを使用して表のセルに移動できます。このメソッドを使用すると、特定のテーブル内の任意のセルにカーソルを移動できるようになります。さらに、インデックスを指定して、[move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) メソッド内のセル内の任意の位置または指定した文字にカーソルを移動できます。

次のコード例は、カーソル位置を指定した表のセルに移動する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### フィールドに移動する

[move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/) メソッドを使用すると、ドキュメント内の特定のフィールドに移動できます。さらに、[move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) メソッドを使用して特定の差し込みフィールドに移動できます。

次のコード例は、ドキュメント ビルダーのカーソルを特定のフィールドに移動する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### ヘッダーまたはフッターに移動します

[move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) メソッドを使用して、ヘッダーまたはフッターの先頭に移動できます。

次のコード例は、ドキュメント ビルダーのカーソルをドキュメントのヘッダーまたはフッターに移動する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### セクションまたは段落に移動する

[move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) または [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/) メソッドを使用して、特定のセクションまたは段落に移動できます。さらに、インデックスを指定して、[move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) メソッド内の段落内の任意の位置または指定した文字にカーソルを移動できます。

次のコード例は、ドキュメント内の特定のセクションおよび特定の段落に移動する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}
