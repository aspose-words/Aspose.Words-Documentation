---
title: Report Generation
second_title: Aspose.Words for SharePoint
articleTitle: Report Generation
linktitle: Report Generation
description: "Reporting features of the Aspose.Words for SharePoint."
type: docs
weight: 30
url: /sharepoint/report-generation/
---

Use Aspose.Words for SharePoint for generating reports based on a Microsoft Word template file.

1. Prepare a template file. Edit the visual report layout using Microsoft Word.
1. Put placeholders in the report template where external data must be inserted.
1. Prepare an XML report definition describing report properties like data source connection, queries to retrieve the data, report parameters and so on.
1. Put the report template and report definition in a SharePoint document library.
1. Link the report template and report definition via the report template property.

Now you can use you report template to create reports:

1. Click the report template and select the appropriate menu item.
1. Enter report parameters and choose saving format and location.

Report template supports:

- Regions to repeat for each record in a data source table.
- Nested regions for parent-child relationships in the report data.
- Image placeholders to insert images from a data source.

You can access data from:

- Relational databases via SQL queries and Microsoft SQL or OLE DB providers.
- SharePoint lists via CAML queries.
- XML data files located in a SharePoint document library.

In a report definition file the following report properties are specified:

- Data source connection properties.
- Queries to retrieve the data.
- Relationships between data tables returned by different queries.
- Report parameters.

You can specify multiple data source connections and queries. You can combine data returned by the different queries using data relationships in the report definition file. You can store data source connection description in a separate file and use it with multiple reports.
