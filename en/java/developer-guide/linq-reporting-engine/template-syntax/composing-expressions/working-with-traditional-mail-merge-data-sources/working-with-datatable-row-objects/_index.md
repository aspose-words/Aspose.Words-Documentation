---
title: Working with DataTable Row Objects in Java
second_title: Aspose.Words for Java
articleTitle: Working with DataTable Row Objects
linktitle: Working with DataTable Row Objects
description: "Use simplified syntax in template expressions to work with DataTable row objects when building a report in Java."
type: docs
weight: 30
url: /java/working-with-datatable-row-objects/
---

LINQ Reporting Engine enables you to access a data associated with a particular `DataTable` row instance in template expressions using the “.” operator. The following table describes, which identifiers you can use to access different kinds of the data.

|Data Kind| Identifier |Examples of Template Expressions|
| :- | :- | :- |
|**Field Value**|Field name|Given that `r` is a row that has a field named “Name”, you can access the field’s value using the following syntax.<br />{{< highlight csharp >}}r.Name{{< /highlight >}}|
|**Single Parent or Child Row**|Parent (child) table name|Given that r is a row of a `DataTable` that has a parent (child) `DataTable` named “City”, you can access the single parent (child) row of r using the following syntax.<br />{{< highlight csharp >}}r.City{{< /highlight >}}<br />Given that the “City” `DataTable` has a field named “Name”, you can access the field’s value for the single parent (child) row using the following syntax.<br />{{< highlight csharp >}}r.City.Name{{< /highlight >}}|
|**Enumeration of Child or Parent Rows**|Child (parent) table name|Given that r is a row of a `DataTable` that has a child (parent) `DataTable` named “Persons”, you can access the enumeration of the child (parent) rows of `r` using the following syntax.<br />{{< highlight csharp >}}r.Persons{{< /highlight >}}<br />Given that the “Persons” `DataTable` has a field named “Age”, you can count the child (parent) rows that correspond to persons over thirty years old using the following syntax.<br />{{< highlight csharp >}}r.Persons.Count(p => p.Age > 30){{< /highlight >}}|


**Note** – Field and table names are case-insensitive.

To determine parent-child relationships for a particular `DataTable` instance, the engine uses `DataRelation` objects contained within the corresponding `DataSet` instance. Thus, you can manage these relationships in a common way.

**Note** – Instead of using of table names to access data of child or parent rows, you can also use relation names, which is useful when you deal with multiple relations to the same table.