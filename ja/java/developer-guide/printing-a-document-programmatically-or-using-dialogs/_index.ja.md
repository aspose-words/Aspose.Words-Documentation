---
title: ドキュメントの印刷
second_title: Aspose.Words お問い合わせ Java
articleTitle: ドキュメントの印刷 プログラマティックまたはDialogsの使用
linktitle: ドキュメントの印刷 プログラマティックまたはDialogsの使用
description: "ドキュメントのプリント Java 設定、印刷プレビュー、および印刷の進捗ダイアログを介して。"
type: docs
weight: 55
url: /ja/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

この記事では、単語処理文書のプリント方法について説明します。 Aspose.Words APIお問い合わせ また、設定、印刷プレビュー、および印刷進捗ダイアログで文書を印刷する方法を実証します。

## 設定と印刷プレビューダイアログでドキュメントを印刷する

文書を扱う場合は、選択したプリンターに印刷することが多いです。 プリントプレビューダイアログを利用して、印刷されたドキュメントがどのように表示されるかを視覚的に調べ、関連するプリントオプションを選択するのに役立ちます。

ザ・オブ・ザ・ Aspose.Words ビルトインダイアログやフォームはありませんが、 [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) java.awt.print の両方を上書きするクラス。 印刷可能で java.awt.print. サイトマップ

次の例では、これらのクラスを使用してドキュメントをプリントする方法を示します。 Aspose.Words 印刷プレビューと設定ダイアログで:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## 1枚のシートに複数のページを印刷する

Aspose.Words 実装する **MultipagePrintDocument** クラスは、印刷操作を微調整して、ドキュメントが印刷されたページに表示されます方法を定義することで、カスタムロジックを実行します。 ザ・オブ・ザ・ **MultipagePrintDocument** 1枚の用紙に複数のページを印刷する機能を提供します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

使用例をダウンロードできます。 **MultipagePrintDocument** クラスから [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)お問い合わせ

このコード例の結果は以下に示します。

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
