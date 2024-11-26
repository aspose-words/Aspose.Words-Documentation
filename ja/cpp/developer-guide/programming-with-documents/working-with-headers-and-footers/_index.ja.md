---
title: C++でのヘッダーとフッターの操作
second_title: C++の場合Aspose.Words
articleTitle: ヘッダーとフッターの操作
linktitle: ヘッダーとフッターの操作
description: "C++を使用してヘッダーとフッターを操作する方法。"
type: docs
weight: 150
url: /ja/cpp/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsドキュメント内のヘッダーとフッターを操作できます。 ヘッダーはページの上部に配置されるテキストであり、フッターはページの下部にあるテキストです。 通常、これらの領域は、ページ番号、作成日、会社情報など、文書のすべてまたは一部のページで繰り返す必要がある情報を挿入するために使用されます。

## DocumentBuilderを使用してヘッダーまたはフッターを作成する

ドキュメントのヘッダーまたはフッターをプログラムで追加する場合、最も簡単な方法は[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)クラスを使用してそれを行うことです。

次のコード例は、ドキュメントページのヘッダーとフッターを追加する方法を示しています:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "create-header-footer.h" >}}

## ヘッダーまたはフッターのオプションの指定

ドキュメントにヘッダーまたはフッターを追加するときに、いくつかの高度なプロパティを設定できます。 Aspose.Wordsは、[HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/)クラスと[HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/)クラス、および[HeaderFooterType](https://reference.aspose.com/words/cpp/aspose.words/headerfootertype/)列挙体をユーザーに提供し、ヘッダーとフッターのカスタマイズプロセスをより詳細に制御します。Aspose.Wordsは、[HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/)クラスと[HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/)クラスをユーザーに提供します。

### ヘッダーまたはフッターの種類を指定する

1つのドキュメントに対して、3つの異なるヘッダータイプと3つの異なるフッタータイプを指定できます:

1. 最初のページのヘッダーおよび/またはフッター
2. 偶数ページのヘッダーおよび/またはフッター
3. 奇数ページのヘッダーおよび/またはフッター

次のコード例は、奇数ドキュメントページのヘッダーを追加する方法を示しています:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "header-footer-type.h" >}}

### 最初のページに異なるヘッダーまたはフッターを表示するかどうかを指定します

上で述べたように、最初のページに別のヘッダーまたはフッターを設定することもできます。 これを行うには、[DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_differentfirstpageheaderfooter/)フラグを`true`に設定し、**HeaderFirst**または**FooterFirst**値を指定する必要があります。

次のコード例は、最初のページのヘッダーのみを設定する方法を示しています:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "different-first-page.h" >}}

### 奇数ページまたは偶数ページに異なるヘッダーまたはフッターを表示するかどうかを指定します

 次に、ドキュメント内の奇数ページと偶数ページに異なるヘッダーまたはフッターを設定する必要があります。 これを行うには、[OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_oddandevenpagesheaderfooter/)フラグを`true`に設定し、値**HeaderPrimary**と**HeaderEven**、または**FooterPrimary**と**FooterEven**を指定する必要があります。

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "odd-even-pages.h" >}}

### 絶対に配置された画像をヘッダーに挿入します

ヘッダーまたはフッターに画像を配置するには、**HeaderPrimary**ヘッダータイプまたは**FooterPrimary**フッタタイプと`InsertImage`メソッドを使用します。

次のコード例は、ヘッダーにイメージを追加する方法を示しています:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "insert-image.h" >}}

### ヘッダーまたはフッターのテキストのフォントと段落のプロパティを設定する

Aspose.Wordsを使用すると、フォントと段落のプロパティを設定したり、**HeaderPrimary**ヘッダタイプまたは**FooterPrimary**フッタタイプを使用したり、文書本文に使用するフォントと段落を操作するためのメソッドとプロパティを使用したりできます。

次のコード例は、ヘッダー内のテキストをArial、bold、size14、およびcenter alignmentに設定する方法を示しています:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "font-props.h" >}}

### ヘッダーまたはフッターにページ番号を挿入する

必要に応じて、ヘッダーまたはフッターにページ番号を追加できます。 これを行うには、**HeaderPrimary**ヘッダタイプまたは**FooterPrimary**フッタタイプを使用し、[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/)メソッドを使用して必須フィールドを追加します。

次のコード例は、右側のフッターにページ番号を追加する方法を示しています:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "page-numbers.h" >}}

### 前のセクションで定義したヘッダーまたはフッターを使用します

前のセクションのヘッダーまたはフッターをコピーする必要がある場合は、それも行うことができます。

次のコード例は、前のセクションのヘッダーまたはフッターをコピーする方法を示しています:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "copy-headers-footers-from-previous-section.h" >}}

### 異なるページの向きとページサイズを使用する場合は、ヘッダーまたはフッタの外観を確認してください

Aspose.Wordsを使用すると、異なる向きとページサイズを使用するときにヘッダーまたはフッターの外観を提供できます。

次の例は、これを行う方法を示しています:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

## ヘッダーのみまたはフッターのみを削除する方法

ドキュメント内の各セクションには、最大3つのヘッダーと最大3つのフッター(最初のページ、偶数ページ、および奇数ページの場合)を含めることができます。 ドキュメント内のすべてのヘッダーまたはすべてのフッターを削除する場合は、すべてのセクションをループして、対応する各ヘッダーノードまたはフッターノードを削除する必要があります。

次のコード例は、すべてのセクションからすべてのフッターを削除し、ヘッダーをそのまま残す方法を示しています。 同様の方法でヘッダーのみを削除できます:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "remove-footers.h" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
