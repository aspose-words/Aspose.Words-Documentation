---
title: Merging Table Cells Dynamically
type: docs
weight: 100
url: /java/merging-table-cells-dynamically/
---

You can merge table cells with equal textual contents within your reports dynamically using cellMerge tags. Syntax of a cellMerge tag is defined as follows.

**&lt;&lt;cellMerge -horz&gt;&gt;**

A horz switch is optional. If the switch is present, it denotes a cell merging operation in a horizontal direction. If the switch is missing, it means that a cell merging operation is to be performed in a vertical direction (the default).

For two or more successive table cells to be merged dynamically in either direction by the engine, the following requirements must be met:

- Each of the cells must contain a cellMerge tag denoting a cell merging operation in the same direction.
- Each of the cells must not be already merged in another direction.
- The cells must have equal textual contents (ignoring leading and trailing whitespaces).

Consider the following template.

|**...**|**...**|**...**|
| :- | :- | :- |
|**...**|**&lt;&lt;cellMerge&gt;&gt;&lt;&lt;[value1]&gt;&gt;**|**...**|
|**...**|**&lt;&lt;cellMerge&gt;&gt;&lt;&lt;[value2]&gt;&gt;**|**...**|
|**...**|**...**|**...**|


If value1 and value2 have the same value, say “Hello”, table cells containing cellMerge tags are successfully merged during runtime and a result report looks as follows then.

|**...**|**...**|**...**|
| :- | :- | :- |
|**...**|**Hello**|**...**|
|**...**||**...**|
|**...**|**...**|**...**|

If value1 and value2 have different values, say “Hello” and “World”, table cells containing cellMerge tags are not merged during runtime and a result report looks as follows then.

|**...**|**...**|**...**|
| :- | :- | :- |
|**...**|**Hello**|**...**|
|**...**|**World**|**...**|
|**...**|**...**|**...**|

**Note –** A cellMerge tag can be normally used within a table data band.
