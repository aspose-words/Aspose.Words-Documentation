---
title: ASP, VBScript   Aspose.Words for .NET
type: docs
weight: 30
url: /net/asp-vbscript-aspose-words-for-net/
---

#### **Prerequisites {{% alert color="primary" %}} See Using Aspose.Words for .NET via COM Interop. {{% /alert %}}**
#### **Hello World! This is a simple ASP application that gathers user’s first name and last name from an HTML page and generates a DOC documents with a greeting, then sends the document to the client browser. 
VBScript 
{{< highlight csharp >}}
<%@ LANGUAGE = VBScript %> <% Option Explicit %> <html> <head> <title>Aspose.Words classical ASP sample</title> </head> <body> <h3>Aspose.Words classical ASP sample</h3> <form name=Form1 method=Post action="sample.asp"> <p>Please enter your name below (both first and last):<p> <p>First name: <input type=Text name=fname></p> <p>Last name: <input type=Text name=lname></p> <input type=Submit value="Generate document"> </form> <% If Request.form("fname") <> "" AND Request.form("lname") <> "" Then 'Create a document Dim Doc Set Doc = CreateObject("Aspose.Words.Document") 'Create a DocumentBuilder Dim Builder Set Builder = CreateObject("Aspose.Words.DocumentBuilder") Builder.Document = Doc Builder.Font.Size = 48 'ParagraphAlignment.Center = 1 Builder.ParagraphFormat.Alignment = 1 Builder.Writeln "Hello, " & Request.form("fname") & " " & Request.Form("lname") & "!" 'Create a .NET memory stream to save the document to. Dim stream Set stream = CreateObject("System.IO.MemoryStream") 'Save the document to the stream. 'We use an overloaded version of the Save method: Document.Save(object, SaveFormat) 'SaveFormat.Doc = 1 doc.Save_4 stream, 1 Response.Clear 'Specify the document type. Response.ContentType = "application/msword" 'Other options: 'Response.ContentType = "text/plain" 'Response.ContentType = "text/html" 'Specify how the document is sent to the browser. Response.AddHeader "content-disposition","attachment; filename=MyDocument.doc" 'Another option could be: 'Response.AddHeader "content-disposition","inline; filename=MyDocument.doc"; 'Get data bytes from the stream and send it to the response. Dim bytes bytes = stream.ToArray() Response.BinaryWrite(bytes) Response.End End If %> </body> </html>**
{{< highlight >}}
