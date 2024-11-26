---
title: C++中的拆分表
second_title: Aspose.Words对于C++
articleTitle: 拆分表
linktitle: 拆分表
description: "C++中的拆分表。 如何将一个表拆分为两个单独的表C++。"
type: docs
weight: 100
url: /zh/cpp/split-table/
timestamp: 2024-01-27-14-07-04
---

在Aspose.Words文档对象模型中表示的表格由独立的行和单元格组成，因此可以轻松拆分表格。

要操作一个表将其拆分为两个表，我们只需要将一些行从原始表移动到新表。 为此，我们需要选择要拆分表的行。

我们可以通过以下简单的步骤从原始表中创建两个表:

1. 创建表的克隆，而不克隆子项以保留移动的行并将其插入到原始表之后
2. 从指定行开始，将所有后续行移动到此第二个表

下面的代码示例演示如何将表拆分为特定行上的两个表:

{{< gist "aspose-words-gists" "29ce7710cab8c3ef18e912a5813e0d36" "split-table.h" >}}
