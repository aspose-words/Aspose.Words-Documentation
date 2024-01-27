---
title: Inserting HTML Dynamically in Java
second_title: Aspose.Words for Java
articleTitle: Inserting HTML Dynamically
linktitle: Inserting HTML Dynamically
description: "Insert HTML into your document dynamically when building a report in Java."
type: docs
weight: 55
url: /java/inserting-html-dynamically/
---

You can insert HTML to your reports dynamically by using one of the following two options.

The first one is using of an expression tag with an `html` switch applied as follows.

{{< highlight csharp >}}
<<[html_text_expression] -html>>
{{< /highlight >}}

This option is useful when you need to override formatting of some parts of an expression result, for example, highlight a word with a bold or italic font while staying consistent with styles of a template document. For more information on dynamic HTML insertion using this approach, see “Outputting Expression Results”.

The second option for dynamic HTML insertion is using of an `html` tag. An `html` tag denotes a placeholder within a template for an HTML block to be inserted during runtime. Its syntax is defined as follows.

{{< highlight csharp >}}
<<html [html_text_expression]>>
{{< /highlight >}}

**Note** – An `html` tag is forbidden within charts.

While building a report, an expression declared within an `html` tag is evaluated and its result as a string is interpreted as an HTML block which content replaces the `html` tag then.

In its base usage, an `html` tag behaves exactly the same as an expression tag with an `html` switch applied. In particular, it makes the engine to use corresponding styles of a template document. This makes content of a result document look more consistent. However, you can keep source HTML formatting for content being inserted (to make it look like in a browser) by using a `sourceStyles` switch as shown in the following snippet.

{{< highlight csharp >}}
<<html [html_text_expression] -sourceStyles>>
{{< /highlight >}}