---
title: SPDataSource Element
type: docs
weight: 80
url: /sharepoint/spdatasource-element/
---

This element contains information about a connection to a SharePoint server. You can use it with [SPListQuery](/words/sharepoint/splistquery-element-html/) or [SPXmlQuery](/words/sharepoint/spxmlquery-element-html/) to get data from a SharePoint server.

|**Name**|**Cardinality**|**Has Children**|**Description**|
| :- | :- | :- | :- |
|SiteUrl|1|No|Full SharePoint site URL, including http://server:port part. It must not be empty.|
|Credentials|0-1|Yes|Defines user name and password to use for connecting to a SharePoint server. Omit it to use the current user credentials.|

