---
title: Working with Types in C#
second_title: Aspose.Words for .NET
articleTitle: Working with Types
linktitle: Working with Types
description: "Use external visible types in template expressions when building a report in C#."
type: docs
weight: 20
url: /net/working-with-types/
---

LINQ Reporting Engine enables you to use externally visible types in template expressions. A *visible type* is a public type with outer types (if any) are public as well. You can use a data source object of any visible type to pass it to the engine.

However, you can use the identifier of a visible type in template expressions only if the following additional requirements are met:

- The type is not void.
- The type does not represent an array.
- The type is not an open or closed generic type.

**Note** – Whereas using generic types' identifiers is forbidden in template expressions, you can use identifiers of nullable types in the shorthand "`T?`" form.

Also, the engine enables you to use anonymous types in template expressions. Such types are useful while composing expressions with grouping by multiple keys. See "Appendix A. Enumeration Extension Methods" for the examples.