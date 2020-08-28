---
title: Python and Aspose.Words for .NET
type: docs
weight: 90
url: /net/python-and-aspose-words-for-net/
---

#### **Prerequisites**
{{% alert color="primary" %}} 

Install pywin32 extension. See <http://pypi.python.org/pypi/pywin32> for more information.

See [Using Aspose.Words for .NET via COM Interop](/words/net/use-aspose-words-for-net-via-com-interop/) . 

{{% /alert %}} 
#### **Hello World!**
This is a simple application that creates an empty document, inserts some content and saves it as a Microsoft Word .DOC document.

**Python**

{{< highlight csharp >}}
#!c:\python25\python.exe
import win32com.client
doc = win32com.client.Dispatch("Aspose.Words.Document")
builder = win32com.client.Dispatch("Aspose.Words.DocumentBuilder")
builder.Document = doc
builder.Write("Hello world!")
doc.Save("C:\\Temp\\out.doc")
{{< /highlight >}}
#### **Simple Mail Merge**
Aspose.Words provides a reporting generation facility similar to Microsoft Word’s mail merge. Here is a code example to perform a simple mail merge using Aspose.Words.

**Python**

{{< highlight csharp >}}
#!c:\python25\python.exe
import win32com.client
#Create instance of ComHelper class
helper = win32com.client.Dispatch("Aspose.Words.ComHelper")
#Open a template document
doc = helper.Open("C:\\Temp\\in.doc")
#Connect Database
dbfile = "C:\\Temp\\test.mdb"
#Select records from DB
rs = win32com.client.Dispatch("ADODB.Recordset")
rs.Open("SELECT * FROM Users", "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + dbfile)
#Execute mail merge
doc.MailMerge.ExecuteADO(rs);
#Save generated document
doc.Save("C:\\Temp\\out.doc")
#Close RecordSet
rs.Close()
{{< /highlight >}}
#### **Save or Convert a Document**
With Aspose.Words, you can save a document in a variety of formats. For the full list of formats and identifiers see the SaveFormat enumeration.

**Python**

{{< highlight csharp >}}
#Save a document in a variety of formats.
#SaveFormat.Doc = 1, therefore 1 is passed as a parameter to indicate save format.
doc.Save_2("C:\\Temp\\out.doc", 1);
doc.Save_2("C:\\Temp\\out.txt", 2);
doc.Save_2("C:\\Temp\\out.html", 4);
doc.Save_2("C:\\Temp\\out.rtf", 6);
doc.Save_2("C:\\Temp\\out.docx", 8);
{{< /highlight >}}
