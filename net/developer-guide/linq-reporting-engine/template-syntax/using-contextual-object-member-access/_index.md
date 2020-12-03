---
title: Using Contextual Object Member Access
type: docs
weight: 120
url: /net/using-contextual-object-member-access/
---

You can make your templates less cumbersome using the contextual object member access feature. This feature enables you to access members of some objects without specifying the objects' identifiers in template expressions. An object to which the feature can be applied is determined depending on a context as follows:

- Inside a data band body, the object is resolved to the innermost iteration variable.
- Outside a data band body, the object is resolved to a passed data source.

Obviously, inside a data band body, you can not use the feature to access members of an outer iteration variable or a passed data source object. With the exception of this restriction, you can use both contextual and common object member access syntaxes interchangeably depending on your needs and preferences.

Consider the following example. Given that ds is a DataSet instance containing a DataTable object named “Persons” that has fields named “Name” and “Age”, you can use the following template to list the contents of the table.

|No.|Name|Age|
| :- | :- | :- |
|{{< highlight csharp >}}
 <<foreach [p in ds.Persons]>><<[    p.NumberOf()]>>{{< /highlight >}}|{{< highlight csharp >}}
 <<[p.Name]>>{{< /highlight >}}|{{< highlight csharp >}}
 <<[p.Age]>><</foreach>>{{< /highlight >}}|
|{{< highlight csharp >}}
 Count: <<[ds.Persons.Count()]>>{{< /highlight >}}| | |
Alternatively, you can use the following template involving the contextual object member access syntax to get the same results.

|No.|Name|Age|
| :- | :- | :- |
|{{< highlight csharp >}}
  <<foreach [ in Persons]>><<[    NumberOf()]>>{{< /highlight >}}|{{< highlight csharp >}}
 <<[Name]>> {{< /highlight >}}|{{< highlight csharp >}}
 <<[Age]>><</foreach>> {{< /highlight >}}|
|{{< highlight csharp >}}
 Count: <<[Persons.Count()]>> {{< /highlight >}}| | |