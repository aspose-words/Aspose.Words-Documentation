---
title: Using Contextual Object Member Access – Aspose.Words for .NET
articleTitle: Using Contextual Object Member Access
linktitle: Using Contextual Object Member Access
description: "Use contextual object member to access some objects without specifying the objects id in template expressions C#."
type: docs
weight: 120
url: /net/using-contextual-object-member-access/
aliases: [/net/template-syntax/#using-contextual-object-member-access]
---

You can make your templates less cumbersome using the contextual object member access feature. This feature enables you to access members of some objects without specifying the objects' identifiers in template expressions. An object to which the feature can be applied is determined depending on a context as follows:

- Inside a data band body, the object is resolved to the innermost iteration variable.
- Outside a data band body, the object is resolved to a passed data source.

Obviously, inside a data band body, you can not use the feature to access members of an outer iteration variable or a passed data source object. With the exception of this restriction, you can use both contextual and common object member access syntaxes interchangeably depending on your needs and preferences.

Consider the following example. Given that `ds` is a `DataSet` instance containing a `DataTable` object named “Persons” that has fields named “Name” and “Age”, you can use the following template to list the contents of the table.

<table class="ct">
	<tbody>
		<tr>
			<td>No.</td>
			<td>Name</td>
			<td>Age</td>
		</tr>
		<tr>
			<td>&lt;&lt;foreach [p 
    in ds.Persons]>>&lt;&lt;[
  p.numberOf()]>></td>
			<td>&lt;&lt;[p.Name]>></td>
			<td>&lt;&lt;[p.Age]>>&lt;&lt;/foreach>></td>
		</tr>
		<tr>
			<td colspan="3">Count: &lt;&lt;[ds.Persons.count()]>></td>
		</tr>
	</tbody>
</table>

Alternatively, you can use the following template involving the contextual object member access syntax to get the same results.

<table class="iksweb">
	<tbody>
		<tr>
			<td>No.</td>
			<td>Name</td>
			<td>Age</td>
		</tr>
		<tr>
			<td>&lt;&lt;foreach [
    in Persons]>>&lt;&lt;[
  numberOf()]>></td>
			<td>&lt;&lt;[Name]>></td>
			<td>&lt;&lt;[Age]>>&lt;&lt;/foreach>></td>
		</tr>
		<tr>
			<td colspan="3">Count: &lt;&lt;[Persons.count()]>></td>
		</tr>
	</tbody>
</table>