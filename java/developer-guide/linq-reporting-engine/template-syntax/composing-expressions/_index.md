---
title: Composing Expressions
description: "Compose expressions when building a report Java. The complexity of expressions in templates is not restricted."
type: docs
weight: 10
url: /java/composing-expressions/
---

*Expression* is a central concept of the template syntax. Every tag is bound with an expression that is evaluated during runtime, and its result is used by LINQ Reporting Engine according to the tag's role.

Expressions are composed of operands and operators according to [C# Language Specification 5.0](http://www.microsoft.com/en-us/download/details.aspx?id=7029) with several restrictions. See the following sections for more information.

The complexity of expressions in templates is not restricted in any way. However, to keep your templates less cumbersome and to satisfy [Separation of Concerns](http://en.wikipedia.org/wiki/Separation_of_concerns) and [Single Responsibility](http://en.wikipedia.org/wiki/Single_responsibility_principle) principles, locate any complex logic at the business layer of your application, rather than the templates.

**This section includes the following topics:** 

- [Using Lexical Tokens](/words/java/using-lexical-tokens/)
- [Working with Types](/words/java/working-with-types/)
- [Accessing Type Members](/words/java/accessing-type-members/)
- [Using Extension Methods](/words/java/using-extension-methods/)
- [Using Operators](/words/java/using-operators/)
- [Using Lambda Functions](/words/java/using-lambda-functions/)
- [Working with Traditional Mail Merge Data Sources](/words/java/working-with-traditional-mail-merge-data-sources/)
