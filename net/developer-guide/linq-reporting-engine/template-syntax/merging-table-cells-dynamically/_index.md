---
title: Merging Table Cells Dynamically
type: docs
weight: 100
url: /net/merging-table-cells-dynamically/
aliases: [/net/template-syntax/#merging-table-cells-dynamically]
---

You can merge table cells with equal textual contents within your reports dynamically using `cellMerge` tags. The syntax of a `cellMerge` tag is defined as follows.

{{< highlight csharp >}}
<<cellMerge>>
{{< /highlight >}}

By default, a `cellMerge` tag causes a cell merging operation only in a vertical direction during runtime. However, you can alter this behavior in the following ways:

- To merge cells only in a horizontal direction, use the horz switch as follows.
{{< highlight csharp >}}<<cellMerge -horz>>{{< /highlight >}}

- To merge cells in both – vertical and horizontal – directions, use the both switch as follows.
{{< highlight csharp >}}<<cellMerge -both>>{{< /highlight >}}

For two or more successive table cells to be merged dynamically in either direction by the engine, the following requirements must be met:

- Each of the cells must contain a `cellMerge` tag denoting a cell merging operation in the same direction.
- Each of the cells must not be already merged in another direction.
- The cells must have equal textual contents (ignoring leading and trailing whitespaces).

Consider the following template.

|...|...|...|
| :- | :- | :- |
|**...**|**<<cellMerge>><<[value1]>>**|**...**|
|**...**|**<<cellMerge>><<[value2]>>**|**...**|
|**...**|**...**|**...**|


If `value1` and `value2` have the same value, say “Hello”, table cells containing `cellMerge` tags are successfully merged during runtime and a result report looks as follows then.

|...|...|...|
| :- | :- | :- |
|**...**|**Hello**|**...**|
|**...**||**...**|
|**...**|**...**|**...**|

If `value1` and `value2` have different values, say “Hello” and “World”, table cells containing `cellMerge` tags are not merged during runtime and a result report looks as follows then.

|...|...|...|
| :- | :- | :- |
|**...**|**Hello**|**...**|
|**...**|**World**|**...**|
|**...**|**...**|**...**|

**Note –** A `cellMerge` tag can be normally used within a table data band.

