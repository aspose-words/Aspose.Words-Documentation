---
title: Inserting Documents Dynamically
type: docs
weight: 50
url: /net/inserting-documents-dynamically/
---

You can insert contents of outer documents to your reports dynamically using `doc` tags. A `doc` tag denotes a placeholder within a template for a document to be inserted during runtime. 

Syntax of a `doc` tag is defined as follows.

{{< highlight csharp >}}
<<doc [document_expression]>>
{{< /highlight >}}

**Note –** A `doc` tag can be used almost anywhere in a template document except textboxes and charts.

An expression declared within a `doc` tag is used by the engine to load a document to be inserted during runtime. The expression must return a value of one of the following types:

- A byte array containing document data
- A [Stream](http://msdn.microsoft.com/en-us/library/system.io.stream\(v=vs.110\).aspx) instance able to read document data
- An instance of the Document class
- A string containing a document URI, path, or Base64-encoded document data

While building a report, an expression declared within a `doc` tag is evaluated and its result is used to load a document which content replaces the `doc` tag then.

**Note –** If an expression declared within a `doc` tag returns a stream object, then the stream is closed by the engine as soon as a corresponding document is loaded.

By default, while inserting content of an outer document, the engine applies corresponding styles of a template document. This makes content of a result document look more consistent. However, you can keep source formatting for content being inserted by using a `sourceStyles` switch as shown in the following snippet.
{{< highlight csharp >}}
<<doc [document_expression] -sourceStyles>>
{{< /highlight >}}

By default, a document being inserted is not checked against template syntax and is not populated with data. However, you can enable this by using a `build` switch as follows.
{{< highlight csharp >}}
<<doc [document_expression] -build>>
{{< /highlight >}}
When a `build` switch is used, the engine treats a document being inserted as a template that can access the following data available at the scope of a corresponding `doc` tag:

- Data sources
- Variables
- A contextual object (see “Using Contextual Object Member Access” for more information)
- Known external types (see “Setting up Known External Types” for more information)
