---
title: Accessing JSON Data in Java
second_title: Aspose.Words for Java
articleTitle: Accessing JSON Data
linktitle: Accessing JSON Data
description: "Learn how to access JSON data while building a report using LINQ in Java."
type: docs
weight: 30
url: /java/accessing-json-data/
timestamp: 2024-01-27-14-07-04
---

To access JSON data while building a report, you can pass a `JsonDataSource` instance to the engine as a data source.

Using of `JsonDataSource` enables you to work with typed values of JSON elements in template documents. For more convenience, the set of simple JSON types is extended as follows:

- Long
- Double
- Boolean
- Date
- String

**Note** – Working with complex JSON types (objects and arrays) is also supported.

While loading data to `JsonDataSource`, the engine performs JSON deserialization and generates corresponding internal objects. So, in template documents, a `JsonDataSource` instance should be treated according to what a root JSON element represents.

If a root JSON element is an object, a `JsonDataSource` instance should be treated as an object as well as shown in the following example.

JSON

{{< highlight json >}}
{
	Name: "John Doe",
	Age: 30,
	Birth: "1989-04-01 4:00:00 pm",
	Child: [ "Ann Doe", "Charles Doe" ]
}
{{< /highlight >}}

Template document

{{< highlight xml >}}
Name: <<[Name]>>, Age: <<[Age]>>, Date of Birth: <<[Birth]:"dd.MM.yyyy">>
Children:
<<foreach [in Child]>><<[Child_Text]>>
<</foreach>>
{{< /highlight >}}

Source code

{{< highlight java >}}
Document doc = ...              // Loading a template document.
JsonDataSource dataSource = ... // Loading JSON.

ReportingEngine engine = new ReportingEngine();
engine.buildReport(doc, dataSource);
{{< /highlight >}}

Result document
{{< highlight text >}}
    Name: John Doe, Age: 30, Date of Birth: 01.04.1989
    Children:
    Ann Doe
    Charles Doe
{{< /highlight >}}

**Note** – To reference a `JSON` object property that is an array of simple-type values, the name of the property (for example, “Child”) should be used in a template document, whereas the same name with the “_Text” suffix (for example, “Child_Text”) should be used to reference the value of an item of this array.

If a root JSON element is an array, a `JsonDataSource` instance should be treated as a sequence of items of this array as shown in the following example.

JSON
{{< highlight json >}}
[
	{
		Name: "John Doe",
		Age: 30,
		Birth: "1989-04-01 4:00:00 pm"
	},
	{
		Name: "Jane Doe",
		Age: 27,
		Birth: "1992-01-31 07:00:00 am"
	},
	{
		Name: "John Smith",
		Age: 51,
		Birth: "1968-03-08 1:00:00 pm"
	}
]
{{< /highlight >}}

Template document

{{< highlight xml >}}
<<foreach [in persons]>>Name: <<[Name]>>, Age: <<[Age]>>, Date of Birth: <<[Birth]:"dd.MM.yyyy">>
<</foreach>>
Average age: <<[persons.average(p => p.Age)]>>
{{< /highlight >}}

Source code

{{< highlight java >}}
Document doc = ...              // Loading a template document.
JsonDataSource dataSource = ... // Loading JSON.

ReportingEngine engine = new ReportingEngine();
engine.buildReport(doc, dataSource, "persons");
{{< /highlight >}}

Result document

{{< highlight text >}}
Name: John Doe, Age: 30, Date of Birth: 01.04.1989
Name: Jane Doe, Age: 27, Date of Birth: 31.01.1992
Name: John Smith, Age: 51, Date of Birth: 08.03.1968

Average age: 36
{{< /highlight >}}

By default, if a root JSON element is an object having only one property that is an object or array in turn, the engine does not generate an internal root object while loading JSON data. So, in template documents, such a `JsonDataSource` instance should be treated according to what this property represents instead. For instance, the following JSON snippets can be used to produce the same results in previous examples of this section respectively.

JSON 1
{{< highlight json >}}
{
	Person:
	{
		Name: "John Doe",
		Age: 30,
		Birth: "1989-04-01 4:00:00 pm",
		Child: [ "Ann Doe", "Charles Doe" ]
	}
}
{{< /highlight >}}

JSON 2

{{< highlight json >}}
{
	Persons:
	[
		{
			Name: "John Doe",
			Age: 30,
			Birth: "1989-04-01 4:00:00 pm"
		},
		{
			Name: "Jane Doe",
			Age: 27,
			Birth: "1992-01-31 07:00:00 am"
		},
		{
			Name: "John Smith",
			Age: 51,
			Birth: "1968-03-08 1:00:00 pm"
		}
	]
}
{{< /highlight >}}

However, if your scenario requires an internal object for a root JSON element to be always generated while loading data to `JsonDataSource`, you can force this as shown in the following code snippet.

{{< highlight json >}}
JsonDataLoadOptions options = new JsonDataLoadOptions();
options.setAlwaysGenerateRootObject(true);
JsonDataSource dataSource = new JsonDataSource(..., options);
{{< /highlight >}}

The following example sums up typical scenarios involving nested JSON objects and arrays.

JSON

