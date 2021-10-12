---
title: Restarting List Numbering Dynamically
type: docs
weight: 110
url: /net/restarting-list-numbering-dynamically/
aliases: [/net/template-syntax/#restarting-list-numbering-dynamically]
---

You can restart list numbering within your documents dynamically using `restartNum` tags. In particular, this feature is useful when working with a nested numbered list within a data band as shown in the following example.

Assume that you have the `Order` and `Service` classes defined in your application as follows.

{{< highlight csharp >}}
  public class Order
  {
    public String ClientName { get { ... } }
    public String ClientAddress { get { ... } }
    public IEnumerable<Service> Services { get { ... } }
    ...
  }

  public class Service
  {
    public String Name { get { ... } }
    ...
  }
{{< /highlight >}}

Given that `orders` is an enumeration of `Order` instances, you could try to use the following template to output information on {several|multiple|a few|many|numerous} orders in one document.

{{< highlight csharp >}}
<<foreach [order in orders]>><<[order.ClientName]>> (<<[order.ClientAddress]>>)

1. <<foreach [service in order.Services]>><<[service.Name]>>

<</foreach>><</foreach>>
{{< /highlight >}}

But then, a result document would look as follows.

{{< highlight text >}}
Jane Doe (445 Mount Eden Road Mount Eden Auckland 1024)

1. Regular Cleaning
2. Oven Cleaning

John Smith (43 Vogel Street Roslyn Palmerston North 4414)

1. Regular Cleaning

2. Oven Cleaning

3. Carpet Cleaning
  {{< /highlight >}}

That is, there would be a single numbered list across all orders, which is not applicable for this scenario. However, you can make list numbering to restart for every order by putting a `restartNum` tag into your template before a corresponding `foreach` tag as follows.

{{< highlight csharp >}}
<<foreach [order in orders]>><<[order.ClientName]>> (<<[order.ClientAddress]>>)

	1. <<restartNum>><<foreach [service in order.Services]>><<[service.Name]>>

<</foreach>><</foreach>>
{{< /highlight >}}

**Note –** When using with a data band, it is required to put a `restartNum` tag before a corresponding a `foreach` tag in the same numbered paragraph.

Then, a result document looks as follows.
{{< highlight text >}}
Jane Doe (445 Mount Eden Road Mount Eden Auckland 1024)**

1. Regular Cleaning
2. Oven Cleaning

John Smith (43 Vogel Street Roslyn Palmerston North 4414)

1. Regular Cleaning
2. Oven Cleaning
3. Carpet Cleaning
{{< /highlight >}}

**Note –** You can use a `restartNum` tag without a data band to dynamically restart list numbering for a containing paragraph, if needed; for example, the tag can be used to restart list numbering for a document inserted dynamically (see “Inserting Documents Dynamically” for more information).
