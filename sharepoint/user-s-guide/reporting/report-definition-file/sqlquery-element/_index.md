---
title: SqlQuery Element
description: "This page describes SqlQuery element meaning and structure which may be used while configuring Aspose.Words for SharePoint reports."
type: docs
weight: 110
url: /sharepoint/sqlquery-element/
---

The SqlQuery element contains information about an SQL query for retrieving report data from a relational database. Use it with [SqlDataSource](/words/sharepoint/sqldatasource-element/) or [OleDbDataSource](/words/sharepoint/oledbdatasource-element/). Command can include parameter placeholders. However, the placeholder syntax is different for SqlDataSource and OleDbDataSource. For SqlDataSource query, use parameter names starting with “ @”. Parameter values are substituted by name. Parameter names must match report parameters described in the [Parameters](/words/sharepoint/parameters-element/) element. See how to use parameter placeholders for SqlDataSource on [MSDN](https://docs.microsoft.com/en-us/dotnet/api/system.data.sqlclient.sqlcommand.parameters?view=dotnet-plat-ext-6.0).

For OleDbDataSource, use “ ? ” as a parameter placeholder. Parameters are substituted in the order they are listed in the [QueryParameters](/words/sharepoint/queryparameters-element/) element or in [Parameters](/words/sharepoint/parameters-element/) element if QueryParameters} is missing. See how to use parameter placeholders for {{OleDbDataSource on [MSDN](https://docs.microsoft.com/en-us/dotnet/api/system.data.oledb.oledbcommand.parameters?view=dotnet-plat-ext-6.0).

|Name|Cardinality|Has Children|Description|
| :- | :- | :- | :- |
|TableNames|0-1|Yes|Describes table names to assign to the tables returned by the query.|
|QueryParameters|0-1|Yes|Sets the order of report parameters used in the query.|
|Command|1|No|SQL command to get report data from the data source. It must not be empty.|
