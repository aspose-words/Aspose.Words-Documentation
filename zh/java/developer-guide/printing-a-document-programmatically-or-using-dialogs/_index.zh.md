---
title: 打印文档
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 打印文档 程序或使用对话框
linktitle: 打印文档 程序或使用对话框
description: "使用 Java 通过设置、打印预览和打印进度对话框。"
type: docs
weight: 55
url: /zh/java/print-a-document-programmatically-or-using-dialogs/
---

本文描述如何使用 Aspose.Words API。 。 。 它还演示了使用设置、打印预览和打印进度对话框打印文档的方法。

## 使用设置和打印预览对话框打印文档

在使用文档时,往往需要打印到选定的打印机. 利用打印预览对话框可视化地检查打印文档的显示方式,并选择相关的打印选项。

那个 Aspose.Words 没有内置对话框或窗体,但执行 [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) 班级都覆盖两个java.awt.print。 可印刷的还有java.awt.print. 可寻.

以下示例显示如何使用这些类打印文档。 Aspose.Words 通过打印预览和设置对话框:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## 在一个工作表中打印多页

Aspose.Words 执行 **MultipagePrintDocument** class,通过定义文档在打印页面上的显示方式,对打印操作进行微调,以实施您的自定义逻辑。 那个 **MultipagePrintDocument** 类提供了打印一张纸上几页的能力。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

您可以下载一个使用 **MultipagePrintDocument** 课从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)。 。 。 。

此代码示例的结果如下:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
