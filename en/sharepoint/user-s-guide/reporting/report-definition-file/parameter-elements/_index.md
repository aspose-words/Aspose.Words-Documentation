---
title: Parameter Elements
second_title: Aspose.Words for SharePoint
articleTitle: Parameter Elements
linktitle: Parameter Elements
description: "Parameter element meaning and structure which may be used while configuring Aspose.Words for SharePoint reports."
type: docs
weight: 220
url: /sharepoint/parameter-elements/
timestamp: 2024-10-21-11-17-44
---

Currently String, Int32, DateTime and Decimal parameter elements all have the same child elements. However, parameter data type, specified by the element name is important. Aspose.Words for SharePoint uses is to generate controls for parameter entering. Parameter type also affects how the supplied values are converted when passed to queries.

| Name | Cardinality | Has Children | Description |
| :- | :- | :- | :- |
| `Name` | 1 | No | Parameter name to use in query elements like Command in [SqlQuery](/words/sharepoint/sqlquery-element/) and Query in [SPListQuery](/words/sharepoint/splistquery-element/). |
| `Prompt` | 1 | No | Parameter description to display next to a control generated for entering the parameter in the user interface. |
