---
title: Parameters Element
second_title: Aspose.Words for SharePoint
articleTitle: Parameters Element
linktitle: Parameters Element
description: "Parameters element meaning and structure which may be used while configuring Aspose.Words for SharePoint reports."
type: docs
weight: 210
url: /sharepoint/parameters-element/
---

The Parameters element contains information about report parameters. Aspose.Words for SharePoint requests the parameter values from a user when making a report via user interface. When generating controls for entering parameters, it takes parameter type into account. You set the parameters through the API when making a report programmatically.

| Name |Cardinality|Has Children| Description |
| :- | :- | :- | :- |
| `String` | `1-N` | Yes |Describes a string report parameter.|
|Int32| `1-N` | Yes |Describes a 32-bit integer report parameter.|
| `DateTime` | `1-N` | Yes |Describes a report parameter for representing date and time values.|
| `Decimal` | `1-N` | Yes |Describes a decimal report parameter.|
