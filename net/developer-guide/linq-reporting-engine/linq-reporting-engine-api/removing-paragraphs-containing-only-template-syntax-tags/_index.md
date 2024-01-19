---
title: Setting up Known External Types in C#
second_title: Aspose.Words for .NET
articleTitle: Setting up Known External Types
linktitle: Setting up Known External Types
description: "Learn how remove paragraphs containing only template tags using LINQ in C#."
type: docs
weight: 60
url: /net/removing-paragraphs-containing-only-template-syntax-tags/
---

While building a report, some paragraphs containing only template syntax tags can become empty after the tags are removed or replaced with empty values. To remove such paragraphs from the report, you can apply the `ReportBuildOptions.RemoveEmptyParagraphs` option as shown in the following example.

{{< highlight csharp >}}
ReportingEngine engine = new ReportingEngine();
engine.Options |= ReportBuildOptions.RemoveEmptyParagraphs;
engine.BuildReport(...);
{{< /highlight >}}

The difference in the engine’s behavior when the option is applied and not applied is illustrated by the following examples.

**Example 1**

Template document

{{< highlight xml >}}
Prefix
<<[""]>>
Suffix
{{< /highlight >}}

Result document without `ReportBuildOptions.RemoveEmptyParagraphs` applied

{{< highlight xml >}}
Prefix

Suffix
{{< /highlight >}}

Result document with `ReportBuildOptions.RemoveEmptyParagraphs` applied

{{< highlight xml >}}
Prefix
Suffix
{{< /highlight >}}

**Example 2**

Template document

{{< highlight xml >}}
Prefix
<<if [false]>>
Text to be removed
<</if>>
Suffix
{{< /highlight >}}

Result document without `ReportBuildOptions.RemoveEmptyParagraphs` applied
{{< highlight xml >}}
Prefix

Suffix
{{< /highlight >}}

Result document with `ReportBuildOptions.RemoveEmptyParagraphs` applied
{{< highlight xml >}}
Prefix
Suffix
{{< /highlight >}}

**Example 3**

**Note –** In this example, `persons` is assumed to be a data table having a field `Name`.

Template document

{{< highlight xml >}}
Prefix
<<foreach [in persons]>>
<<[Name]>>
<</foreach>>
Suffix
{{< /highlight >}}

Result document without `ReportBuildOptions.RemoveEmptyParagraphs` applied

{{< highlight xml >}}
Prefix

John Doe

Jane Doe

John Smith

Suffix
{{< /highlight >}}

Result document with `ReportBuildOptions.RemoveEmptyParagraphs` applied

{{< highlight xml >}}
Prefix
John Doe
Jane Doe
John Smith
Suffix
{{< /highlight >}}