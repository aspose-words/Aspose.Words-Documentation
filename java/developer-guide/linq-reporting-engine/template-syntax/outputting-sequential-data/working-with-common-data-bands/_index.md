---
title: Working with Common Data Bands
type: docs
weight: 10
url: /java/working-with-common-data-bands/
---

A common data band is a data band which body starts and ends within paragraphs that belong to a single story or table cell.

In particular, a common data band can be entirely located within a single paragraph. In this case, while building a report, the band is replaced with contents that are entirely located within the same paragraph as well. The following example illustrates such a scenario. Given that `items` is an enumeration of the strings “item1”, “item2”, and “item3”, you can use the following template to enumerate them with commas in a single paragraph.

{{< highlight csharp >}}
The items are: <<foreach [item in items]>><<[item]>>, <</foreach>>and others.
{{< /highlight >}}

In this case, the engine produces a report as follows.

{{< highlight csharp >}}
The items are: item1, item2, item3, and others.
{{< /highlight >}}

When the body of a common data band starts and ends within different paragraphs, the engine duplicates on iteration only those paragraph breaks which are located within the body. The following table illustrates the relevant cases.

**Note –** Examples in the table are given with paragraph marks shown as per Microsoft Word® editor.

|Template|Report|
| :- | :- |
|{{< highlight csharp >}}prefix <<foreach [item in items]>><<[item]>>¶<</foreach>>suffix{{< /highlight >}}|prefix item1¶<br>item2¶<br>item3¶<br>suffix|
|{{< highlight csharp >}}prefix<<foreach [item in items]>>¶<<[item]>><</foreach>> suffix{{< /highlight >}}|prefix¶<br>item1¶<br>item2¶<br>item3 suffix|
|{{< highlight csharp >}}prefix¶<<foreach [item in items]>><<[item]>>¶<</foreach>>suffix{{< /highlight >}}|prefix¶<br>item1¶<br>item2¶<br>item3¶<br>suffix|
|{{< highlight csharp >}}prefix<<foreach [item in items]>>¶<<[item]>><</foreach>>¶suffix{{< /highlight >}}|prefix¶<br>item1¶<br>item2¶<br>item3¶<br>suffix|
|{{< highlight csharp >}}prefix¶<<foreach [item in items]>>¶<<[item]>>¶<</foreach>>¶suffix{{< /highlight >}}|prefix¶<br>¶<br>item1¶<br>¶<br>item2¶<br>¶<br>item3¶<br>¶<br>suffix|
While building a report, duplicated paragraph breaks derive common attributes from their template prototypes. In particular, this fact enables you to build numbered or bulleted lists in reports dynamically. For example, given the above declaration of `items`, you can get a report with their numbered list using the following template.

**Note –** “1. ” in the template stands for a numbered list label.

{{< highlight csharp >}}
1. <<foreach [item in items]>><<[item]>>
<</foreach>>
{{< /highlight >}}

In this case, the engine produces a report as follows.

{{< highlight csharp >}}
1. item1
2. item2
3. item3
{{< /highlight >}}
