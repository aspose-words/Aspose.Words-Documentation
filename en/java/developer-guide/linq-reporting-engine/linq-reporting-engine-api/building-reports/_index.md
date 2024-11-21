---
title: Building Reports in Java
second_title: Aspose.Words for Java
articleTitle: Building Reports
linktitle: Building Reports
description: "Learn how to build reports a template using LINQ in Java."
type: docs
weight: 10
url: /java/building-reports/
timestamp: 2024-10-21-11-17-44
---

To build a report from a template, you can use one of the `ReportingEngine.buildReport` overloads. The following table describes parameters of these overloads.

| Parameter | Description |
| :- | :- |
| `document` | A template document. At runtime, this document instance is populated with a data from the specified source and becomes a ready report. |
| `dataSource` | An object providing a data to populate the specified template. The object must be of one of the following types:<br>- A traditional mail merge data source (see “Working with Traditional Mail Merge Data Sources” for more information)<br>- An object of a custom visible type (see “Working with Types” for more information)<br/>- An `XmlDataSource` instance (see “Accessing XML Data” for more information)<br>- A `JsonDataSource` instance (see “Accessing JSON Data” for more information)<br/>- A `CsvDataSource` instance (see “Accessing CSV Data” for more information) |
| `dataSourceName` | The identifier of the specified data source object within the specified template. You can omit this identifier, if the template uses the contextual object member access (see “Using Contextual Object Member Access” for more information) when dealing with the data source. |

Given a template to be populated with a data from a `DataSet` instance that is identified as “ds” within the template, you can use the following code to build the corresponding report.

{{< highlight java >}}
Document doc = ...    // Loading a template document.
DataSet dataSet = ... // Setting up a data set.
ReportingEngine engine = new ReportingEngine();
engine.buildReport(doc, dataSet, “ds”);
{{< /highlight >}}

Given a visible `Person` class defined in your application and a template to be populated with a data about a single `Person` instance using the contextual object member access, you can use the following code to build the corresponding report.

{{< highlight java >}}
Document doc = ...    // Loading a template document.
Person person = ...   // Setting up a person data.
ReportingEngine engine = new ReportingEngine();
engine.buildReport(doc, person);
{{< /highlight >}}
