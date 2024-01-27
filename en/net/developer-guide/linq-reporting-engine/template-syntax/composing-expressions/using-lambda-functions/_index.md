---
title: Using Lambda Functions in C#
second_title: Aspose.Words for .NET
articleTitle: Using Lambda Functions
linktitle: Using Lambda Functions
description: "Use lambda functions in template expressions when building a report in C#."
type: docs
weight: 60
url: /net/using-lambda-functions/
---

LINQ Reporting Engine enables you to use lambda functions only as arguments of built-in enumeration extension methods in template expressions. See "Appendix A. Enumeration Extension Methods" for more information.

**Note** – Lambda functions declared within template expressions are not interchangeable with delegates. Thus, you can not pass delegates as arguments to built-in enumeration extension methods.

You can use both explicit and implicit lambda function signatures in template expressions. If you do not specify the type of a parameter of a lambda function explicitly, the type is determined implicitly by the engine depending on the type of the corresponding enumeration.