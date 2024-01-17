---
title: Optimizing Reflection Calls in C#
second_title: Aspose.Words for .NET
articleTitle: Optimizing Reflection Calls
linktitle: Optimizing Reflection Calls
description: "Learn how to enable inline syntax error message into the template document at the exact position using LINQ in C#."
type: docs
weight: 100
url: /net/optimizing-reflection-calls/
---

LINQ Reporting Engine uses reflection calls while accessing members of custom external types. However, reflection calls are much slower than direct calls, which create a performance overhead.

That is why, the engine provides a strategy minimizing the reflection usage. The strategy is based upon the runtime type generation. That is, the engine generates a proxy type per an external type. The proxy directly calls members of the corresponding external type, the engine to access these members in a uniform way with no reflection involved. The proxy is [lazily initialized](https://en.wikipedia.org/wiki/Lazy_initialization) and reused in further. Thus, the reflection is used only while building the proxy.

Although this strategy can significantly minimize the reflection usage in a long run, it creates a performance overhead of the runtime type generation. So, if you deal with small data collections all the time while building your reports, consider the disabling of the strategy. You can control the enabling of the strategy through the `ReportingEngine.UseReflectionOptimization` static property. By default, the strategy is enabled.