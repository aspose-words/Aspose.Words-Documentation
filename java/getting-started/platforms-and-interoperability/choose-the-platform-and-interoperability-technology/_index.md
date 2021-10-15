---
title: Choose the Platform and Interoperability Technology
type: docs
weight: 10
url: /java/choose-the-platform-and-interoperability-technology/
---

{{% alert color="primary" %}} 

Aspose.Words is a class library that allows your applications to perform a great range of document processing tasks. Aspose.Words is available as two distinct products Aspose.Words for .NET and Aspose.Words for Java. It can be said that Aspose.Words “natively” supports:

- The .NET Framework and all programming languages targeting the .NET platform, such as C# or VB.NET. 
- The Java platform and the Java programming language. 

But it is also possible to use Aspose.Words from multiple programming languages, including: ASP, C++, ColdFusion, Delphi, JavaScript, Perl, PHP, PowerBuilder, Python, VBScript etc. 

This section contains articles and examples that show how to use Aspose.Words in different programming languages and covers the following topics: 

- How to choose whether to use Aspose.Words for .NET or Aspose.Words for Java. 
- How to create objects, call methods, access properties of the Aspose.Words objects. 
- How to generate a report using Aspose.Words mail merge. 
- How to convert a document into a different format, use enumerated values. 

If you follow the principles outlined in this section, you will be able to employ numerous of the features of Aspose.Words in your projects. 

There are two versions of the Aspose.Words class library: 

- Aspose.Words for .NET to use with any programming language targeting the .NET platform. 
- Aspose.Words for Java to use with the Java programming language. 

Using Aspose.Words from any other programming language requires the use of some *interoperability technology* . The interoperability technology must allow your programming language to call into a class library written for .NET or Java. 

This is a list of the suggested interoperability technologies to use for a variety of programming languages: 

{{% /alert %}} 

|Programming Language |Aspose.Words to Use |Interoperability Technology |
| :- | :- | :- |
|ASP |.NET |COM Interop |
|ColdFusion |.NET |ColdFusion .NET extension |
| |Java |ColdFusion |
|Delphi |.NET |COM Interop |
|JScript |.NET |COM Interop |
|Perl |.NET |COM Interop |
| |Java |Inline::Java |
|PHP |.NET |COM Interop |
| |Java |Java Bridge |
|PowerBuilder |.NET |COM Interop |
|Python |.NET |COM Interop |
| |Java |JPype |
|VBScript |.NET |COM Interop |
|Visual Basic |.NET |COM Interop |
From the above table you can see that for some programming languages it is possible to use either Aspose.Words for .NET or Aspose.Words for Java. The following table can help you choose:

|Scenario |Comments |
| :- | :- |
|Aspose.Words for .NET via COM Interop |<p>Consider the following:</p><p>- Available on Microsoft Windows platforms only.</p><p>- Cannot call static methods.</p><p>- Hard to call overloaded methods (suffixes added to names).</p><p>- Hard to use enumerated values (need to look up and use a constant value).</p><p>- Cannot invoke constructors with parameters.</p>|
|Aspose.Words for Java via Java Bridge or Inline::Java |<p>Consider the following:</p><p>- Available on any platform where Java is available.</p><p>- Can call static methods, constructors with parameters, overloaded methods and use enumerated values.</p>|

