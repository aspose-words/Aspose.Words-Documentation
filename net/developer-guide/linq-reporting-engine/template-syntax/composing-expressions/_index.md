---
title: Composing Expressions in C#
second_title: Aspose.Words for .NET
articleTitle: Composing Expressions
linktitle: Composing Expressions
description: "Compose expressions when building a report using C#. The complexity of expressions in templates is not restricted."
type: docs
weight: 10
url: /net/composing-expressions/
aliases: [/net/template-syntax/#composing-expressions]
---

*Expression* is a central concept of the template syntax. Every tag is bound with an expression that is evaluated during runtime, and its result is used by LINQ Reporting Engine according to the tag's role.

Expressions are composed of operands and operators according to [C# Language Specification 5.0](https://www.microsoft.com/en-us/download/details.aspx?id=7029) with several restrictions. See the following sections for more information.

The complexity of expressions in templates is not restricted in any way. However, to keep your templates less cumbersome and to satisfy [Separation of Concerns](https://en.wikipedia.org/wiki/Separation_of_concerns) and [Single Responsibility](https://en.wikipedia.org/wiki/Single_responsibility_principle) principles, locate any complex logic at the business layer of your application, rather than the templates.

## Using Lexical Tokens

The following table describes lexical tokens that you can use in template expressions and restrictions on these tokens’ usage comparing with C# Language Specification 5.0.

|Token|Restrictions|
| :- | :- |
|**Keyword**|Only the following tokens are reserved as keywords: `true`, `false`, `null`, `new`, and `in`.|
|**Identifier**|- The feature of keyword escaping through the “@” character is not supported.<br>- Unicode character escapes are not permitted in identifiers.|
|**Literal**|None.|
|**Operator**|See “Using Operators.”|

You can use the following identifiers that are not preceded by a member access operator in template expressions:

- The name of a passed data source object
- The name of an iteration variable within its scope (see “Outputting Sequential Data” for more information)
- The name of a common variable after it is declared (see “Using Variables” for more information)
- The name of a lambda function parameter within the scope of the lambda function
- A fully or partially qualified name of a type that is known by the engine (see “Setting up Known External Types” for more information)
- The name of a member of an object that is determined as follows: 
  - Inside a data band body, the object is resolved to the innermost iteration variable.
  - Outside a data band body, the object is resolved to a passed data source.

The feature of the omitting of an object identifier while accessing the object’s members is also known as the contextual object member access. See “Using Contextual Object Member Access” for more information.

## Working with Types

LINQ Reporting Engine enables you to use externally visible types in template expressions. A *visible type* is a public type with outer types (if any) are public as well. You can use a data source object of any visible type to pass it to the engine.

However, you can use the identifier of a visible type in template expressions only if the following additional requirements are met:

- The type is not void.
- The type does not represent an array.
- The type is not an open or closed generic type.

**Note –** Whereas using generic types' identifiers is forbidden in template expressions, you can use identifiers of nullable types in the shorthand "`T?`" form.

Also, the engine enables you to use anonymous types in template expressions. Such types are useful while composing expressions with grouping by multiple keys. See "Appendix A. Enumeration Extension Methods" for the examples.

## Accessing Type Members

LINQ Reporting Engine enables you to access the following public (static and instance) members of accessible types (see “Working with Types” for more information) in template expressions:

- Fields
- Properties
- Indexer getters
- Methods
- Constructors

**Note –** To access a static member of a type in a template expression, the type must be set known for the engine (see “Setting up Known External Types” for more information).

A function type member can be used in a template expression only if the following additional requirements are met:

- The function member returns a value.
- The function member does not have `ref` or `out` parameters.
- The function member does not take generic type arguments.

The engine supports the following features when dealing with function members:

- Overload resolution according to [C# Language Specification 5.0](https://www.microsoft.com/en-us/download/details.aspx?id=7029)
- Using of default parameter values without support of named parameters
- Using of parameters taking a variable number of arguments

In addition to C# Language features, the engine provides the following extra features to simplify type member access:

- Accessing members of an object without specifying the object’s identifier (see “Using Contextual Object Member Access” for more information)
- Accessing missing members of an object (see “Accessing Missing Members of Data Objects” for more information)

## Using Extension Methods

LINQ Reporting Engine enables you to use the following built-in extension methods in template expressions:

- Extension methods mimicking the ones for `IEnumerable<T>` (see "Appendix A. Enumeration Extension Methods" for more information)
- Extension methods for iteration variables (see "Using Extension Methods of Iteration Variables" for more information)

**Note –** Extension methods, other than the built-in ones, can be used only in the form of plain static methods in template expressions.

## Using Operators

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
			<td>*  /  %  +  -  <<  >>  <  >  <=  >=  ==  !=  &amp;  ^  |  &amp;&amp;  ||  ??</td>
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

## Using Lambda Functions

LINQ Reporting Engine enables you to use lambda functions only as arguments of built-in enumeration extension methods in template expressions. See "Appendix A. Enumeration Extension Methods" for more information.

**Note –** Lambda functions declared within template expressions are not interchangeable with delegates. Thus, you can not pass delegates as arguments to built-in enumeration extension methods.

You can use both explicit and implicit lambda function signatures in template expressions. If you do not specify the type of a parameter of a lambda function explicitly, the type is determined implicitly by the engine depending on the type of the corresponding enumeration.

## Working with Traditional Mail Merge Data Sources

LINQ Reporting Engine enables you to use a simplified syntax in template expressions to work with traditional Aspose.Words Mail Merge data source objects. See the following sections for more information.

### Working with DataSet objects

LINQ Reporting Engine enables you to access `DataTable` objects contained within a particular `DataSet` instance by table names using the “.” operator in template expressions. That is, for example, given that `ds` is a `DataSet` instance that contains a `DataTable` named “Persons”, you can access the table using the following syntax.

{{< highlight csharp >}}
  ds.Persons
{{< /highlight >}}

**Note –** Table names are case-insensitive.

### Working with DataTable and DataView Objects

LINQ Reporting Engine enables you to treat `DataTable` and `DataView` objects in template expressions as enumerations of their rows. That is, you can use template expressions evaluated to such objects in `foreach` tags (see "Outputting Sequential Data" for more information).

Also, you can normally apply enumeration extension methods (see "Appendix A. Enumeration Extension Methods" for more information) to `DataTable` and `DataView` objects in template expressions. For example, given that persons are a `DataTable` or `DataView` instance, you can count its rows using the following syntax.

{{< highlight csharp >}}
  persons.Count()
{{< /highlight >}}

### Working with DataRow and DataRowView Objects

LINQ Reporting Engine enables you to access a data associated with a particular `DataRow` or `DataRowView` instance in template expressions using the “.” operator. The following table describes, which identifiers you can use to access different kinds of the data.

|Data Kind|Identifier|Examples of Template Expressions|
| :- | :- | :- |
|**Field Value**|Field name|Given that `r` is a row that has a field named “Name”, you can access the field’s value using the following syntax.<br />{{< highlight csharp >}}r.Name{{< /highlight >}}|
|**Single Parent or Child Row**|Parent (child) table name|Given that r is a row of a `DataTable` that has a parent (child) `DataTable` named “City”, you can access the single parent (child) row of r using the following syntax.<br />{{< highlight csharp >}}r.City{{< /highlight >}}<br />Given that the “City” `DataTable` has a field named “Name”, you can access the field’s value for the single parent (child) row using the following syntax.<br />{{< highlight csharp >}}r.City.Name{{< /highlight >}}|
|**Enumeration of Child or Parent Rows**|Child (parent) table name|Given that r is a row of a `DataTable` that has a child (parent) `DataTable` named “Persons”, you can access the enumeration of the child (parent) rows of `r` using the following syntax.<br />{{< highlight csharp >}}r.Persons{{< /highlight >}}<br />Given that the “Persons” `DataTable` has a field named “Age”, you can count the child (parent) rows that correspond to persons over thirty years old using the following syntax.<br />{{< highlight csharp >}}r.Persons.Count(p => p.Age > 30){{< /highlight >}}|

**Note –** Field and table names are case-insensitive.

To determine parent-child relationships for a particular `DataTable` instance, the engine uses [DataRelation](https://docs.microsoft.com/en-us/dotnet/api/system.data.datarelation?view=net-6.0) objects contained within the corresponding `DataSet` instance. Thus, you can manage these relationships in a common way.

**Note –** Instead of using of table names to access data of child or parent rows, you can also use relation names, which is useful when you deal with multiple relations to the same table.

### Working with IDataReader Implementors

LINQ Reporting Engine enables you to treat `IDataReader` implementors as enumerations of `IDataRecord` implementors in template expressions. That is, you can use `IDataReader` implementors in template expressions in the same way as `DataTable` objects. See "Working with DataTable and DataView Objects" for more information.

However, you can not use `IDataReader` implementors in template expressions in conjunction with enumeration operations that require a caching of enumeration items. Examples of such operations are grouping and sorting. To work around this restriction, use `DataTable` objects instead.

### Working with IDataRecord Implementors

LINQ Reporting Engine enables you to access the field values of a particular `IDataRecord` implementor by field names using the "." operator in template expressions. To use this feature, one of the following conditions must be met:

- The `IDataRecord` implementor represents an iteration variable upon enumerating an `IDataReader` implementor (see "Outputting Sequential Data" for more information).
- The `IDataRecord` implementor does not implement the `IDataReader` interface.

The following example shows, how to use this feature. Given that r is an `IDataRecord` implementor that has a field named "Name", you can access the field’s value using the following syntax.

{{< highlight csharp >}}
  r.Name
{{< /highlight >}}

**Note –** Field names are case-insensitive.
