---
title: Inserting Bookmarks Dynamically
type: docs
weight: 70
url: /java/inserting-bookmarks-dynamically/
---

{{% alert color="primary" %}} 

You can insert bookmarks to your reports dynamically using bookmark tags. Syntax of a bookmark tag is defined as follows.

**&lt;&lt;bookmark [bookmark_expression]&gt;&gt;
bookmarked_content
&lt;&lt;/bookmark&gt;&gt;**

Here, bookmark_expression defines the name of a bookmark to be inserted during runtime. This expression is mandatory and must return a non-empty value. While building a report, bookmark_expression is evaluated and its result is used to construct a bookmark start and end that replace corresponding opening and closing bookmark tags respectively.

` `REF note **Note –** A bookmark tag cannot be used within a chart.

{{% /alert %}}
