---
title: Working with Traditional Mail Merge Data Sources
second_title: Aspose.Words for .NET
articleTitle: Working with Traditional Mail Merge Data Sources
linktitle: Working with Traditional Mail Merge Data Sources
description: "Use simplified syntax in template expressions to work with traditional Aspose.Words Mail Merge data source objects when building a report in C#."
type: docs
weight: 70
url: /net/working-with-mail-merge-data-sources/
---

LINQ Reporting Engine enables you to use a simplified syntax in template expressions to work with traditional Aspose.Words Mail Merge data source objects. See the following sections for more information.

## Working with DataSet objects

LINQ Reporting Engine enables you to access `DataTable` objects contained within a particular `DataSet` instance by table names using the “.” operator in template expressions. That is, for example, given that `ds` is a `DataSet` instance that contains a `DataTable` named “Persons”, you can access the table using the following syntax.

{{< highlight csharp >}}
  ds.Persons
{{< /highlight >}}

**Note** – Table names are case-insensitive.

## Working with DataTable and DataView Objects

LINQ Reporting Engine enables you to treat `DataTable` and `DataView` objects in template expressions as enumerations of their rows. That is, you can use template expressions evaluated to such objects in `foreach` tags (see "Outputting Sequential Data" for more information).

Also, you can normally apply enumeration extension methods (see "Appendix A. Enumeration Extension Methods" for more information) to `DataTable` and `DataView` objects in template expressions. For example, given that persons are a `DataTable` or `DataView` instance, you can count its rows using the following syntax.

{{< highlight csharp >}}
  persons.Count()
{{< /highlight >}}

## Working with DataRow and DataRowView Objects

LINQ Reporting Engine enables you to access a data associated with a particular `DataRow` or `DataRowView` instance in template expressions using the “.” operator. The following table describes, which identifiers you can use to access different kinds of the data.

| Data Kind | Identifier | Examples of Template Expressions |
| :- | :- | :- |
| **Field Value** | Field name | Given that `r` is a row that has a field named “Name”, you can access the field’s value using the following syntax.<br />{{< highlight csharp >}}r.Name{{< /highlight >}} |
| **Single Parent or Child Row** | Parent (child) table name | Given that r is a row of a `DataTable` that has a parent (child) `DataTable` named “City”, you can access the single parent (child) row of r using the following syntax.<br />{{< highlight csharp >}}r.City{{< /highlight >}}<br />Given that the “City” `DataTable` has a field named “Name”, you can access the field’s value for the single parent (child) row using the following syntax.<br />{{< highlight csharp >}}r.City.Name{{< /highlight >}} |
| **Enumeration of Child or Parent Rows** | Child (parent) table name | Given that r is a row of a `DataTable` that has a child (parent) `DataTable` named “Persons”, you can access the enumeration of the child (parent) rows of `r` using the following syntax.<br />{{< highlight csharp >}}r.Persons{{< /highlight >}}<br />Given that the “Persons” `DataTable` has a field named “Age”, you can count the child (parent) rows that correspond to persons over thirty years old using the following syntax.<br />{{< highlight csharp >}}r.Persons.Count(p => p.Age > 30){{< /highlight >}} |

**Note** – Field and table names are case-insensitive.

To determine parent-child relationships for a particular `DataTable` instance, the engine uses [DataRelation](https://docs.microsoft.com/en-us/dotnet/api/system.data.datarelation?view=net-6.0) objects contained within the corresponding `DataSet` instance. Thus, you can manage these relationships in a common way.

**Note** – Instead of using of table names to access data of child or parent rows, you can also use relation names, which is useful when you deal with multiple relations to the same table.

## Working with IDataReader Implementors

LINQ Reporting Engine enables you to treat `IDataReader` implementors as enumerations of `IDataRecord` implementors in template expressions. That is, you can use `IDataReader` implementors in template expressions in the same way as `DataTable` objects. See "Working with DataTable and DataView Objects" for more information.

However, you can not use `IDataReader` implementors in template expressions in conjunction with enumeration operations that require a caching of enumeration items. Examples of such operations are grouping and sorting. To work around this restriction, use `DataTable` objects instead.

## Working with IDataRecord Implementors

LINQ Reporting Engine enables you to access the field values of a particular `IDataRecord` implementor by field names using the "." operator in template expressions. To use this feature, one of the following conditions must be met:

- The `IDataRecord` implementor represents an iteration variable upon enumerating an `IDataReader` implementor (see "Outputting Sequential Data" for more information).
- The `IDataRecord` implementor does not implement the `IDataReader` interface.

The following example shows, how to use this feature. Given that r is an `IDataRecord` implementor that has a field named "Name", you can access the field’s value using the following syntax.

{{< highlight csharp >}}
  r.Name
{{< /highlight >}}

**Note** – Field names are case-insensitive.