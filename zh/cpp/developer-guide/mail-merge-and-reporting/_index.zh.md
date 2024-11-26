---
title: Mail Merge 及在 C++
second_title: Aspose.Words 为 C++
articleTitle: Mail Merge 及报告
linktitle: Mail Merge 及报告
type: docs
description: "Mail Merge 是一个流行的功能，用于快速创建文档使用 C++. Aspose.Words 为 C++ 采取标准 Mail Merge 功能并将其推进许多步骤，将其转变为成熟的报告解决方案，允许您创建更复杂的文档，如报告，目录，库存和发票。"
keywords: "how to use Mail Merge c++"
weight: 30
url: /zh/cpp/mail-merge-and-reporting/
timestamp: 2024-01-30-16-22-34
---

Mail Merge 是一个流行的功能，用于快速，轻松地创建文档，如信件，标签和信封。 Aspose.Words 使您能够从模板生成文档 Mail Merge 菲尔兹。

A Mail Merge 字段是一个可以插入到 Mail Merge 将数据源记录中的特定值包含在输出文档中的模板。 例如，您可以在电子邮件模板中插入合并字段，以便问候语将具有收件人的名字，而不是通用的"你好！". Aspose.Words 将来自外部源（如数据库或文件）的数据放入这些字段并设置格式。 生成的文档保存在指定的文件夹中。

Aspose.Words 采取标准 Mail Merge 功能并将其推进许多步骤，将其转变为成熟的报告解决方案，允许您创建更复杂的文档，如报告，目录，库存和发票。 以下是 Aspose.Words 报告解决方案:

- 设计报告 Microsoft Word 使用标准 Mail Merge 字段
- 定义文档中不断增长的区域，例如详细订单行
- 在一个插入图像 mail merge
- 执行任何自定义逻辑，控制格式，或插入复杂的内容使用 Mail Merge 事件处理程序
- 使用任何类型的数据源中的数据填写文档

{{% alert color="primary" %}}

该 [Aspose.Words.MailMerging](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/) 命名空间用于处理邮件合并。

{{% /alert %}}

## 机构和主要组成部分 Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words 提供加载各种文档的能力 [supported formats](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) 然后允许用户执行一个 Mail Merge 操作。

通常，加载的文档允许您将合并字段存储在 DOCX 格式。 但是有些格式不存储这样的字段，例如, TXT. 如果 Aspose.Words 支持加载此类文件格式，您可以将合并字段直接添加到文档模型中，将文档保存在方便的文档中 [supported format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/)，并执行 Mail Merge 操作。

该 Mail Merge 操作将合并您的 *mail merge template* 而你的 *data source* 生成个人 *merged documents*.

## 什么是a Mail Merge 模板 {#what-is-a-mail-merge-template}

应用a的目标 Mail Merge 使用合并模板的操作是为了简化创建文档的过程。

有几种方法可以创建和设计合并模板。 您可以使用 Microsoft Word，并且合并模板不必是 Microsoft Word 模板，即在 DOT 或 DOTX 格式，可以是常规文档中的 DOC 或 DOCX 格式。 您需要在此模板中插入一些称为合并字段的特殊字段，这些字段位于您希望稍后插入数据源中的数据的位置。 或者，您可以使用 [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) 类。

合并模板包含主文本，在执行 Mail Merge 操作。 如果能够向模板添加合并字段，则可以为模板使用任何格式。 模板中的所有合并字段将在 Mail Merge 操作。


## 请参阅

- [与...... Mail Merge Word中的模板](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
