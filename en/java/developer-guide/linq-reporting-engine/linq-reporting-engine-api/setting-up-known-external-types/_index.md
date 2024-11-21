---
title: Setting up Known External Types in Java
second_title: Aspose.Words for Java
articleTitle: Setting up Known External Types
linktitle: Setting up Known External Types
description: "Learn how to set up external types using LINQ in Java."
type: docs
weight: 50
url: /java/setting-up-known-external-types/
timestamp: 2024-01-27-14-07-04
---

LINQ Reporting Engine must be aware of custom external types that you reference in your template before the engine processes the template. You can set up external types known by the engine through the `ReportingEngine.getKnownTypes()` property. The property represents an unordered set (that is, a collection of unique items) of [Class](https://docs.oracle.com/javase/7/docs/api/java/lang/Class.html) objects. Every type in the set must meet requirements declared at “Working with Types”.

**Note** – `Object`, `String`, and primitive types are known by the engine by default.

Consider the following example. Given an `ImageUtil` class declared at your application and a template accessing a static member of this class, you can use the following code to make the engine be aware of the class before processing the template.
{{< highlight java >}}
ReportingEngine engine = new ReportingEngine();
engine.getKnownTypes().add(ImageUtil.class);
engine.buildReport(...);
{{< /highlight >}}
