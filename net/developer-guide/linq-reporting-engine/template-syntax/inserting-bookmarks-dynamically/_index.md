---
title: Inserting Bookmarks Dynamically
description: "Insert bookmarks into your document dynamically when building a report C#."
type: docs
weight: 70
url: /net/inserting-bookmarks-dynamically/
aliases: [/net/template-syntax/#inserting-bookmarks-dynamically]
---

You can insert bookmarks to your reports dynamically using `bookmark` tags. Syntax of a `bookmark` tag is defined as follows.

{{< highlight csharp >}}
<<bookmark [bookmark_expression]>>
bookmarked_content
<</bookmark>>
{{< /highlight >}}

Here, `bookmark_expression` defines the name of a bookmark to be inserted during runtime. This expression is mandatory and must return a non-empty value. While building a report, `bookmark_expression` is evaluated and its result is used to construct a bookmark start and end that replace corresponding opening and closing `bookmark` tags respectively.

**Note –** A `bookmark` tag cannot be used within a chart.