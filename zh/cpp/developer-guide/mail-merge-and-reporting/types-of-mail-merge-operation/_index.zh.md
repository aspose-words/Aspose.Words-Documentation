---
title: 类型的 Mail Merge 运作于 C++
second_title: Aspose.Words 为 C++
articleTitle: 类型的 Mail Merge 运作
linktitle: 类型的 Mail Merge 运作
type: docs
description: "执行两种不同类型的 mail merge 操作：简单 mail merge 和 mail merge 使用区域 C++. 简单 mail merge 每个数据源记录重复整个文档，而 mail merge 对于区域，每条记录只重复指定的区域。"
keywords: "how to execute mail merge c++"
weight: 20
url: /zh/cpp/types-of-mail-merge-operations/
timestamp: 2024-09-24-14-35-44
---

的主要思想 mail merge 是根据模板和从数据源提取的数据自动创建一个文档或多个文档。 Aspose.Words 使您能够执行两种不同类型的 mail merge 操作：简单 mail merge 和 mail merge 与地区。

使用simple的最常见示例 mail merge 当您希望通过在文档的开头包含他们的名称来为不同的客户端发送文档时。 为此，您需要创建合并字段，例如 *First Name* 和 *Last Name* 在模板中，然后用数据源中的数据填充它们。 而最常见的例子是使用 mail merge 使用区域是指您要发送包含特定订单的文档，其中包含每个订单中所有项目的列表。 为此，您需要为每个订单在模板自己的区域内创建合并区域，以便使用项目的所有必需数据填充该区域。

这两个合并操作之间的主要区别就是这么简单 mail merge （没有区域）每个数据源记录重复整个文档，而 mail merge 对于区域，每条记录只重复指定的区域。 你可以想到一个简单的 mail merge 操作作为与唯一区域是整个文档的区域合并的特定情况。

{{% alert color="primary" %}}

该 [MailMerge](https://reference.aspose.com/words/cpp/class/aspose.words.mailmerging/mailmerge/) 类表示a mail merge 功能性。 使用它的属性，您可以在执行a之前自定义所需的行为 mail merge 操作。

{{% /alert %}}

