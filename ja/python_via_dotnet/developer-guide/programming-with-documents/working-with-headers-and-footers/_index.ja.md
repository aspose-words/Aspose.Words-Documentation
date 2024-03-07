---
title: ヘッダーとフッターの操作
second_title: Python via .NET用Aspose.Words
articleTitle: ヘッダーとフッターの操作
linktitle: ヘッダーとフッターの操作
description: "Python を使用して、ドキュメント内のヘッダーとフッターを作成、管理、削除します。"
type: docs
weight: 150
url: /ja/python-net/working-with-headers-and-footers/
---

Aspose.Words を使用すると、ユーザーはドキュメント内のヘッダーとフッターを操作できます。ヘッダーはページの上部に配置されるテキストであり、フッターはページの下部に配置されるテキストです。通常、これらの領域は、ページ番号、作成日、会社情報など、文書のすべてまたは一部のページで繰り返す必要がある情報を挿入するために使用されます。

## DocumentBuilder を使用してヘッダーまたはフッターを作成する

ドキュメントのヘッダーまたはフッターをプログラムで追加する場合、最も簡単な方法は、[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) クラスを使用してそれを行うことです。

次のコード例は、ドキュメント ページにヘッダーとフッターを追加する方法を示しています。

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "create-header-footer.py" >}}

## ヘッダーまたはフッターのオプションを指定する

ドキュメントにヘッダーまたはフッターを追加するときに、いくつかの詳細プロパティを設定できます。 Aspose.Words は、[HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) クラスと [HeaderFooterCollection](https://reference.aspose.com/words/python-net/aspose.words/headerfootercollection/) クラスに加えて、ヘッダーとフッターのカスタマイズ プロセスをより詳細に制御できる [HeaderFooterType](https://reference.aspose.com/words/python-net/aspose.words/headerfootertype/) 列挙をユーザーに提供します。

### ヘッダーまたはフッターのタイプを指定する

1 つのドキュメントに 3 つの異なるヘッダー タイプと 3 つの異なるフッター タイプを指定できます。

1. 最初のページのヘッダーおよび/またはフッター
2. 偶数ページのヘッダーおよび/またはフッター
3. 奇数ページのヘッダーおよび/またはフッター

次のコード例は、奇数のドキュメント ページにヘッダーを追加する方法を示しています。

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "header-footer-type.py" >}}

### 最初のページに異なるヘッダーまたはフッターを表示するかどうかを指定する

上で述べたように、最初のページに別のヘッダーまたはフッターを設定することもできます。これを行うには、[different_first_page_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/different_first_page_header_footer/) フラグを `true` に設定し、**HeaderFirst** または **FooterFirst** 値を指定する必要があります。

次のコード例は、最初のページのみのヘッダーを設定する方法を示しています。

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "different-first-page.py" >}}

### 奇数ページまたは偶数ページに異なるヘッダーまたはフッターを表示するかどうかを指定する

 次に、ドキュメント内の奇数ページと偶数ページに異なるヘッダーまたはフッターを設定する必要があります。これを行うには、[odd_and_even_pages_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/odd_and_even_pages_header_footer/) フラグを `true` に設定し、値として **HeaderPrimary** と **HeaderEven**、または **FooterPrimary** と **FooterEven** を指定する必要があります。

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "odd-even-pages.py" >}}

### ヘッダーに絶対位置の画像を挿入する

ヘッダーまたはフッターに画像を配置するには、**HeaderPrimary** ヘッダー タイプまたは **FooterPrimary** フッター タイプと [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) メソッドを使用します。

次のコード例は、ヘッダーに画像を追加する方法を示しています。

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "insert-image.py" >}}

### ヘッダーまたはフッターのテキストのフォントと段落のプロパティを設定する

Aspose.Words を使用すると、フォントと段落のプロパティを設定したり、**HeaderPrimary** ヘッダー タイプや **FooterPrimary** フッター タイプを使用したり、文書本文に使用するフォントや段落を操作するためのメソッドやプロパティを設定したりできます。

次のコード例は、ヘッダーのテキストを Arial、太字、サイズ 14、中央揃えに設定する方法を示しています。

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "font-props.py" >}}

### ヘッダーまたはフッターにページ番号を挿入する

必要に応じて、ヘッダーまたはフッターにページ番号を追加できます。これを行うには、**HeaderPrimary** ヘッダー タイプまたは **FooterPrimary** フッター タイプと [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) メソッドを使用して、必要なフィールドを追加します。

次のコード例は、右側のフッターにページ番号を追加する方法を示しています。

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "page-numbers.py" >}}

### 前のセクションで定義したヘッダーまたはフッターを使用する

前のセクションからヘッダーまたはフッターをコピーする必要がある場合は、それも行うことができます。

次のコード例は、前のセクションからヘッダーまたはフッターをコピーする方法を示しています。

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "copy-headers-footers-from-previous-section.py" >}}

### 異なるページの向きとページ サイズを使用するときにヘッダーまたはフッターの外観を確認する

Aspose.Words を使用すると、さまざまな向きやページ サイズを使用するときにヘッダーまたはフッターの外観を提供できます。

次の例は、これを行う方法を示しています。

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

## ヘッダーのみまたはフッターのみを削除する方法

ドキュメントの各セクションには、最大 3 つのヘッダーと最大 3 つのフッターを含めることができます (最初のページ、偶数ページ、奇数ページの場合)。ドキュメント内のすべてのヘッダーまたはすべてのフッターを削除する場合は、すべてのセクションをループして、対応する各ヘッダー ノードまたはフッター ノードを削除する必要があります。

次のコード例は、すべてのセクションからすべてのフッターを削除し、ヘッダーはそのままにする方法を示しています。同様の方法でヘッダーのみを削除できます。

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "remove-footers.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx) からダウンロードできます。

{{% /alert %}}