---
title: Using Contextual Object Member Access
type: docs
weight: 120
url: /java/using-contextual-object-member-access/
---

{{% alert color="primary" %}} 

You can make your templates less cumbersome using the contextual object member access feature. This feature enables you to access members of some objects without specifying the objects' identifiers in template expressions. An object to which the feature can be applied is determined depending on a 
context as follows:

- Inside a data band body, the object is resolved to the innermost iteration variable.
- Outside a data band body, the object is resolved to a passed data source.

Obviously, inside a data band body, you can not use the feature to access members of an outer iteration variable or a passed data source object. With the exception of this restriction, you can use both contextual and common object member access syntaxes interchangeably depending on your needs and preferences.

Consider the following example. Given that ds is a DataSet instance containing a DataTable object named “Persons” that has fields named “Name” and “Age”, you can use the following template to list the contents of the table.

|**No.** |**Name** |**Age** |
| :- | :- | :- |
|<p>{{< highlight csharp >}}</p><p> <<foreach [p</p><p>        in ds.Persons]>><<[</p><p>    p.numberOf()]>></p><p>{{< /highlight >}}</p>|<p>{{< highlight csharp >}}</p><p> <<[p.Name]>></p><p>{{< /highlight >}}</p>|<p>{{< highlight csharp >}}</p><p> <<[p.Age]>><</</p><p>foreach>></p><p>{{< /highlight >}}</p>|
|<p>{{< highlight csharp >}}</p><p> Count: <<[ds.Persons.count()]>></p><p>{{< /highlight >}}</p>| | |
Alternatively, you can use the following template involving the contextual object member access syntax to get the same results.

|**No.** |**Name** |**Age** |
| :- | :- | :- |
|<p>{{< highlight csharp >}}</p><p>  <<foreach [</p><p>        in Persons]>><<[</p><p>    numberOf()]>></p><p>{{< /highlight >}}</p>|<p>{{< highlight csharp >}}</p><p> <<[Name]>> </p><p>{{< /highlight >}}</p>|<p>{{< highlight csharp >}}</p><p> <<[Age]>><</</p><p>foreach>> </p><p>{{< /highlight >}}</p>|
|<p>{{< highlight csharp >}}</p><p> Count: <<[Persons.count()]>> </p><p>{{< /highlight >}}</p>| | |
{{% /alert %}}
