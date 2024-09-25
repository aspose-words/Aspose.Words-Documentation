---
title: Composing Expressions in C#
second_title: Aspose.Words for .NET
articleTitle: Composing Expressions
linktitle: Composing Expressions
description: "Compose expressions when building a report using C#. The complexity of expressions in templates is not restricted."
type: docs
weight: 10
url: /net/composing-expressions/
aliases: [/net/template-syntax/#composing-expressions]
---

*Expression* is a central concept of the template syntax. Every tag is bound with an expression that is evaluated during runtime, and its result is used by LINQ Reporting Engine according to the tag's role.

Expressions are composed of operands and operators according to [C# Language Specification 5.0](https://www.microsoft.com/en-us/download/details.aspx?id=7029) with several restrictions. See the following sections for more information.

The complexity of expressions in templates is not restricted in any way. However, to keep your templates less cumbersome and to satisfy [Separation of Concerns](https://en.wikipedia.org/wiki/Separation_of_concerns) and [Single Responsibility](https://en.wikipedia.org/wiki/Single_responsibility_principle) principles, locate any complex logic at the business layer of your application, rather than the templates.

**This section includes the following topics:** 

- [Using Lexical Tokens](/words/net/using-lexical-tokens/)
- [Working with Types](/words/net/working-with-types/)
- [Accessing Type Members](/words/net/programming-with-documents/)
- [Using Extension Methods](/words/net/outputting-sequential-data/)
- [Using Operators](/words/net/using-operators/)
- [Using Lambda Functions](/words/net/using-lambda-functions/)
- [Working with Traditional Mail Merge Data Sources](/words/net/working-with-traditional-mail-merge-data-sources/)