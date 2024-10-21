---
title: Using Operators in C#
second_title: Aspose.Words for .NET
articleTitle: Using Operators
linktitle: Using Operators
description: "Use predefined operators in template expressions when building a report in C#."
type: docs
weight: 50
url: /net/using-operators-linq/
---

The following table contains predefined and user-defined operators that LINQ Reporting Engine enables you to use in template expressions.

<table class="using operators">
	<tbody>
		<tr>
			<td>Primary</td>
			<td>x.y  x?.y  f(x)  a[x]  a?[x]  new</td>
		</tr>
		<tr>
			<td>Unary</td>
			<td>-  !  ~  (T)x</td>
		</tr>
		<tr>
			<td>Binary</td>
			<td>*  /  %  +  -  <<  >>  <  >  <=  >=  ==  !=  &amp;  ^  |  &amp;&amp;  |  |  ??</td>
		</tr>
		<tr>
			<td>Ternary</td>
			<td>?:</td>
		</tr>
	</tbody>
</table>

The engine follows operator precedence, associativity, and overload resolution rules declared at [C# Language Specification 5.0](https://www.microsoft.com/en-us/download/details.aspx?id=7029) while evaluating template expressions. But be aware of the following limitations in the behavior comparing with the specification:

- Implicit user-defined conversions are supported only when specified explicitly.
- The indexing of multi-dimensional arrays is not supported.
- Whereas the object initializer syntax is supported (including objects of anonymous types), the collection initializer syntax is not.

Also, the engine enables you to use lifted operators in template expressions. 