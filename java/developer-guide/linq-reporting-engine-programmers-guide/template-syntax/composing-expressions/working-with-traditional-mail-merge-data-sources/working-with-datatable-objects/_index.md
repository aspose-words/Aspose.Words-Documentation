---
title: Working with DataTable Objects
type: docs
weight: 20
url: /java/working-with-datatable-objects/
---

LINQ Reporting Engine enables you to treat DataTable objects in template expressions as enumerations of their rows. That is, you can use template expressions evaluated to such objects in foreach tags (see "Outputting Sequential Data" for more information).

Also, you can normally apply enumeration extension methods (see "Appendix A. Enumeration Extension Methods" for more information) to DataTable objects in template expressions. For example, given that persons is a DataTable instance, you can count its rows using the following syntax.

{{< highlight java >}}

 persons.count()

{{< /highlight >}}
