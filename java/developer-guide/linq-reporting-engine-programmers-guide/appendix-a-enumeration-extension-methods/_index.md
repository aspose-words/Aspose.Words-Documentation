---
title: Appendix A. Enumeration Extension Methods
type: docs
weight: 50
url: /java/appendix-a-enumeration-extension-methods/
---

{{% alert color="primary" %}} 

LINQ Reporting Engine enables you to perform common manipulations on a sequential data through the engine's built-in extension methods for Iterable. These extension methods mimic some extension methods of [IEnumerable&lt;T&gt;](http://msdn.microsoft.com/en-us/library/9eekhta0\(v=vs.110\).aspx) providing the same signatures and behavior features. Thus, you can group, sort, and perform other sequential data manipulations in template expressions in a common way.

The following table describes these built-in extension methods. The following notation conventions are used within the table:

- Selector stands for a lambda function returning a value and taking an enumeration item as its single argument. See “Using Lambda Functions” for more information.
- ComparableSelector stands for Selector returning [Comparable](http://docs.oracle.com/javase/7/docs/api/java/lang/Comparable.html).
- Predicate stands for Selector returning a Boolean value.

Examples in the following table are given using persons and otherPersons, enumerations of instances of the Person class that is defined as follows.

{{< highlight csharp >}}
public class Person
{
    public String getName() { ... }
    public int getAge() { ... }
    public Iterable<Person> getChildren() { ... }
    ...
}
{{< /highlight >}}

|**Extension Method** |**Examples and Notes** |
| :- | :- |
|all(Predicate)|<p>{{< highlight csharp >}}
p> persons.all(p => p.getAge() < 50)</p><p>{{< /highlight >}}</p>|
|any()|<p>{{< highlight csharp >}}
p> persons.any()</p><p>{{< /highlight >}}</p>|
|any(Predicate)|<p>{{< highlight csharp >}}
p> persons.any(p => p.getName() == "John Smith")</p><p>{{< /highlight >}}</p>|
|average(Selector)|<p>{{< highlight csharp >}}
p> persons.average(p => p.getAge())</p><p>{{< /highlight >}}</p><p>The input selector must return a value of any type that has predefined addition and division operators. </p>|
|concat(Iterable)|<p>{{< highlight csharp >}}
p> persons.concat(otherPersons)</p><p>{{< /highlight >}}</p><p>An implicit reference conversion must exist between types of items of concatenated enumerations. </p>|
|contains(Object)|<p>{{< highlight csharp >}}
p> persons.contains(otherPersons.first())</p><p>{{< /highlight >}}</p>|
|count()|<p>{{< highlight csharp >}}
p> persons.count()</p><p>{{< /highlight >}}</p>|
|count(Predicate)|<p>{{< highlight csharp >}}
p> persons.count(p => p.getAge() > 30)</p><p>{{< /highlight >}}</p>|
|distinct()|<p>{{< highlight csharp >}}
p> persons.distinct()</p><p>{{< /highlight >}}</p>|
|first()|<p>{{< highlight csharp >}}
p> persons.first()</p><p>{{< /highlight >}}</p>|
|first(Predicate)|<p>{{< highlight csharp >}}
p> persons.first(p => p.getAge() > 30)</p><p>{{< /highlight >}}</p>|
|firstOrDefault()|<p>{{< highlight csharp >}}
p> persons.firstOrDefault()</p><p>{{< /highlight >}}</p>|
|firstOrDefault(Predicate)|<p>{{< highlight csharp >}}
p> persons.firstOrDefault(p => p.getAge() > 30)</p><p>{{< /highlight >}}</p>|
|groupBy(Selector)|<p>{{< highlight csharp >}}
p> persons.groupBy(p => p.getAge())</p><p>{{< /highlight >}}</p><p>Or </p><p>{{< highlight csharp >}}
p> persons.groupBy(</p><p>    p => new</p><p>    {</p><p>        age = p.getAge(),</p><p>        count = p.getChildren().count()</p><p>    })</p><p>{{< /highlight >}}</p><p>This method returns an enumeration of group objects. Each group has a unique key defined by the input selector and contains items of the source enumeration associated with this key. You can access the key of a group instance using the Key field. You can treat a group itself as an enumeration of items that the group contains. </p>|
|last()|<p>{{< highlight csharp >}}
p> persons.last()</p><p>{{< /highlight >}}</p>|
|last(Predicate)|<p>{{< highlight csharp >}}
p> persons.last(p => p.getAge() > 100)</p><p>{{< /highlight >}}</p>|
|lastOrDefault()|<p>{{< highlight csharp >}}
p> persons.lastOrDefault()</p><p>{{< /highlight >}}</p>|
|lastOrDefault(Predicate)|<p>{{< highlight csharp >}}
p> persons.lastOrDefault(p => p.getAge() > 100)</p><p>{{< /highlight >}}</p>|
|max(ComparableSelector)|<p>{{< highlight csharp >}}
p> persons.max(p => p.getAge())</p><p>{{< /highlight >}}</p>|
|min(ComparableSelector)|<p>{{< highlight csharp >}}
p> persons.min(p => p.getAge())</p><p>{{< /highlight >}}</p>|
|orderBy(ComparableSelector)|<p>{{< highlight csharp >}}
p> persons.orderBy(p => p.getAge())</p><p>{{< /highlight >}}</p><p>Or </p><p>{{< highlight csharp >}}
p> persons.orderBy(p => p.getAge())</p><p>    .thenByDescending(p => p.getName())</p><p>{{< /highlight >}}</p><p>Or </p><p>{{< highlight csharp >}}
p> persons.orderBy(p => p.getAge())</p><p>    .thenByDescending(p => p.getName())</p><p>    .thenBy(p => p.getChildren().count())</p><p>{{< /highlight >}}</p><p>This method returns an enumeration ordered by a single key. To specify additional ordering keys, you can use the following extension methods of an ordered enumeration:</p><p>- thenBy(ComparableSelector)</p><p>- thenByDescending(ComparableSelector)</p>|
|orderByDescending(ComparableSelector)|<p>{{< highlight csharp >}}
p> persons.orderByDescending(p => p.getAge())</p><p>{{< /highlight >}}</p><p>Or </p><p>{{< highlight csharp >}}
p> persons.orderByDescending(p => p.getAge())</p><p>    .thenByDescending(p => p.getName())</p><p>{{< /highlight >}}</p><p>Or </p><p>{{< highlight csharp >}}
p> persons.orderByDescending(p => p.getAge())</p><p>    .thenByDescending(p => p.getName())</p><p>    .thenBy(p => p.getChildren().count())</p><p>{{< /highlight >}}</p><p>See the previous note. </p>|
|single()|<p>{{< highlight csharp >}}
p> persons.single()</p><p>{{< /highlight >}}</p>|
|single(Predicate)|<p>{{< highlight csharp >}}
p> persons.single(</p><p>    p => p.getName() == "John Smith")</p><p>{{< /highlight >}}</p>|
|singleOrDefault()|<p>{{< highlight csharp >}}
p> persons.singleOrDefault()</p><p>{{< /highlight >}}</p>|
|singleOrDefault(Predicate)|<p>{{< highlight csharp >}}
p> persons.singleOrDefault(</p><p>    p => p.getName() == "John Smith")</p><p>{{< /highlight >}}</p>|
|skip(int)|<p>{{< highlight csharp >}}
p> persons.skip(10)</p><p>{{< /highlight >}}</p>|
|skipWhile(Predicate)|<p>{{< highlight csharp >}}
p> persons.skipWhile(p => p.getAge() < 21)</p><p>{{< /highlight >}}</p>|
|sum(Selector)|<p>{{< highlight csharp >}}
p> persons.sum(p => p.getChildren().count())</p><p>{{< /highlight >}}</p><p>The input selector must return a value of any type that has a predefined addition operator. </p>|
|take(int)|<p>{{< highlight csharp >}}
p> persons.take(5)</p><p>{{< /highlight >}}</p>|
|takeWhile(Predicate)|<p>{{< highlight csharp >}}
p> persons.takeWhile(p => p.getAge() < 50)</p><p>{{< /highlight >}}</p>|
|union(Iterable)|<p>{{< highlight csharp >}}
p> persons.union(otherPersons)</p><p>{{< /highlight >}}</p><p>An implicit reference conversion must exist between types of items of united enumerations. </p>|
|where(Predicate)|<p>{{< highlight csharp >}}
p> persons.where(p => p.getAge() > 18)</p><p>{{< /highlight >}}</p>|
{{% /alert %}}
