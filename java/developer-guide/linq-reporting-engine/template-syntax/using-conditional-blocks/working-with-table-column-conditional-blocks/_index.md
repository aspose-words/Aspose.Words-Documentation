---
title: Working with Table-Column Conditional Blocks
second_title: Aspose.Words for Java
articleTitle: Working with Table-Column Conditional Blocks
linktitle: Working with Table-Column Conditional Blocks
description: "Use table-column conditional blocks within single document table to represent the same data depending on a condition using Java."
type: docs
weight: 25
url: /java/working-with-table-column-conditional-blocks/
---

A table-column conditional block represents a conditional block, which body occupies a rectangular area of cells of a single document table. The body of such a block (as well as the body of its every template option) starts at the beginning of the top-left cell of a corresponding area and ends at the end of its bottom-right cell. Typically, this area consists of one or several table columns as follows.

**Note –** Table cells occupied by different template options in the following templates are highlighted with different colors.

| **...** | **<<if ... -horz>> ...** | **<<elseif ...>> ...** | **...** | **<<else>> ...** | **...** | **...**         | **...** |
| ------- | ------------------------ | ---------------------- | ------- | ---------------- | ------- | --------------- | ------- |
| **...** | **...**                  | **...**                | **...** | **...**          | **...** | **...**         | **...** |
| **...** | **...**                  | **...**                | **...** | **...**          | **...** | **... <</if>>** | **...** |

**Note –** The horz switch instructs the engine to affect table columns rather than rows.

However, unlike table-row conditional blocks able to capture only whole rows, table-column conditional blocks can occupy columns even partially as shown in the following template snippet.

| **...** | **...**                  | **...**                | **...** | **...**          | **...** | **...**         | **...** |
| ------- | ------------------------ | ---------------------- | ------- | ---------------- | ------- | --------------- | ------- |
| **...** | **<<if ... -horz>> ...** | **<<elseif ...>> ...** | **...** | **<<else>> ...** | **...** | **...**         | **...** |
| **...** | **...**                  | **...**                | **...** | **...**          | **...** | **...**         | **...** |
| **...** | **...**                  | **...**                | **...** | **...**          | **...** | **... <</if>>** | **...** |
| **...** | **...**                  | **...**                | **...** | **...**          | **...** | **...**         | **...** |

Let us consider typical use cases for table-column conditional blocks at first defining `showRepresentatives`, a Boolean value, and `person` and `persons`, an instance and an enumeration of instances of the `Person` class respectively, where the `Person` class is defined as follows.

public class Person

{{< highlight csharp >}}
{
	public String getName() { ... }
	public int getAge() { ... }
	public String getRepresentative() { ... }
	...
}
{{< /highlight >}}

The most typical scenario for table-column conditional blocks is showing or hiding a table column depending on a condition. You can do it using a template as follows.

| **Name**                   | **Age**                   | **<<if [showRepresentatives] -horz>>Representative** |
| -------------------------- | ------------------------- | ---------------------------------------------------- |
| **<<[person.getName()]>>** | **<<[person.getAge()]>>** | **<<[person.getRepresentative()]>><</if>>**          |

When `showRepresentatives` is set to `true`, the engine produces a report as follows.

| **Name**       | **Age** | **Representative**    |
| -------------- | ------- | --------------------- |
| **Evan Edger** | **47**  | **Terrence Randolph** |

When `showRepresentatives` is set to `false`, the engine produces a report as follows.

| **Name**       | **Age** |
| -------------- | ------- |
| **Evan Edger** | **47**  |

For a table being built using a table-row data band, you can also show or hide a table column depending on a condition like in the following template.

| **Name**                                        | **Age**              | **<<if [showRepresentatives] -horz>>Representative<</if>>**  |
| ----------------------------------------------- | -------------------- | ------------------------------------------------------------ |
| **<<foreach [p in persons]>><<[p.getName()]>>** | **<<[p.getAge()]>>** | **<<if [showRepresentatives] -horz>><<[p.getRepresentative()]>><</if>><</foreach>>** |

**Note –** Table-row and table-column regions cannot cross, that is why two table-column conditional blocks with the same condition are required in this case.

When `showRepresentatives` is set to `true`, the engine produces a report as follows.

| **Name**        | **Age** | **Representative**    |
| --------------- | ------- | --------------------- |
| **Evan Edger**  | **47**  | **Terrence Randolph** |
| **Kate Abrams** | **35**  |                       |

When `showRepresentatives` is set to `false`, the engine produces a report as follows.

| **Name**        | **Age** |
| --------------- | ------- |
| **Evan Edger**  | **47**  |
| **Kate Abrams** | **35**  |

Table-column conditional blocks can also be used to provide different views for a table column depending on a condition. You can use a template as follows to achieve this.

| **Name**           | **<<if [person.getRepresentative() == “”] -horz>><<[person.getName()]>>** | **<<else>><<[person.getName()]>>** |
| ------------------ | ------------------------------------------------------------ | ---------------------------------- |
| **Representative** | **<<[person.getRepresentative()]>><</if>>**                  |                                    |

When a representative is present for a person, the engine produces a report as follows.

| **Name**           | **Evan Edger**        |
| ------------------ | --------------------- |
| **Representative** | **Terrence Randolph** |

When a representative is not specified for a person, the engine produces a report as follows.

| **Name**           | **Kate Abrams** |
| ------------------ | --------------- |
| **Representative** |                 |

You can use a similar approach to provide different views for columns of a table being built using a table-column data band. A template for this may look as follows.

| **Name**           | **<<foreach [p in persons] -horz>><<if [p.getRepresentative() == “”] -horz>><<[p.getName()]>>** | **<<else>><<[p.getName()]>>** |
| ------------------ | ------------------------------------------------------------ | ----------------------------- |
| **Representative** | **<<[p.getRepresentative()]>><</if>><</foreach>>**           |                               |

In this case, the engine produces a report as follows.

| **Name**           | **Evan Edger**        | **Kate Abrams** |
| ------------------ | --------------------- | --------------- |
| **Representative** | **Terrence Randolph** |                 |

**Note –** You can use common conditional blocks within table-column data bands as well.

In addition, table-column conditional blocks can contain table-column data bands. This is useful, for example, for providing alternate content for an empty table-column data band as shown in the following template.

| **Name**           | **<<if [!persons.any()] -horz>>No data**           | **<<else>><<foreach [p in persons] -horz>><<[p.getName()]>>** |
| ------------------ | -------------------------------------------------- | ------------------------------------------------------------ |
| **Representative** | **<<[p.getRepresentative()]>><</foreach>><</if>>** |                                                              |

When the enumeration of persons is not empty, the engine produces a report as follows.

| **Name**           | **Evan Edger**        | **Kate Abrams** |
| ------------------ | --------------------- | --------------- |
| **Representative** | **Terrence Randolph** |                 |

When there is no person at all, the engine produces a report as follows.

| **Name**           | **No data** |
| ------------------ | ----------- |
| **Representative** |             |

**Note –** Table-column conditional blocks can themselves be nested to table-row data bands and conditional blocks, but not conversely: Nesting of table-row data bands and conditional blocks into table-column conditional blocks is forbidden.