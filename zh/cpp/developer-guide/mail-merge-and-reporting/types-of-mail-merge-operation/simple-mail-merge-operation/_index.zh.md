---
title: 简单 Mail Merge 运作于 C++
second_title: Aspose.Words 为 C++
articleTitle: 简单 Mail Merge 运作
linktitle: 简单 Mail Merge 运作
type: docs
description: "一个简单的 mail merge 用于填充 mail merge 模板内的字段包含来自数据源的所需数据-它类似于经典 mail merge 在 Microsoft Word. 在模板中添加一个或多个合并字段，然后执行简单的 mail merge 操作。"
keywords: "how to execute mail merge c++"
weight: 10
url: /zh/cpp/simple-mail-merge-operation/
---

一个简单的 mail merge 用于填充 mail merge 模板内的字段，包含来自数据源的所需数据（单表表示）。 所以它类似于经典 mail merge 在 Microsoft Word.

您可以在模板中添加一个或多个合并字段，然后执行简单的 mail merge 操作。 如果您的模板不包含任何合并区域，建议使用它。

使用此类型的主要限制是整个文档内容将针对数据源中的每条记录重复。

## 如何执行一个简单的 Mail Merge 运作

一旦你的模板准备好，你就可以开始执行简单的 mail merge 操作。 Aspose.Words 允许你执行一个简单的 mail merge 使用不同的操作 [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) 接受各种数据对象作为数据源的方法。

下面的代码示例演示如何执行一个简单的 mail merge 使用其中一个操作 [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) 方法:

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

您可以在执行simple之前注意到文档之间的差异 mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

并执行简单后 mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## 如何创建多个合并文档

在 Aspose.Words，标准 mail merge 操作仅使用数据源中的内容填充单个文档。 所以，你需要执行 mail merge 多次操作以创建几个合并的文档作为输出。

下面的代码示例演示如何在一个 mail merge 操作与 [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
