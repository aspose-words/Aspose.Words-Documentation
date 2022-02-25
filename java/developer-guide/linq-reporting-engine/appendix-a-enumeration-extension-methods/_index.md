---
title: Appendix A. Enumeration Extension Methods in Java
articleTitle: Appendix A. Enumeration Extension Methods
linktitle: Appendix A. Enumeration Extension Methods
description: "Use built-in extension methods to perform common manipulations on a sequential data when building a report in Java."
type: docs
weight: 60
url: /java/appendix-a-enumeration-extension-methods/
---

LINQ Reporting Engine enables you to perform common manipulations on a sequential data through the engine's built-in extension methods for `Iterable`. These extension methods mimic some extension methods of [IEnumerable&lt;T&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ienumerable-1?view=net-6.0) providing the same signatures and behavior features. Thus, you can group, sort, and perform other sequential data manipulations in template expressions in a common way.

The following table describes these built-in extension methods. The following notation conventions are used within the table:

- `Selector` stands for a lambda function returning a value and taking an enumeration item as its single argument. See “Using Lambda Functions” for more information.
- `ComparableSelector` stands for `Selector` returning [Comparable](https://docs.oracle.com/javase/7/docs/api/java/lang/Comparable.html).
- `EnumerationSelector` stands for `Selector` returning `Iterable`.
- `Predicate` stands for `Selector` returning a Boolean value.

Examples in the following table are given using `persons` and `otherPersons`, enumerations of instances of the `Person` class that is defined as follows.

{{< highlight csharp >}}
public class Person
{
	public String getName() { ... }
	public int getAge() { ... }
	public Iterable<Person> getChildren() { ... }
	...
}
{{< /highlight >}}

|Extension Method |Examples and Notes |
| :- | :- |
|all(Predicate)|{{< highlight csharp >}}
 persons.all(p => p.getAge() < 50){{< /highlight >}}|
|any()|{{< highlight csharp >}}
 persons.any(){{< /highlight >}}|
|any(Predicate)|{{< highlight csharp >}}
 persons.any(p => p.getName() == "John Smith"){{< /highlight >}}|
|average(Selector)|{{< highlight csharp >}}
 persons.average(p => p.getAge()){{< /highlight >}}The input selector must return a value of any type that has predefined addition and division operators. |
|concat(Iterable)|{{< highlight csharp >}}
 persons.concat(otherPersons){{< /highlight >}}An implicit reference conversion must exist between types of items of concatenated enumerations. |
|contains(Object)|{{< highlight csharp >}}
 persons.contains(otherPersons.first()){{< /highlight >}}|
|count()|{{< highlight csharp >}}
 persons.count(){{< /highlight >}}|
|count(Predicate)|{{< highlight csharp >}}
 persons.count(p => p.getAge() > 30){{< /highlight >}}|
|distinct()|{{< highlight csharp >}}
 persons.distinct(){{< /highlight >}}|
|first()|{{< highlight csharp >}}
 persons.first(){{< /highlight >}}|
|first(Predicate)|{{< highlight csharp >}}
 persons.first(p => p.getAge() > 30){{< /highlight >}}|
|firstOrDefault()|{{< highlight csharp >}}
 persons.firstOrDefault(){{< /highlight >}}|
|firstOrDefault(Predicate)|{{< highlight csharp >}}
 persons.firstOrDefault(p => p.getAge() > 30){{< /highlight >}}|
|groupBy(Selector)|{{< highlight csharp >}}
 persons.groupBy(p => p.getAge()){{< /highlight >}}Or {{< highlight csharp >}}
 persons.groupBy(p => new { age = p.getAge(), count = p.getChildren().count() }){{< /highlight >}}This method returns an enumeration of group objects. Each group has a unique key defined by the input selector and contains items of the source enumeration associated with this key. You can access the key of a group instance using the Key field. You can treat a group itself as an enumeration of items that the group contains. |
|last()|{{< highlight csharp >}}
 persons.last(){{< /highlight >}}|
|last(Predicate)|{{< highlight csharp >}}
 persons.last(p => p.getAge() > 100){{< /highlight >}}|
|lastOrDefault()|{{< highlight csharp >}}
 persons.lastOrDefault(){{< /highlight >}}|
|lastOrDefault(Predicate)|{{< highlight csharp >}}
 persons.lastOrDefault(p => p.getAge() > 100){{< /highlight >}}|
|max(ComparableSelector)|{{< highlight csharp >}}
 persons.max(p => p.getAge()){{< /highlight >}}|
|min(ComparableSelector)|{{< highlight csharp >}}
 persons.min(p => p.getAge()){{< /highlight >}}|
|orderBy(ComparableSelector)|{{< highlight csharp >}}
 persons.orderBy(p => p.getAge()){{< /highlight >}}Or {{< highlight csharp >}}
 persons.orderBy(p => p.getAge()).thenByDescending(p => p.getName()){{< /highlight >}}Or {{< highlight csharp >}}
 persons.orderBy(p => p.getAge()).thenByDescending(p => p.getName()).thenBy(p => p.getChildren().count()){{< /highlight >}}This method returns an enumeration ordered by a single key. To specify additional ordering keys, you can use the following extension methods of an ordered enumeration:<br>- thenBy(ComparableSelector)<br>- thenByDescending(ComparableSelector)|
|orderByDescending(ComparableSelector)|{{< highlight csharp >}}
 persons.orderByDescending(p => p.getAge()){{< /highlight >}}Or {{< highlight csharp >}}
 persons.orderByDescending(p => p.getAge()).thenByDescending(p => p.getName()){{< /highlight >}}Or {{< highlight csharp >}}
 persons.orderByDescending(p => p.getAge()).thenByDescending(p => p.getName())    .thenBy(p => p.getChildren().count()){{< /highlight >}}See the previous note. |
|select(Selector)|{{< highlight csharp >}}persons.select(p => p.getName()){{< /highlight >}}|
|selectMany(EnumerationSelector)|{{< highlight csharp >}}persons.selectMany(p => p.getChildren()){{< /highlight >}}|
|single()|{{< highlight csharp >}}
 persons.single(){{< /highlight >}}|
|single(Predicate)|{{< highlight csharp >}}
 persons.single(p => p.getName() == "John Smith"){{< /highlight >}}|
|singleOrDefault()|{{< highlight csharp >}}
 persons.singleOrDefault(){{< /highlight >}}|
|singleOrDefault(Predicate)|{{< highlight csharp >}}
 persons.singleOrDefault(p => p.getName() == "John Smith"){{< /highlight >}}|
|skip(int)|{{< highlight csharp >}}
 persons.skip(10){{< /highlight >}}|
|skipWhile(Predicate)|{{< highlight csharp >}}
 persons.skipWhile(p => p.getAge() < 21){{< /highlight >}}|
|sum(Selector)|{{< highlight csharp >}}
 persons.sum(p => p.getChildren().count()){{< /highlight >}}The input selector must return a value of any type that has a predefined addition operator. |
|take(int)|{{< highlight csharp >}}
 persons.take(5){{< /highlight >}}|
|takeWhile(Predicate)|{{< highlight csharp >}}
 persons.takeWhile(p => p.getAge() < 50){{< /highlight >}}|
|union(Iterable)|{{< highlight csharp >}}
 persons.union(otherPersons){{< /highlight >}}An implicit reference conversion must exist between types of items of united enumerations. |
|where(Predicate)|{{< highlight csharp >}}
 persons.where(p => p.getAge() > 18){{< /highlight >}}|
