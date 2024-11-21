---
title: Working with DataTable Objects in Java
second_title: Aspose.Words for Java
articleTitle: Working with DataTable Objects
linktitle: Working with DataTable Objects
description: "Treat DataTable row objects in template expressions as enumerations of their rows when building a report in Java."
type: docs
weight: 20
url: /java/working-with-datatable-objects/
timestamp: 2024-01-27-14-07-04
---

LINQ Reporting Engine enables you to treat `DataTable` objects in template expressions as enumerations of their rows. That is, you can use template expressions evaluated to such objects in `foreach` tags (see "Outputting Sequential Data" for more information).

Also, you can normally apply enumeration extension methods (see "Appendix A. Enumeration Extension Methods" for more information) to `DataTable` objects in template expressions. For example, given that `persons` is a `DataTable` instance, you can count its rows using the following syntax.

{{< highlight csharp >}}
persons.count()
{{< /highlight >}}
