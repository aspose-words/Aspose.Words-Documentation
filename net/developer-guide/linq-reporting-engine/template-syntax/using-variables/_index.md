---
title: Using Variables in C#
second_title: Aspose.Words for .NET
articleTitle: Using Variables
linktitle: Using Variables
description: "Use variables to calculate an expensive value just once and access it multiple times in template documents using C#."
type: docs
weight: 130
url: /net/using-variables/
aliases: [/net/template-syntax/#using-variables]
---

LINQ Reporting Engine enables you to use variables in template documents. Variables are useful when you need to calculate an expensive value just once and access it multiple times in a template. Also, calculation of complex values such as running (progressive) totals may require variables, see “Appendix C. Typical Templates” to get an example.

You can declare a variable in a template using a var tag as follows.

{{< highlight csharp >}}
<<var [variable_type variable_name = variable_value]>>
{{< /highlight >}}

The following table describes elements of the `var` tag.

|Element|Optional?|Remarks|
| :- | :- | :- |
|**Variable Type**|Yes|You can specify the type of a variable explicitly. This type must be known by the engine (see “Setting up Known External Types” for more information).If you do not specify the type explicitly, it is determined implicitly by the engine from the specified variable value.|
|**Variable Name**|No|For a new variable, its name must be a unique identifier.|
|**Assignment Operator**|No| |
|**Variable Value**|No| |


During runtime, a `var` tag is removed while the value of the corresponding variable is calculated and set appropriately.

After a variable is declared in a template, its value can be accessed using the name of the variable as any other identifier. For example, the following template outputs a string “Hello!”

{{< highlight csharp >}}
<<var [s = “Hello!”]>><<[s]>>
{{< /highlight >}}

You can redefine the value of a variable using a `var` tag against the name of this variable. For example, the following template outputs string “Hello, World!”

{{< highlight csharp >}}
<<var [s = “Hello, ”]>><<[s]>><<var [s = “World!”]>><<[s]>>
{{< /highlight >}}

Using of variables has the following restrictions:

- You can not redefine the type of a variable.
- You can not use the contextual object member access feature against a variable. See “Using Contextual Object Member Access” for more information.
- Using a `var` tag, you can not redefine the value of an iteration variable or a data source.
