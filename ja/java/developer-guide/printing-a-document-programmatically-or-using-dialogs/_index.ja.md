---
title: 文書の印刷
second_title: Aspose.WordsのためのJava
articleTitle: プログラムで文書を印刷するか、ダイアログを使用して文書を印刷する
linktitle: プログラムで文書を印刷するか、ダイアログを使用して文書を印刷する
description: "設定、印刷プレビュー、印刷進行状況ダイアログを使用してJavaを使用して文書を印刷します。"
type: docs
weight: 55
url: /ja/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

この記事では、Aspose.WordsAPIを使用してワープロ文書を印刷する方法について説明します。 また、設定、印刷プレビュー、および印刷進行ダイアログを使用してドキュメントを印刷する方法についても説明します。

## 設定ダイアログと印刷プレビューダイアログを使用した文書の印刷

文書を操作するときは、選択したプリンタに印刷する必要があることがよくあります。 印刷プレビューダイアログを利用して、印刷された文書がどのように表示されるかを視覚的に検査し、関連する印刷オプションを選択すると便利です。

Aspose.Wordsには組み込みのダイアログやフォームはありませんが、[AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/)クラスは両方のjavaをオーバーライドします。awt。印刷します。印刷可能とjava。awt。印刷します。ページング可能。

次の例は、これらのクラスを使用して、印刷プレビューと設定ダイアログを使用してAspose.Wordsからドキュメントを印刷する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## 一枚のシートに複数のページを印刷する

Aspose.Wordsは**MultipagePrintDocument**クラスを実装し、印刷操作を微調整して、印刷ページにドキュメントが表示される方法を定義することにより、カスタムロジックを実装します。 **MultipagePrintDocument**クラスは、一枚の紙に複数のページを印刷する機能を提供します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

**MultipagePrintDocument**クラスの使用例は、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46).

このコード例の結果を以下に示します:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
