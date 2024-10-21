---
title: SPDataSource Element
second_title: Aspose.Words for SharePoint
articleTitle: SPDataSource Element
linktitle: SPDataSource Element
description: "SPDataSource element meaning and structure which may be used while configuring Aspose.Words for SharePoint reports."
type: docs
weight: 80
url: /sharepoint/spdatasource-element/
---

This element contains information about a connection to a SharePoint server. You can use it with [SPListQuery](/words/sharepoint/splistquery-element/) or [SPXmlQuery](/words/sharepoint/spxmlquery-element/) to get data from a SharePoint server.

| Name | Cardinality | Has Children | Description |
| :- | :- | :- | :- |
| `SiteUrl` | 1 | No | Full SharePoint site `URL`, including https://server:port part. It must not be empty. |
| `Credentials` | 0-1 | Yes | Defines user name and password to use for connecting to a SharePoint server. Omit it to use the current user credentials. |
