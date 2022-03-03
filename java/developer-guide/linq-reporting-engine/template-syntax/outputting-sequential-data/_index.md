---
title: Outputting Sequential Data in Java
second_title: Aspose.Words for Java
articleTitle: Outputting Sequential Data
linktitle: Outputting Sequential Data
description: "Output a sequence of elements with the same type when building a report in Java."
type: docs
weight: 30
url: /java/outputting-sequential-data/
---

You can output a sequence of elements of the same type to your report using a *data band*. A data band has a body that represents a template for a single element of such a sequence. While building a report, sequence elements are enumerated, and the following procedure takes place for each of the elements:

1. The data band body is duplicated and appended to the report.
1. The appended data band body is populated with the element’s data.

**Note –** A data band body can contain nested data bands.

A data band body is defined between the corresponding opening and closing `foreach` tags within a template as follows.

{{< highlight csharp >}}
<<foreach ...>>
data_band_body
<</foreach>>
{{< /highlight >}}

You can reference an element of the corresponding sequence in template expressions within a data band body using an iteration variable. At runtime, an iteration variable represents a sequence element for which an iteration is currently being performed. You can declare an iteration variable within the corresponding opening foreach tag.

An opening `foreach` tag defines a `foreach` statement enclosed by brackets. The following table describes elements of this statement.

|Element|Optional?|Remarks|
| :- | :- | :- |
|**Iteration Variable Type**|Yes|You can specify the type of an iteration variable explicitly. This type must be known by the engine (see "Setting up Known External Types" for more information).<br>If you do not specify the type explicitly, it is determined implicitly by the engine depending on the type of the corresponding sequence.|
|**Iteration Variable Name**|Yes|You can specify the name of an iteration variable to use it while accessing the variable’s members. The name must be unique within the scope of the corresponding `foreach` tag.<br>If you do not specify the name, you can access the variable's members using the contextual object member access syntax (see "Using Contextual Object Member Access" for more information).|
|**"in" Keyword**|No| |
|**Sequence Expression**|No|A sequence expression must return an [Iterable](https://docs.oracle.com/javase/7/docs/api/java/lang/Iterable.html) implementor.|
The complete syntax of a `foreach` tag (including optional elements) is as follows.

{{< highlight csharp >}}
<<foreach [variable_type variable_name in sequence_expression]>>
data_band_body
<</foreach>>
{{< /highlight >}}

**This section includes the following topics:** 

- [Working with Common Data Bands](/words/java/working-with-common-data-bands/)
- [Working with Table-Row Data Bands](/words/java/working-with-table-row-data-bands/)
- [Using Extension Methods of Iteration Variables](/words/java/using-extension-methods-of-iteration-variables/)
- [Using Charts to Represent Sequential Data](/words/java/using-charts-to-represent-sequential-data/)
- [Forcing Movement to Next Item within Data Band](/words/java/forcing-movement-to-next-item-within-data-band/)
