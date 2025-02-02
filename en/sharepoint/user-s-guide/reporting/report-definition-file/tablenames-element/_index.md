---
title: TableNames Element
second_title: Aspose.Words for SharePoint
articleTitle: TableNames Element
linktitle: TableNames Element
description: "TableNames element meaning and structure which may be used while configuring Aspose.Words for SharePoint reports."
type: docs
weight: 120
url: /sharepoint/tablenames-element/
timestamp: 2024-10-21-11-17-44
---

The TableNames element describes how to name the tables returned by its parent query. Use it to match queries with report regions designated by the **TableStart:** and **TableEnd:** merge fields in the report template. Names are assigned to the tables returned by the query in the order they go inside the TableNames element. However, normally one query returns only one table.

| Name | Cardinality | Has Children | Description |
| :- | :- | :- | :- |
| `TableName` | `1-N` | No | Table name. It must not be empty. |
