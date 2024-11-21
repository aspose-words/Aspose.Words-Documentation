---
title: Split Table in Python
second_title: Aspose.Words for Python
articleTitle: Split Table
linktitle: Split Table
description: "Split table in Python. How to split one table into two separate tables Python."
type: docs
weight: 100
url: /python-net/split-table/
timestamp: 2024-01-27-14-07-04
---

A table, represented in the Aspose.Words Document Object Model, is made up of independent rows and cells, making it easy to split a table.

To manipulate a table to split it into two tables, we just need to move some of the rows from the original table to the new one. To do this, we need to pick the row by which we want to split the table.

We can create two tables from the original table by following these simple steps:

1. Create a clone of the table without cloning the children to keep the moved rows and insert them after the original table
2. Starting at the specified row, move all subsequent rows to this second table

The following code example shows how to split a table into two tables on a specific row:

{{< gist "aspose-words-gists" "d31be78b25b463dd4eb31c85c60fc549" "split-table.py" >}}
