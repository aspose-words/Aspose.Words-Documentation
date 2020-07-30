---
title: SqlDataSource Element
type: docs
weight: 60
url: /sharepoint/sqldatasource-element/
---

This element contains information about a connection to a Microsoft SQL server database. .NET SqlClient is used for the connection. You can use it only with [SqlQuery](/words/sharepoint/sqlquery-element-html/) elements to define queries. Please note that storing database user name and password in the connection string may be insecure.

|**Name**|**Cardinality**|**Has Children**|**Description**|
| :- | :- | :- | :- |
|ConnectionString|1|No|Data source connection string. It must not be empty.|

