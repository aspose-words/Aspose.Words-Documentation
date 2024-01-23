---
title: Setting up Known External Types in C#
second_title: Aspose.Words for .NET
articleTitle: Setting up Known External Types
linktitle: Setting up Known External Types
description: "Learn how to set up external types using LINQ in C#."
type: docs
weight: 50
url: /net/setting-up-known-external-types/
---

LINQ Reporting Engine must be aware of custom external types that you reference in your template before the engine processes the template. You can set up external types known by the engine through the `ReportingEngine.KnownTypes` property. The property represents an unordered set (that is, a collection of unique items) of [Type](https://docs.microsoft.com/en-us/dotnet/api/system.type?view=net-6.0) objects. Every type in the set must meet requirements declared at “Working with Types”.

**Note** – Aliases of simple types like `int`, `string`, and others are known by the engine by default.

Consider the following example. Given an `ImageUtil` class declared at your application and a template accessing a static member of this class, you can use the following code to make the engine be aware of the class before processing the template.

{{< highlight csharp >}}
ReportingEngine engine = new ReportingEngine();
engine.KnownTypes.Add(typeof(ImageUtil));
engine.BuildReport(...);
{{< /highlight >}}