{{< highlight json >}}
[
	{
		Name: "John Smith",
		Contract:
		[
			{
				Client:
				{
					Name: "A Company"
				},
				Price: 1200000
			},
			{
				Client:
				{
					Name: "B Ltd."
				},
				Price: 750000
			},
			{
				Client:
				{
					Name: "C & D"
				},
				Price: 350000
			}
		]
	},
	{
		Name: "Tony Anderson",
		Contract:
		[
			{
				Client:
				{
					Name: "E Corp."
				},
				Price: 650000
			},
			{
				Client:
				{
					Name: "F & Partners"
				},
				Price: 550000
			}
		]
	},
	{
		Name: "July James",
		Contract:
		[
			{
				Client:
				{
					Name: "G & Co."
				},
				Price: 350000
			},
			{
				Client:
				{
					Name: "H Group"
				},
				Price: 250000
			},
			{
				Client:
				{
					Name: "I & Sons"
				},
				Price: 100000
			},
			{
				Client:
				{
					Name: "J Ent."
				},
				Price: 100000
			}
		]
	}
]
{{< /highlight >}}

Template document

{{< highlight xml >}}
<<foreach [in managers]>>Manager: <<[Name]>>
Contracts:
<<foreach [in Contract]>>- <<[Client.Name]>> ($<<[Price]>>)
<</foreach>>
<</foreach>>
{{< /highlight >}}

Source code

{{< highlight java >}}
Document doc = ...              // Loading a template document.
JsonDataSource dataSource = ... // Loading JSON.

ReportingEngine engine = new ReportingEngine();
engine.buildReport(doc, dataSource, "managers");
{{< /highlight >}}

Result document

{{< highlight text >}}
Manager: John Smith
Contracts:
– A Company ($1200000)
– B Ltd. ($750000)
– C & D ($350000)

Manager: Tony Anderson
Contracts:
– E Corp. ($650000)
– F & Partners ($550000)

Manager: July James
Contracts:
– G & Co. ($350000)
– H Group ($250000)
– I & Sons ($100000)
– J Ent. ($100000)
{{< /highlight >}}

For recognition of JSON simple values (null, boolean, number, integer, and string), the engine provides two modes: *loose* and *strict*. In the loose mode, types of JSON simple values are determined upon parsing of their string representations. In the strict mode, types of JSON simple values are determined from JSON notation itself. To see the main difference between the modes, consider the following JSON snippet.

{{< highlight json >}}
{ prop: "123" }
{{< /highlight >}}

In the loose mode, the type of `prop` is determined as integer, whereas in the strict mode, it is determined as string.

The loose mode is used by the engine by default to support more typed data representation options. However, in some scenarios, it can be more preferable to disable recognition of numbers and other JSON simple values from strings, for example, when you need to keep leading padding zeros in a string value representing a number. In this case, you can switch to the strict mode as shown in following code snippet.

{{< highlight java >}}
JsonDataLoadOptions options = new JsonDataLoadOptions();
options.setSimpleValueParseMode(JsonSimpleValueParseMode.STRICT);
JsonDataSource dataSource = new JsonDataSource(..., options);
{{< /highlight >}}

**Note** – Parsing of date-time values does not depend on whether the loose or strict mode is used.

Recognition of date-time values is a special case, because [JSON specification](https://www.json.org) does not define a format for their representation. So, by default, while parsing date-time values from strings, the engine tries several formats in the following order:

1. [The ISO-8601 format](https://en.wikipedia.org/wiki/ISO_8601) (for values like "2015-03-02T13:56:04Z")
1. [The Microsoft® JSON date-time format](https://docs.microsoft.com/en-us/previous-versions/dotnet/articles/bb299886\(v=msdn.10\)#from-javascript-literals-to-json) (for values like "/Date(1224043200000)/")
1. All date-time formats supported for the current culture
1. All date-time formats supported for the English USA culture
1. All date-time formats supported for the English New Zealand culture

Although this approach is quite flexible, in some scenarios, you may need to restrict strings to be recognized as date-time values. You can achieve this by specifying one or several exact formats in the context of the current culture to be used while parsing date-time values from strings as shown in the following example.

{{< highlight java >}}
ArrayList<String> formats = new ArrayList();
formats.add("MM/dd/yyyy");

JsonDataLoadOptions options = new JsonDataLoadOptions();
options.setExactDateTimeParseFormats(formats);
JsonDataSource dataSource = new JsonDataSource(..., options);
{{< /highlight >}}

In this example, strings conforming the format "MM/dd/yyyy" are going to be recognized as date-time values while loading JSON, whereas the others are not (but see the following note).

In some scenarios, you may need to disable recognition of date-time values at all, for example, when you deal with strings containing already formatted date-time values, which you do not want to re-format using the engine. You can achieve this by setting the exact date-time parse formats to an empty list (but see the following note).

**Note** – Strings conforming the Microsoft® JSON date-time format (for example, "/Date(1224043200000)/") are always recognized as date-time values regardless of the exact date-time parse formats.

By default, the engine trims leading and trailing whitespaces for JSON string values while loading. However, you can instruct the engine to preserve the whitespaces as follows.

{{< highlight java >}}
JsonDataLoadOptions options = new JsonDataLoadOptions();
options.setPreserveSpaces(true);
JsonDataSource dataSource = new JsonDataSource(..., options);
{{< /highlight >}}
