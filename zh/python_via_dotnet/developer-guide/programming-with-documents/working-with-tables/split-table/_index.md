---
title: Python 中的拆分表
second_title: Python 格式的 Aspose.Words
articleTitle: 分割表
linktitle: 分割表
description: "Python 中的拆分表。如何将一个表拆分为两个单独的表 Python。"
type: docs
weight: 100
url: /zh/python-net/split-table/
---

Aspose.Words Document Object Model 中表示的表格由独立的行和单元格组成，因此可以轻松拆分表格。

要操作一个表以将其拆分为两个表，我们只需将原始表中的一些行移动到新表即可。为此，我们需要选择要分割表的行。

我们可以通过以下简单步骤从原始表创建两个表：

1. 创建表的克隆而不克隆子表以保留移动的行并将它们插入到原始表之后
2. 从指定行开始，将所有后续行移至第二个表

以下代码示例演示如何将一个表拆分为特定行上的两个表：

{{< gist "aspose-words-gists" "d31be78b25b463dd4eb31c85c60fc549" "split-table.py" >}}
