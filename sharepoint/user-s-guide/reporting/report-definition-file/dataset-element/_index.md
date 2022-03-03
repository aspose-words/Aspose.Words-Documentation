---
title: DataSet Element
second_title: Aspose.Words for SharePoint
articleTitle: DataSet Element
linktitle: DataSet Element
description: "DataSet element meaning and structure which may be used while configuring Aspose.Words for SharePoint reports."
type: docs
weight: 40
url: /sharepoint/dataset-element/
---

The DataSet element contains information about a connection to a data source and queries to get the data for the report from this data source. You describe data source connection properties inside [DataSource](/words/sharepoint/datasource-element/) element. Alternatively, you can store data source connection description in a separate XML file on the same SharePoint farm. This way you can share the data source connection description between many reports, and update it only once when needed. The DataSourceFileUrl element points to the data source description file. The schema of a separate data source description is a subset of the report definition schema with the DataSource element at the root level. The data source definition schema file (**DataSource.xsd**) is included in the installation package for you reference.

|Name|Cardinality|Has Children|Description|
| :- | :- | :- | :- |
|DataSource|0-1|Yes|Describes a connection to a data source. Either this element or DataSourceFileUrl must be present.|
|DataSourceFileUrl|0-1|No|Data source description file URL. Either this element or DataSource must be present.|
|Queries|1|Yes|Queries to get the report data from the specified data source.|
