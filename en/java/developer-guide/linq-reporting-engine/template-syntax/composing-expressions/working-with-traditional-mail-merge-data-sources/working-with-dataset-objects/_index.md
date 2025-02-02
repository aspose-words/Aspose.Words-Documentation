---
title: Working with DataSet objects in Java
second_title: Aspose.Words for Java
articleTitle: Working with DataSet objects
linktitle: Working with DataSet objects
description: "Access DataTable row objects using template expressions when building a report in Java."
type: docs
weight: 10
url: /java/working-with-dataset-objects/
timestamp: 2024-01-27-14-07-04
---

LINQ Reporting Engine enables you to access `DataTable` objects contained within a particular `DataSet` instance by table names using the “.” operator in template expressions. That is, for example, given that `ds` is a `DataSet` instance that contains a `DataTable` named “Persons”, you can access the
table using the following syntax.

{{< highlight csharp >}}
ds.Persons
{{< /highlight >}}

**Note** – Table names are case-insensitive.
