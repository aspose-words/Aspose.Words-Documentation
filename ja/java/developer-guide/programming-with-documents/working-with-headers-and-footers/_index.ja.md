---
title: Javaでのヘッダーとフッターの操作
second_title: Aspose.WordsのためのJava
articleTitle: ヘッダーとフッターの操作
linktitle: ヘッダーとフッターの操作
description: "Javaを使用してヘッダーとフッターを操作する方法。"
type: docs
weight: 150
url: /ja/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsドキュメント内のヘッダーとフッターを操作できます。 ヘッダーはページの上部に配置されるテキストであり、フッターはページの下部にあるテキストです。 通常、これらの領域は、ページ番号、作成日、会社情報など、文書のすべてまたは一部のページで繰り返す必要がある情報を挿入するために使用されます。

## DocumentBuilderを使用してヘッダーまたはフッターを作成する

ドキュメントのヘッダーまたはフッターをプログラムで追加する場合、最も簡単な方法は[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)クラスを使用してそれを行うことです。

次のコード例は、ドキュメントページのヘッダーとフッターを追加する方法を示しています:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## ヘッダーまたはフッターのオプションの指定

ドキュメントにヘッダーまたはフッターを追加するときに、いくつかの高度なプロパティを設定できます。 Aspose.Wordsは、[HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/)クラスと[HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/)クラス、および[HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/)列挙体をユーザーに提供し、ヘッダーとフッターのカスタマイズプロセスをより詳細に制御します。Aspose.Wordsは、[HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/)クラスと[HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/)クラスをユーザーに提供します。

### ヘッダーまたはフッターの種類を指定する

1つのドキュメントに対して、3つの異なるヘッダータイプと3つの異なるフッタータイプを指定できます:

1. 最初のページのヘッダーおよび/またはフッター
2. 偶数ページのヘッダーおよび/またはフッター
3. 奇数ページのヘッダーおよび/またはフッター

次のコード例は、奇数ドキュメントページのヘッダーを追加する方法を示しています:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### 最初のページに異なるヘッダーまたはフッターを表示するかどうかを指定します

上で述べたように、最初のページに別のヘッダーまたはフッターを設定することもできます。 これを行うには、[DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter)フラグを`true`に設定し、**HeaderFirst**または**FooterFirst**値を指定する必要があります。

次のコード例は、最初のページのヘッダーのみを設定する方法を示しています:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### 奇数ページまたは偶数ページに異なるヘッダーまたはフッターを表示するかどうかを指定します

 次に、ドキュメント内の奇数ページと偶数ページに異なるヘッダーまたはフッターを設定する必要があります。 これを行うには、[OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter)フラグを`true`に設定し、値**HeaderPrimary**と**HeaderEven**、または**FooterPrimary**と**FooterEven**を指定する必要があります。

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### 絶対に配置された画像をヘッダーに挿入します

ヘッダーまたはフッターに画像を配置するには、**HeaderPrimary**ヘッダータイプまたは**FooterPrimary**フッタタイプと[InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte)メソッドを使用します。

次のコード例は、ヘッダーにイメージを追加する方法を示しています:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### ヘッダーまたはフッターのテキストのフォントと段落のプロパティを設定する

Aspose.Wordsを使用すると、フォントと段落のプロパティを設定したり、**HeaderPrimary**ヘッダタイプまたは**FooterPrimary**フッタタイプを使用したり、文書本文に使用するフォントと段落を操作するためのメソッドとプロパティを使用したりできます。

次のコード例は、ヘッダー内のテキストをArial、bold、size14、およびcenter alignmentに設定する方法を示しています:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### ヘッダーまたはフッターにページ番号を挿入する

必要に応じて、ヘッダーまたはフッターにページ番号を追加できます。 これを行うには、**HeaderPrimary**ヘッダタイプまたは**FooterPrimary**フッタタイプと[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean)メソッドを使用して必要なフィールドを追加します。

次のコード例は、右側のフッターにページ番号を追加する方法を示しています:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### 前のセクションで定義したヘッダーまたはフッターを使用します

前のセクションのヘッダーまたはフッターをコピーする必要がある場合は、それも行うことができます。

次のコード例は、前のセクションのヘッダーまたはフッターをコピーする方法を示しています:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### 異なるページの向きとページサイズを使用する場合は、ヘッダーまたはフッタの外観を確認してください

Aspose.Wordsを使用すると、異なる向きとページサイズを使用するときにヘッダーまたはフッターの外観を提供できます。

次の例は、これを行う方法を示しています:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## ヘッダーのみまたはフッターのみを削除する方法

ドキュメント内の各セクションには、最大3つのヘッダーと最大3つのフッター(最初のページ、偶数ページ、および奇数ページの場合)を含めることができます。 ドキュメント内のすべてのヘッダーまたはすべてのフッターを削除する場合は、すべてのセクションをループして、対応する各ヘッダーノードまたはフッターノードを削除する必要があります。

次のコード例は、すべてのセクションからすべてのフッターを削除し、ヘッダーをそのまま残す方法を示しています。 同様の方法でヘッダーのみを削除できます:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}
