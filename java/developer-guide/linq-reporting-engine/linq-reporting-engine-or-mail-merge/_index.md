---
title: LINQ Reporting Engine or Mail Merge
type: docs
description: "What is the difference between Mail Merge and LINQ Reporting Engine in Aspose.Words for Java and which solution is better to choose?"
weight: 40
url: /java/linq-reporting-engine-or-mail-merge/
---

Aspose.Words provides two solutions for automatic filling template documents with data: Mail Merge and LINQ Reporting Engine. But what is the difference between the two and which solution is better to choose? Let us make a closer look at each.

## Mail Merge Features

As well as the most of Aspose.Words features, Mail Merge mimics the Microsoft Word feature with the same name. Therefore, a typical mail merge template consists of common document content, merge fields to be replaced with data, and fields of other types supported by Microsoft Word defining additional logic for building a result document. For example, a mail merge template for order could look as follows.

<img src="mail-merge-features.jpg" alt="mail-merge-features-aspose-words-java" style="width:850px"/>

Key features provided by Mail Merge are as follows:

- Printing and formatting data values
- Basic calculations
- Dynamic insertion of images and documents
- Support of repetitive document regions (data bands)
- Inclusion of document parts depending on conditions
- Built-in support for objects mimicking ADO.NET in Java as data sources (any custom data source can be supported by implementing the [IMailMergeDataSource](https://apireference.aspose.com/words/java/com.aspose.words/IMailMergeDataSource) interface)

Overall, Mail Merge is a good way to go if you are never going to use features beyond the scope of Mail Merge, or you have to deal with Microsoft Word mail merge templates. However, being tied with and limited by Microsoft Word behavior, Mail Merge cannot be easily extended to cover every specific scenario, and this is where LINQ Reporting Engine stands out.

## LINQ Reporting Engine Features

In contrast to Mail Merge, the concept of the LINQ Reporting Engine was born within Aspose.Words and is not tied with any Microsoft Word legacy. The engine uses its own [template syntax](https://docs.aspose.com/words/java/template-syntax/) based on plain-text tags, which can be one of the reasons to switch to its usage if working with Microsoft Word fields is too complex for you or your users creating templates. For example, an alternative LINQ Reporting Engine template for an order looks as follows.

<img src="linq-features.jpg" alt="linq-features-aspose-words-java" style="width:850px"/>

However, the major advantage of the engine is its out-of-the-box support of several features missing in Mail Merge. The following are the key ones:

- Support of many data sources (including of different types)
- Built-in support of more data source types: Custom Java objects, objects mimicking ADO.NET in Java, JSON, XML, CSV
- Using of C#-based expression syntax (extended for ADO.NET and other data sources, and adapted for Java) directly in templates
- Using of LINQ extension methods for data manipulations directly in templates
- Dynamic building of charts
- Built-in support of HTML insertion
- Dynamic merging of table cells
- Controlling of how template syntax errors are reported

The good news is that LINQ Reporting Engine can be further extended to fulfill almost any specific need. So if you face any issue while implementing your specific requirement using the engine, please feel free to contact us at our [Free Support](https://forum.aspose.com/c/words/8) forum, and we will gladly provide you a solution based on existing features of the engine or introduce a new feature to address your need.

## See Also

- [List of fields supported by Microsoft Word](https://support.microsoft.com/en-us/office/list-of-field-codes-in-word-1ad6d91a-55a7-4a8d-b535-cf7888659a51)
