---
title: Appendix B. Technical FAQ
type: docs
weight: 40
url: /net/appendix-b-technical-faq/
---

{{% alert color="primary" %}} 

This section reveals some technical aspects and implementation details related to LINQ Reporting Engine. This information can be useful for you while making design decisions for your applications. The information is provided in a question-answer form.

{{% /alert %}} 
## **How is the type of an enumeration item implicitly determined by the engine in template expressions?**
If you do not specify the type of an enumeration item in a foreach statement or lambda function signature within your template explicitly, the type is implicitly determined by the engine from the type of the enumeration as follows:

1. If the enumeration represents a DataTable instance, then the item type is DataRow.
1. Otherwise, if the enumeration represents a DataView instance, then the item type is DataRowView.
1. Otherwise, if the enumeration implements IDataReader, then the item type is IDataRecord.
1. Otherwise, if the enumeration represents child rows of a DataRow instance, then the item type is DataRow.
1. Otherwise, if the enumeration implements generic IEnumerable<T>, then the item type is a type argument corresponding to T. Note, that the engine does not support enumerations that implement IEnumerable<T> multiple times using different type arguments.
1. Otherwise, the item type is Object.
## **Does the engine cooperate with LINQ providers?**
The engine does not cooperate with [LINQ providers](http://msdn.microsoft.com/en-us/library/vstudio/bb882640\(v=vs.110\).aspx). To be aware of consequences of this feature, consider the following example. Assume, that you have the City and Person classes defined in your application as follows.

{{< highlight csharp >}}

 public class City

{

    public IList<Person> Persons { get { ... } }

    ...

}

public class Person

{

    public String Name { get { ... } }

    public int Age { get { ... } }

    ...

    }

}

{{< /highlight >}}

Given that city is an instance of the City class, consider the evaluation of the following template expression by the engine.

{{< highlight csharp >}}

 city.Persons.Where(p => p.Age > 30).OrderBy(p => p.Name)

{{< /highlight >}}

If you use an ORM to provide an interaction of your application with an SQL database in conjunction with a LINQ provider for the ORM, then you most likely expect an SQL query like the following one to be performed in the background while evaluating the template expression.

{{< highlight csharp >}}

 SELECT *

    FROM Persons

    WHERE CityId = @CityId AND Age > 30

    ORDER BY Name

{{< /highlight >}}

However, since the engine does not cooperate with LINQ providers, the actual SQL query in this case is as follows.

{{< highlight csharp >}}

 SELECT *

    FROM Persons

    WHERE CityId = @CityId

{{< /highlight >}}

That is, the engine makes an eager call before applying its built-in extension methods. In some cases, this feature can lead to a significant performance overhead. So, if the performance of your application is your primary concern, then consider a preparing of your sequential data outside your templates. That is, pass to the engine a sequential data that is already filtered, ordered, grouped, and so forth.
## **Have I do something special to merge the Aspose.Words assembly with another assembly?**
You can normally use a tool like [ILMerge](http://research.microsoft.com/en-us/people/mbarnett/ilmerge.aspx) to merge the Aspose.Words assembly with another assembly. However, if you use a functionality of LINQ Reporting Engine, add the following attribute to the target assembly.

{{< highlight csharp >}}

 [assembly: InternalsVisibleTo(

    "TargetAssemblyName" +

    ".ReportingDynamics" +

    ", PublicKey=TargetAssemblyPublicKey")]

{{< /highlight >}}

TargetAssemblyName and TargetAssemblyPublicKey stand for the name of your target assembly and its public key (not a public key token) respectively. Despite of the InternalsVisibleTo attribute applied, you can normally use obfuscation routines on your target assembly, if needed. An obfuscation does not harm a functionality of LINQ Reporting Engine.
