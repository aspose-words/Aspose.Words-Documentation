---
title: Outputting Sequential Data in C#
second_title: Aspose.Words for .NET
articleTitle: Outputting Sequential Data
linktitle: Outputting Sequential Data
description: "Output a sequence of elements with the same type when building a report using C#."
type: docs
weight: 30
url: /net/outputting-sequential-data/
aliases: [/net/template-syntax/#outputting-sequential-data]
---

You can output a sequence of elements of the same type to your report using a data band. A *data band* has a body that represents a template for a single element of such a sequence. While building a report, sequence elements are enumerated, and the following procedure takes place for each of the elements:

1. The data band body is duplicated and appended to the report.
1. The appended data band body is populated with the element’s data.

**Note –** A data band body can contain nested data bands.

A data band body is defined between the corresponding opening and closing `foreach` tags within a template as follows.

{{< highlight csharp >}}
  <<foreach ...>>
  data_band_body
  <</foreach>>
{{< /highlight >}}

You can reference an element of the corresponding sequence in template expressions within a data band body using an iteration variable. At runtime, an *iteration variable* represents a sequence element for which an iteration is currently being performed. You can declare an iteration variable within the corresponding opening `foreach` tag.

An opening `foreach` tag defines a `foreach` statement enclosed by brackets. The following table describes the elements of this statement.

<table class="outputting-sequential-data">
	<tbody>
		<tr>
      <td><strong>Element</strong></td>
      <td><strong>Optional?</strong></td>
      <td><strong>Remarks</strong></td>
		</tr>
    <tr>
			<td>Iteration Variable Type</td>
      <td>Yes</td>
      <td><p>You can specify the type of an iteration variable explicitly. This type must be known by the engine (see “Setting up Known External Types” for more information).</p><p>If you do not specify the type explicitly, it is determined implicitly by the engine depending on the type of the corresponding sequence.</p></td>
		</tr>
    <tr>
			<td>Iteration Variable Name</td>
      <td>Yes</td>
      <td><p>You can specify the name of an iteration variable to use it while accessing the variable’s members. The name must be unique within the scope of the corresponding foreach tag.</p><p>If you do not specify the name, you can access the variable’s members using the contextual object member access syntax (see “Using Contextual Object Member Access” for more information).</p></td>
		</tr>
    <tr>
			<td>“in” Keyword</td>
      <td>No</td>
      <td> </td>
		</tr>
    <tr>
			<td>Sequence Expression</td>
      <td>No</td>
      <td>A sequence expression must return an <a href="https://docs.microsoft.com/en-us/dotnet/api/system.collections.ienumerable?view=net-6.0">IEnumerable implementor</a>.</td>
		</tr>
	</tbody>
</table>

The complete syntax of a `foreach` tag (including optional elements) is as follows.

{{< highlight csharp >}}
<<foreach [variable_type variable_name in sequence_expression]>>
data_band_body
<</foreach>>
{{< /highlight >}}

**This section includes the following topics:** 

- [Working with Common Data Bands](/words/net/working-with-common-data-bands/)
- [Working with Table-Row Data Bands](/words/net/working-with-table-row-data-bands/)
- [Working with Table-Column Data Bands](/words/net/working-with-table-column-data-bands/)
- [Working with Cross (Pivot) Tabless](/words/net/working-with-cross-pivot-tables/)
- [Working With Charts](/words/net/working-with-charts/)
- [Using Extension Methods of Iteration Variables](/words/net/using-extension-methods-of-iteration-variables/)
- [Forcing Movement to Next Item within Data Band](/words/net/forcing-movement-to-next-item-within-data-band/)