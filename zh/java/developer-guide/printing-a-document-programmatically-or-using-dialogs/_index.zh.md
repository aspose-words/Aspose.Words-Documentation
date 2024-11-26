---
title: 打印文档
second_title: Aspose.Words为Java
articleTitle: 以编程方式或使用对话框打印文档
linktitle: 以编程方式或使用对话框打印文档
description: "通过设置、打印预览和打印进度对话框使用Java打印文档。"
type: docs
weight: 55
url: /zh/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

本文介绍如何使用Aspose.WordsAPI打印文字处理文档。 它还演示了使用设置、打印预览和打印进度对话框打印文档的方法。

## 使用设置和打印预览对话框打印文档

处理文档时，通常需要将它们打印到选定的打印机。 使用打印预览对话框直观地检查打印文档的显示方式并选择相关的打印选项是很有帮助的。

Aspose.Words没有内置对话框或表单，但实现了[AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/)类复盖了两个java。啊打印出来。可打印和java。啊打印出来。可分页。

下面的示例演示如何使用这些类通过打印预览和设置对话框从Aspose.Words打印文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## 在一张纸上打印多页

Aspose.Words实现**MultipagePrintDocument**类，通过定义文档在打印页面上显示的方式来微调打印操作以实现自定义逻辑。 **MultipagePrintDocument**类提供了在一张纸上打印多页的能力.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

您可以从以下位置下载使用**MultipagePrintDocument**类的示例 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46).

此代码示例的结果如下所示:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
