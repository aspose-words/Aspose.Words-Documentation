---
title: Inserting Hyperlinks Dynamically in Java
articleTitle: Inserting Hyperlinks Dynamically
linktitle: Inserting Hyperlinks Dynamically
description: "Insert hyperlinks into your document dynamically when building a report Java."
type: docs
weight: 80
url: /java/inserting-hyperlinks-dynamically/
---

You can insert hyperlinks to your reports dynamically using `link` tags. Syntax of a `link` tag is defined as follows.

{{< highlight csharp >}}
<<link [uri_or_bookmark_expression] [display_text_expression]>>
{{< /highlight >}}

Here, `uri_or_bookmark_expression` defines URI or the name of a bookmark within the same document for a hyperlink to be inserted dynamically. This expression is mandatory and must return a non-empty value.

In turn, `display_text_expression` defines text to be displayed for the hyperlink. This expression is optional. If it is omitted or returns an empty value, then during runtime, a value of `uri_or_bookmark_expression` is used as display text as well.

**Note –** Values of both `uri_or_bookmark_expression` and `display_text_expression` can be of any types. During runtime, `Object.toString()` is invoked to get textual representations of these expressions’ values, which is useful for expressions of types like [URI](https://docs.oracle.com/javase/7/docs/api/java/net/URI.html), for example. 

While building a report, `uri_or_bookmark_expression` and `display_text_expression` are evaluated and their results are used to construct a hyperlink that replaces the corresponding `link` tag then. If `uri_or_bookmark_expression returns the name of a bookmark in the same document, then the hyperlink navigates to the bookmark. Otherwise, the hyperlink navigates to a corresponding external resource.

**Note –** A `link` tag cannot be used within a chart.