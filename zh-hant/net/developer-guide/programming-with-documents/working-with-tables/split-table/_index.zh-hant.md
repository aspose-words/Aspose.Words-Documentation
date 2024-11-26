---
title: 拆分表在C#
second_title:  Aspose.Words for .NET
articleTitle: 拆分表
linktitle: 拆分表
description: "在C#中分割表格。 如何將一張表格拆分為兩張分開的表格 C#。"
type: docs
weight: 100
url: /zh-hant/net/split-table/
timestamp: 2024-01-27-14-07-04
---

由 Aspose.Words Document Object Model 所表示的資料表是由獨立的列與細胞組成的，使其易於將資料表分開。

若要將一張表格分成兩張表格，我們只需要將原表中的部份資料列移動到新表中。 要完成這件事，我們必須選擇要分割表格的地方。

我們可以根據這些簡單的步驟，從原始表格中創造兩個表格：

1. 創建一個不複製子節點的表格副本，以保留移動的列並將其插入到原始表格之後
2。 從指定的行開始，將所有接下來的行移動到這個第二個表格中

以下程式碼範例示範如何在一特定行上將一張表分割成兩張：

{{< gist "aspose-words-gists" "4ab56c5443822fa44f4cac1f45af32b7" "split-table.cs" >}}
