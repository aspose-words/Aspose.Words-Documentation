---
title: Using Operators in Java
articleTitle: Using Operators
linktitle: Using Operators
description: "Use predefined operators in template expressions when building a report Java."
type: docs
weight: 50
url: /java/using-operators/
---

The following table contains predefined operators that LINQ Reporting Engine enables you to use in template expressions.

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
			<td>*  /  %  +  -  <<  >>  <  >  <=  >=  ==  !=  &amp;  ^  |  &amp;&amp;  ||  ??</td>
		</tr>
		<tr>
			<td>Ternary</td>
			<td>?:</td>
		</tr>
	</tbody>
</table>

The engine follows operator precedence, associativity, and overload resolution rules declared at [C# Language Specification 5.0](https://www.microsoft.com/en-us/download/details.aspx?id=7029) while evaluating template expressions. This behavior normally conforms to Java. But be aware of the following limitations and differences in the behavior comparing with the specification and Java behavior:

- String equality and inequality check operators test string contents, rather than string references.
- Whereas the object initializer syntax is supported (including objects of anonymous types), the collection initializer syntax is not.

Also, the engine enables you to use lifted operators in template expressions. In Java, operands of lifted operators are represented by primitive type class wrappers like `Integer`, `Double`, and others, in contrast to nullable types in C#. That is, for example, given that variables a and b are of the `Integer` type and the value of a is `null`, expression "a + b" is evaluated to `null` by the engine, whereas it throws an exception in Java during runtime.
