---
title: Joining and Splitting Tables in C#
articleTitle: Joining and Splitting Tables
linktitle: Joining and Splitting Tables
description: "Advanced table manipulations, join and split using Aspose.Words for .Net."
type: docs
weight: 50
url: /net/joining-and-splitting-tables/
---

A table which is represented in the Aspose.Words Document Object Model is made up of independent rows and cells which makes joining or splitting tables easy. In order to manipulate a table to split or join with another table we simply need to move the rows from one table to another.

## Combining Two Tables into One

The rows from the second table simply need to be shifted to the end of the first table and the container of the second table deleted. Below example shows how to combine the rows from two tables into one.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Tables-JoiningAndSplittingTable-CombineRows.cs" >}}

## Split a Table into Two Separate Tables

We first need to pick a row at where to split the table. Once we know this we can create two tables from the original table by following these simple steps:

1. Create a clone of the table without cloning children to hold the moved rows and insert it after the original table.
1. Starting from the specified row move all subsequent rows to this second table.

Below example shows how to split a table into two tables a specific row.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Tables-JoiningAndSplittingTable-SplitTable.cs" >}}
