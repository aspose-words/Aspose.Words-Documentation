---
title: SPXmlQuery Element
description: "This page describes SPListQueryelement element meaning and structure which may be used while configuring Aspose.Words for SharePoint reports."
type: docs
weight: 150
url: /sharepoint/spxmlquery-element/
---

The SPListQueryelement contains information an XML data file. This is not actually a query. It just specifies the location of an XML data file via server relative URL. The data file is just converted to a data set by using the .NET [System.Data.DataSet.ReadXml()](https://docs.microsoft.com/en-us/dotnet/api/system.data.dataset.readxml?view=net-6.0) method with inferred schema

The [TableNames](/words/sharepoint/tablenames-element/) element is allowed inside [SPXmlQuery](/words/sharepoint/spxmlquery-element/) by the schema but will be ignored when retrieving data. There is no way to use parameters with SPXmlQuery. The XML data file referenced by the query is retrieved via SharePoint object model. Currently there is no way to get a file from a SharePoint farm other than the current farm with SPXmlQuery. The Credentials element of the [SPDataSource](/words/sharepoint/spdatasource-element/) element is ignored when getting data via SPXMLQuery. The current user context is always used.

|Name|Cardinality|Has Children|Description|
| :- | :- | :- | :- |
|ServerRelativeXmlFileUrl|1|No|Server relative URL of an XML data file.|
