---
title: Restricting Access to Type Members in C#
second_title: Aspose.Words for .NET
articleTitle: Restricting Access to Type Members
linktitle: Restricting Access to Type Members
description: "Learn how to restrict access of a template author to members of types sensitive using LINQ in C#."
type: docs
weight: 90
url: /net/restricting-access-to-type-members/
---

In scenarios where report templates are created by a third party, it can make sense to restrict access of a template author to members of types sensitive from a security point of view. LINQ Reporting Engine provides API to accomplish this as illustrated with the following example. Given that `SomeClass1` and `SomeClass2` are types which members should be inaccessible by the engine through template syntax, you can use the following code snippet to make the engine restrict the access.

{{< highlight csharp >}}
ReportingEngine.SetRestrictedTypes(typeof(SomeClass1), typeof(SomeClass2));
{{< /highlight >}}

After the code is run, on attempt to access any member of types `SomeClass1` and `SomeClass2` through a template, there are two possible outcomes while building a report:

1. By default, the engine throws an exception saying about a syntactic error the same way it does when encounters a missing type member.
1. If missing type members are allowed, the engine treats every such a member as a null literal (see “Accessing Missing Members of Data Objects” for more information).

**Note** – The engine also restricts access to members of types derived from `SomeClass1` and `SomeClass2` in the same way.

Restricted types can be set only before building the very first report. Once restricted types are checked for the first time while building a report, they cannot be changed after that and an exception is thrown on attempt to do this. That is why, the recommended place to set restricted types is your application’s startup.

**Note** – To determine whether access to a particular type member should be restricted, some reflective calls are done by the engine under the hood, so for better performance, it is recommended to keep the set of restricted types minimal by restricting access to members of only those types that are crucial in terms of security.