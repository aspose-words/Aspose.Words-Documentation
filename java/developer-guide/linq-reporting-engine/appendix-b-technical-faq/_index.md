---
title: Appendix B. Technical FAQ in Java
articleTitle: Appendix B. Technical FAQ
linktitle: Appendix B. Technical FAQ
description: "Learn the LINQ Reporting Engine FAQ to build a report in Java."
type: docs
weight: 70
url: /java/appendix-b-technical-faq/
---

{{% alert color="primary" %}}

This section reveals some technical aspects and implementation details related to LINQ Reporting Engine. This information can be useful for you while making design decisions for your applications. The information is provided in a question-answer form.

{{% /alert %}}

## How is the type of an enumeration item implicitly determined by the engine in template expressions?

If you do not specify the type of an enumeration item in a `foreach` statement or lambda function signature within your template explicitly, the type is implicitly determined by the engine from the type of the enumeration as follows:

1. If the enumeration represents a `DataTable` instance, then the item represents its row.
1. Otherwise, if the enumeration represents child rows of a `DataTable` row, then the item represents a child row.
1. Otherwise, if the enumeration implements generic `Iterable<T>`, then the item type is a type argument corresponding to T. Note, that in some cases it is impossible to extract type arguments at runtime due to the Java [Type Erasure](https://docs.oracle.com/javase/tutorial/java/generics/erasure.html) feature. That is why, the engine is capable to extract the item type only if one of the following conditions is met: 
	- The enumeration expression represents an invocation of a type member which return type is a parameterized type like `Iterable<String>`, `ArrayList<Integer>`, and so forth.
	- The type of the enumeration implements or extends a parameterized type like `Iterable<String>`, `ArrayList<Integer>`, and so forth.
1. Otherwise, the item type is `Object`.
