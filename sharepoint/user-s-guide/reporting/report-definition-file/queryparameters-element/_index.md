---
title: QueryParameters Element
description: "This page describes QueryParameters element meaning and structure."
type: docs
weight: 130
url: /sharepoint/queryparameters-element/
---

The QueryParameters element set the order in which parameters are substituted in a query. It is useful for queries to [OleDbDataSource](/words/sharepoint/oledbdatasource-element/), because they substitute parameters by order. Use parameter names defined in the Name element inside the [Parameters](/words/sharepoint/parameters-element/) element.

|Name|Cardinality|Has Children|Description|
| :- | :- | :- | :- |
|Name|1-N|No|Parameter name. It must match a parameter name defined in the [Parameters](/words/sharepoint/parameters-element/) element.|

