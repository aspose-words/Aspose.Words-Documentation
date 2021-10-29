---
title: LINQ Reporting Engine Features
type: docs
weight: 20
url: /java/linq-reporting-engine-features/
---

LINQ Reporting Engine enables you to build reports in a similar way as Aspose.Words Mail Merge does. The engine provides the API that allows you to populate template documents with data that comes from various sources.

In contrast to Aspose.Words Mail Merge, LINQ Reporting Engine works with templates based on tags that you can form using just plain text. These tags define expressions and their roles during a report building process. Then, while building a report, the following procedure takes place:

1. The expressions are sequentially evaluated against a passed data source object.
1. The results of the expressions are processed by the engine according to their roles.
1. The corresponding tags are replaced with appropriate content.

While composing expressions, you can use a subset of C# language that satisfies [C# Language Specification 5.0](http://www.microsoft.com/en-us/download/details.aspx?id=7029).

**Note –** In general, the subset corresponds to Java language with few exceptions.

Common reporting data manipulations such as grouping, sorting, and others are included to the expression syntax in the form of [IEnumerable&lt;T&gt;](http://msdn.microsoft.com/en-us/library/9eekhta0\(v=vs.110\).aspx) extension methods. LINQ Reporting Engine gained its name because of this feature.

You can use common Aspose.Words Mail Merge data source objects such as `DataSet`, `DataTable`, and others while working with LINQ Reporting Engine as well. The engine provides a simplified expression syntax to work with such objects. For example, a data table is treated as a collection of its rows. That is, you can normally apply `IEnumerable<T>` extension methods to it. A single data row, in turn, is treated as if it was an object that has the same set of fields that the row has.

In addition to traditional data sources, the engine allows you to use custom ones. Custom data source objects are not treated in a special way by the engine. That is, while working with such objects, you can use the same expression syntax as you use while writing C# code. Moreover, you can use accessible members of any custom type that can implement any complex logic. This feature makes the engine very flexible and suitable almost for any specific need while building a report.
