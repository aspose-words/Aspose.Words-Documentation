---
title: Queries Element
second_title: Aspose.Words for SharePoint
articleTitle: Queries Element
linktitle: Queries Element
description: "Queries element meaning and structure which may be used while configuring Aspose.Words for SharePoint reports."
type: docs
weight: 100
url: /sharepoint/queries-element/
---

The Queries element contains information about queries for retrieving report data from the data source. It must contain at least one of the elements from the table below. Use SqlQuery with [SqlDataSource](/words/sharepoint/sqldatasource-element/) or [OleDbDataSource](/words/sharepoint/oledbdatasource-element/). Use SPListQuery or SPXmlQuery with [SPDataSource](/words/sharepoint/spdatasource-element/). Other combinations are not supported. At least one of the child elements should be present.

| Name |Cardinality|Has Children| Description |
| :- | :- | :- | :- |
| `SqlQuery` |0-N| Yes |Describes an SQL query to a relational database.|
| `SPListQuery` |0-N| Yes |Describes a CAML query to a SharePoint list.|
| `SPXmlQuery` |0-N| Yes |Describes XML data file location in a SharePoint document library.|
