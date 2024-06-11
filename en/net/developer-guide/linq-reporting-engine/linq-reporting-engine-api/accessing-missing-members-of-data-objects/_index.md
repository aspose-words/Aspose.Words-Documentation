---
title: Accessing Missing Members of Data Objects in C#
second_title: Aspose.Words for .NET
articleTitle: Accessing Missing Members of Data Objects
linktitle: Accessing Missing Members of Data Objects
description: "Learn how to treat missing members of data objects as null literals using LINQ in C#."
type: docs
weight: 70
url: /net/accessing-missing-members-of-data-objects/
---

By default, LINQ Reporting Engine forbids access to missing members of data objects used to build a report in template expressions, since such access is forbidden by [C# Language Specification 5.0](https://www.microsoft.com/en-us/download/details.aspx?id=7029). On attempt to use a missing member of a data object, the engine throws an exception then.

But in some scenarios, members of data objects are not exactly known while designing a template. For example, if using a `DataSet` instance loaded from XML without its schema defined, some of expected data members can be missing.

To support such scenarios, the engine provides an option to treat missing members of data objects as null literals. You can enable the option as shown in the following example.

{{< highlight csharp >}}
ReportingEngine engine = new ReportingEngine();
engine.Options |= ReportBuildOptions.AllowMissingMembers;
engine.BuildReport(...);
{{< /highlight >}}

Consider the following example. Given that `r` is a `DataRow` instance that does not have a field `Missing`, by default, the following template expression causes the engine to throw an exception while building a report.

{{< highlight xml >}}
<<[r.Missing]>>
{{< /highlight >}}

However, if `ReportBuildOptions.AllowMissingMembers` is applied, the engine treats access to such a field as a null literal, so no exception is thrown and simply no value is written to the report then.

Furthermore, the engine can be instructed to print a specific message instead of no value in such a case. The following code snippet shows how to achieve this.

{{< highlight csharp >}}
ReportingEngine engine = new ReportingEngine();
engine.Options |= ReportBuildOptions.AllowMissingMembers;
engine.MissingMemberMessage = "None";
engine.BuildReport(...);
{{< /highlight >}}

**Note –** The message can be printed only instead of a template expression that represents a plain reference to a missing member of an object like in the provided template example; for instance, the message is not used when printing the result of a binary operator, one of which operands references a missing object member.