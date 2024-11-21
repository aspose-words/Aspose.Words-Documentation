---
title: ヘッダーとフッターで作業 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ヘッダーとフッターで作業
linktitle: ヘッダーとフッターで作業
description: "ヘッダーとフッターを操作する方法 Javaお問い合わせ"
type: docs
weight: 150
url: /ja/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ユーザーは、ドキュメント内のヘッダーとフッターで作業することができます。 ヘッダはページの先頭に配置されたテキストであり、フッターはページの下部にあるテキストです。 通常、これらの領域は、ページ番号、作成日、会社情報など、文書のすべてのページや一部のページで繰り返すべき情報を入力するために使用されます。

## DocumentBuilderを使用してヘッダーまたはフッターを作成する

ドキュメントヘッダーまたはフッターをプログラム的に追加したい場合、最も簡単な方法は、 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) それをするクラス。

次のコードの例では、ドキュメントページ用のヘッダーとフッターを追加する方法を示します。

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## ヘッダーまたはフッターオプションを指定する

ヘッダーまたはフッターをドキュメントに追加すると、高度なプロパティーを設定できます。 Aspose.Words ユーザに [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) そして、 [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) クラスだけでなく、 [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) ヘッダーおよびフッターのカスタム化プロセスをもっと制御する列挙。

### ヘッダーまたはフッターの種類を指定する

3つの異なるヘッダータイプと3つの異なるフッタータイプを指定できます。

1。 このページの先頭へ
2。 ヘッダーやフッターでもページ
3。 オッズページ用のヘッダーおよび/またはフッター

次のコードの例では、オッズドキュメントページ用のヘッダーを追加する方法を示します。

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### 1ページごとに異なるヘッダーやフッターを表示するかどうかを指定します。

上記のように、最初のページでは異なるヘッダーまたはフッターを設定することもできます。 これを行うには、設定する必要があります [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) フラグ `true` それから specyfy に **HeaderFirst** または **FooterFirst** 値。

次のコードの例では、ヘッダーを最初のページのみに設定する方法を示します。

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### 異なるヘッダーまたはフッターをオッズまたは偶数ページ表示するかどうかを指定する

 次に、さまざまなヘッダーやフッターをドキュメントのオッズやページでも設定します。 これを行うには、設定する必要があります [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) フラグ `true` そして、値をspecyfy **HeaderPrimary** そして、 **HeaderEven**, または **FooterPrimary** そして、 **FooterEven**お問い合わせ

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### 絶対的に位置を入力 ヘッダーへのイメージ

ヘッダーまたはフッターに画像を配置するには、 **HeaderPrimary** ヘッダタイプまたは **FooterPrimary** フッターの種類と [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) メソッド。

次のコードの例では、イメージをヘッダに追加する方法を示します。

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### ヘッダーまたはフッターテキストのフォントとパラグラフのプロパティを設定する

と Aspose.Words フォントと段落のプロパティを設定できます。 **HeaderPrimary** ヘッダタイプまたは **FooterPrimary** フッタータイプだけでなく、ドキュメントボディに使用するフォントや段落を扱うためのメソッドやプロパティ。

次のコードの例では、ヘッダ内のテキストをArial、bold、size 14、および中心のアライメントに設定する方法を示します。

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### ヘッダーまたはフッターにページ番号を入力

必要に応じて、ヘッダーまたはフッターにページ番号を追加できます。 これを行うには、 **HeaderPrimary** ヘッダタイプまたは **FooterPrimary** フッターの種類と [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) 必要なフィールドを追加する方法。

次のコードの例では、右側のフッターにページ番号を追加する方法を示します。

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### 前のセクションで定義されたヘッダーまたはフッターを使用する

前のセクションからヘッダーやフッターをコピーする必要がある場合は、それをすることができます。

次のコードの例では、前のセクションからヘッダーまたはフッターをコピーする方法を示します。

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### 別のページのオリエンテーションおよびページ サイズを使用するときヘッダーかフッターの出現を保障して下さい

Aspose.Words 異なったオリエンテーションおよびページ サイズを使用するときヘッダーかフッターの出現を提供できます。

次の例では、これを行う方法を示します。

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## ヘッダーだけまたはフッターだけを削除する方法

ドキュメントの各セクションでは、最大3つのヘッダーと最大3つのフッター(最初、さらに、オッズページ)を持つことができます。 すべてのヘッダーまたはすべてのフッターをドキュメントで削除したい場合は、すべてのセクションをループし、各対応するヘッダノードまたはフッターノードを削除します。

次のコードの例では、すべてのセクションからすべてのフッターを削除する方法が示されていますが、ヘッダをそのまま残します。 同様にヘッダーだけを削除できます。

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx)お問い合わせ

{{% /alert %}}
