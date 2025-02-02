---
title: Inserting Bookmarks Dynamically in C#
second_title: Aspose.Words for .NET
articleTitle: Inserting Bookmarks Dynamically
linktitle: Inserting Bookmarks Dynamically
description: "Insert bookmarks into your document dynamically when building a report using C#."
type: docs
weight: 70
url: /net/inserting-bookmarks-dynamically/
aliases: [/net/template-syntax/#inserting-bookmarks-dynamically]
timestamp: 2024-01-27-14-07-04
---

You can insert bookmarks to your reports dynamically using `bookmark` tags. Syntax of a `bookmark` tag is defined as follows.

{{< highlight csharp >}}
<<bookmark [bookmark_expression]>>
bookmarked_content
<</bookmark>>
{{< /highlight >}}

Here, `bookmark_expression` defines the name of a bookmark to be inserted during runtime. This expression is mandatory and must return a non-empty value. While building a report, `bookmark_expression` is evaluated and its result is used to construct a bookmark start and end that replace corresponding opening and closing `bookmark` tags respectively.

**Note** – A `bookmark` tag cannot be used within a chart.
