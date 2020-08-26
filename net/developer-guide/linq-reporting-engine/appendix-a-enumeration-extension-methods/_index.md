---
title: Appendix A. Enumeration Extension Methods
type: docs
weight: 30
url: /net/appendix-a-enumeration-extension-methods/
---

{{% alert color="primary" %}} 

LINQ Reporting Engine enables you to perform common manipulations on a sequential data through the engine's built-in extension methods for IEnumerable. These extension methods mimic some extension methods of [IEnumerable&lt;T&gt;](http://msdn.microsoft.com/en-us/library/9eekhta0\(v=vs.110\).aspx) providing the same signatures and behavior features. Thus you can group, sort and perform other sequential data manipulations in template expressions in a familiar way.

The following table describes these built-in extension methods. The following notation conventions are used within the table:

- Selector stands for a lambda function returning a value and taking an enumeration item as its single argument. See “Using Lambda Functions” for more information.
- ComparableSelector stands for Selector returning [IComparable](http://msdn.microsoft.com/en-US/library/system.icomparable\(v=vs.110\).aspx).
- Predicate stands for Selector returning a Boolean value.

Examples in the following table are given using persons and otherPersons, enumerations of instances of the Person class that is defined as follows.

{{< highlight csharp >}}
public class Person
{
    public String Name { get { ... } }
    public int Age { get { ... } }
    public IEnumerable<Person> Children { get { ... } }
    ...
}
{{< /highlight >}}

|**Extension Method** |**Examples and Notes** |
| :- | :- |
|All(Predicate)|<p>{{< highlight csharp >}}
p> persons.All(p => p.Age < 50)</p><p>{{< /highlight >}}</p>|
|Any()|<p>{{< highlight csharp >}}
p> persons.Any()</p><p>{{< /highlight >}}</p>|
|Any(Predicate)|<p>{{< highlight csharp >}}
p> persons.Any(p => p.Name == "John Smith")</p><p>{{< /highlight >}}</p>|
|Average(Selector)|<p>{{< highlight csharp >}}
p> persons.Average(p => p.Age)</p><p>{{< /highlight >}}</p><p>The input selector must return a value of any type that has predefined or user-defined addition and division operators. </p>|
|Concat(IEnumerable)|<p>{{< highlight csharp >}}
p> persons.Concat(otherPersons)</p><p>{{< /highlight >}}</p><p>An implicit reference conversion must exist between types of items of concatenated enumerations. </p>|
|Contains(Object)|<p>{{< highlight csharp >}}
p> persons.Contains(otherPersons.First())</p><p>{{< /highlight >}}</p>|
|Count()|<p>{{< highlight csharp >}}
p> persons.Count()</p><p>{{< /highlight >}}</p>|
|Count(Predicate)|<p>{{< highlight csharp >}}
p> persons.Count(p => p.Age > 30)</p><p>{{< /highlight >}}</p>|
|Distinct()|<p>{{< highlight csharp >}}
p> persons.Distinct()</p><p>{{< /highlight >}}</p>|
|First()|<p>{{< highlight csharp >}}
p> persons.First()</p><p>{{< /highlight >}}</p>|
|First(Predicate)|<p>{{< highlight csharp >}}
p> persons.First(p => p.Age > 30)</p><p>{{< /highlight >}}</p>|
|FirstOrDefault()|<p>{{< highlight csharp >}}
p> persons.FirstOrDefault()</p><p>{{< /highlight >}}</p>|
|FirstOrDefault(Predicate)|<p>{{< highlight csharp >}}
p> persons.FirstOrDefault(p => p.Age > 30)</p><p>{{< /highlight >}}</p>|
|GroupBy(Selector)|<p>{{< highlight csharp >}}
p> persons.GroupBy(p => p.Age)</p><p>{{< /highlight >}}</p><p>Or </p><p>{{< highlight csharp >}}
p> persons.GroupBy(</p><p>    p => new</p><p>    {</p><p>        Age = p.Age,</p><p>        Count = p.Children.Count()</p><p>    })</p><p>{{< /highlight >}}</p><p>This method returns an enumeration of group objects. Each group has a unique key defined by the input selector and contains items of the source enumeration associated with this key. You can access the key of a group instance using the Key property. You can treat a group itself as an enumeration of items that the group contains. </p>|
|Last()|<p>{{< highlight csharp >}}
p> persons.Last()</p><p>{{< /highlight >}}</p>|
|Last(Predicate)|<p>{{< highlight csharp >}}
p> persons.Last(p => p.Age > 100)</p><p>{{< /highlight >}}</p>|
|LastOrDefault()|<p>{{< highlight csharp >}}
p> persons.LastOrDefault()</p><p>{{< /highlight >}}</p>|
|LastOrDefault(Predicate)|<p>{{< highlight csharp >}}
p> persons.LastOrDefault(p => p.Age > 100)</p><p>{{< /highlight >}}</p>|
|Max(ComparableSelector)|<p>{{< highlight csharp >}}
p> persons.Max(p => p.Age)</p><p>{{< /highlight >}}</p>|
|Min(ComparableSelector)|<p>{{< highlight csharp >}}
p> persons.Min(p => p.Age)</p><p>{{< /highlight >}}</p>|
|OrderBy(ComparableSelector)|<p>{{< highlight csharp >}}
p> persons.OrderBy(p => p.Age)</p><p>{{< /highlight >}}</p><p>Or </p><p>{{< highlight csharp >}}
p> persons.OrderBy(p => p.Age)</p><p>    .ThenByDescending(p => p.Name)</p><p>{{< /highlight >}}</p><p>Or </p><p>{{< highlight csharp >}}
p> persons.OrderBy(p => p.Age)</p><p>    .ThenByDescending(p => p.Name)</p><p>    .ThenBy(p => p.Children.Count())</p><p>{{< /highlight >}}</p><p>This method returns an enumeration ordered by a single key. To specify additional ordering keys, you can use the following extension methods of an ordered enumeration:</p><p>- ThenBy(ComparableSelector)</p><p>- ThenByDescending(ComparableSelector)</p>|
|OrderByDescending(ComparableSelector)|<p>{{< highlight csharp >}}
p> persons.OrderByDescending(p => p.Age)</p><p>{{< /highlight >}}</p><p>Or </p><p>{{< highlight csharp >}}
p> persons.OrderByDescending(p => p.Age)</p><p>    .ThenByDescending(p => p.Name)</p><p>{{< /highlight >}}</p><p>Or </p><p>{{< highlight csharp >}}
p> persons.OrderByDescending(p => p.Age)</p><p>    .ThenByDescending(p => p.Name)</p><p>    .ThenBy(p => p.Children.Count())</p><p>{{< /highlight >}}</p><p>See the previous note. </p>|
|Single()|<p>{{< highlight csharp >}}
p> persons.Single()</p><p>{{< /highlight >}}</p>|
|Single(Predicate)|<p>{{< highlight csharp >}}
p> persons.Single(</p><p>    p => p.Name == "John Smith")</p><p>{{< /highlight >}}</p>|
|SingleOrDefault()|<p>{{< highlight csharp >}}
p> persons.SingleOrDefault()</p><p>{{< /highlight >}}</p>|
|SingleOrDefault(Predicate)|<p>{{< highlight csharp >}}
p> persons.SingleOrDefault(</p><p>    p => p.Name == "John Smith")</p><p>{{< /highlight >}}</p>|
|Skip(int)|<p>{{< highlight csharp >}}
p> persons.Skip(10)</p><p>{{< /highlight >}}</p>|
|SkipWhile(Predicate)|<p>{{< highlight csharp >}}
p> persons.SkipWhile(p => p.Age < 21)</p><p>{{< /highlight >}}</p>|
|Sum(Selector)|<p>{{< highlight csharp >}}
p> persons.Sum(p => p.Children.Count())</p><p>{{< /highlight >}}</p><p>The input selector must return a value of any type that has a predefined or user-defined addition operator. </p>|
|Take(int)|<p>{{< highlight csharp >}}
p> persons.Take(5)</p><p>{{< /highlight >}}</p>|
|TakeWhile(Predicate)|<p>{{< highlight csharp >}}
p> persons.TakeWhile(p => p.Age < 50)</p><p>{{< /highlight >}}</p>|
|Union(IEnumerable)|<p>{{< highlight csharp >}}
p> persons.Union(otherPersons)</p><p>{{< /highlight >}}</p><p>An implicit reference conversion must exist between types of items of united enumerations. </p>|
|Where(Predicate)|<p>{{< highlight csharp >}}
p> persons.Where(p => p.Age > 18)</p><p>{{< /highlight >}}</p>|
{{% /alert %}}
