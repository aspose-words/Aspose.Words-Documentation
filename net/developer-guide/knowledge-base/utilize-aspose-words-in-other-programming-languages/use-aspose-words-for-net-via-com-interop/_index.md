---
title: Use Aspose.Words for .NET via COM Interop
type: docs
weight: 20
url: /net/use-aspose-words-for-net-via-com-interop/
---

{{% alert color="primary" %}} 

The information in this topic applies to scenarios where you want to use Aspose.Words for .NET via COM Interop in any of the following programming languages: 

- ASP
- Delphi
- JScript
- Perl
- PHP
- PowerBuilder
- Python
- VBScript
- Visual Basic

{{% /alert %}} 

## Working with COM Interop

Aspose.Words for .NET executes under the control of the .NET Framework and this is called managed code. Code written in all of the above languages runs outside the .NET Framework and it is called unmanaged code. Interaction between unmanaged code and Aspose.Words occurs via the .NET facility called COM Interop.

Aspose.Words objects are .NET objects, but when used via COM Interop, they appear as COM objects in your programming language. Therefore, it is best to make sure you know how to create and use COM objects in your programming language, before you start using Aspose.Words.

Here are the topics that you will eventually need to master: 

- Using COM objects in your programming language. See your programming language documentation and the language-specific topics further in this documentation.
- Working with COM objects exposed by .NET COM Interop. See [Interoperating With Unmanaged Code](http://msdn.microsoft.com/en-us/library/sd10k43k.aspx) and [Exposing .NET Framework Components to COM](http://msdn.microsoft.com/en-us/library/zsfww439%28v=vs.110%29.aspx) in MSDN.
- Aspose.Words document object model. See Aspose.Words [Developer Guide](/words/net/developer-guide/) and [API Reference](https://apireference.aspose.com/words/net).

### Register Aspose.Words for .NET with COM Interop

After installation, you need to register Aspose.Words for COM Interop using the regasm.exe utility.

regasm.exe is a tool included in .NET Framework SDK. All the .NET Framework SDK tools are located in the *%windir%\Microsoft .NET\Framework&#92;&lt;FrameworkVersion&gt;\ directory, for example *C:\Windows\Microsoft .NET\Framework\v2.0.50727* 

If you use Visual Studio, then the easiest way to launch regasm is to:

1. On the **Start** menu, select **Programs**, then **Microsoft Visual Studio 2010** and finally **Visual Studio Tools**.
1. Right-click **Visual Studio Command Prompt** and select **Run as Administrator**.
   This will launch the command prompt with all the necessary environment variables set.
1. Type: regasm &lt;installdir&gt;\bin\net2.0\Aspose.Words.dll /codebase
   where &lt;installdir&gt; is the directory where you installed Aspose.Words, typically **C:\Program Files (x86)\Aspose\Aspose.Words for .NET**. 

#### ProgIDs

ProgID stands for “programmatic identifier”, it is a name of a COM class that you need to use in order to create an object. 

Currently, Aspose.Words defines four publicly creatable COM objects. Their ProgIDs are: 

- [ComHelper](https://apireference.aspose.com/words/net/aspose.words/comhelper)
- [Document](https://apireference.aspose.com/words/net/aspose.words/document)
- [DocumentBuilder](https://apireference.aspose.com/words/net/aspose.words/documentbuilder)
- [License](https://apireference.aspose.com/words/net/aspose.words/license)

The ProgIDs consist of the library name ("Aspose.Words") and the class name. 

#### Type Library

During installation, the Aspose.Words.tlb (COM type library) is copied to your computer to:

- For .NET Framework 2.0, 3.0, 3.5 and 4.0 to **&lt;installdir&gt;\bin\net2.0**

If your programming language (for example Visual Basic or Delphi) allows you to reference a COM type library, then add a reference to **Aspose.Words.tlb** and you will be able to see all Aspose.Words classes, methods, properties and enumerations in your Object Browser. 

#### Creating COM Objects

The creation of a .NET object is similar to creation of a normal COM object:

**VBScript:**
{{< highlight csharp >}}
'Tested with vbscript engine version 5.8.16384

Dim helper
Set helper = CreateObject("Aspose.Words.ComHelper")
{{< /highlight >}}

Once created, you are able to access the object’s methods and properties, as if it was a COM object:

**VBScript:**
{{< highlight csharp >}}
'Tested with vbscript engine version 5.8.16384

'Get vbscript engine version
Call WScript.Echo ( _ 
        Join(Array( _ 
            ScriptEngine, ScriptEngineMajorVersion, ScriptEngineMinorVersion, ScriptEngineBuildVersion _ 
        ), ".") _ 
    )

'Set license
Dim lic
Set lic = CreateObject("Aspose.Words.License")
lic.SetLicense("Aspose.Words.NET.lic")

Dim helper
Set helper = CreateObject("Aspose.Words.ComHelper")

'Open document
Dim doc
Set doc = helper.Open("in.docx")

'Save to PDF - first overload
doc.Save "out.pdf"

'Save to PDF - second overload
Dim saveFormatPdf : saveFormatPdf = 40
Dim filePath : filePath = "out2.pdf"
doc.Save_2 filePath, saveFormatPdf

'Save to PDF - third overload
Dim opt
Set opt = CreateObject("Aspose.Words.Saving.PdfSaveOptions")
opt.SaveFormat = 40

doc.Save_3 "out3.pdf", (opt)

'Save to stream - fourth overload
Dim stream 
Set stream = CreateObject("System.IO.MemoryStream") 

doc.Save_4 (stream) , 40

Wscript.Echo "Stream length = " & stream.Length

MsgBox "End"
{{< /highlight >}}

Some methods have overloads and they will be exposed by COM Interop with a numeric suffix added to them, except for the very first method that stays unchanged. For example, Document.Save method overloads become Document.Save, Document.Save_2, Document.Save_3, and so on. 

For more information, see the language-specific articles further in this documentation. 

#### Creating a Wrapper Assembly

If you need to use many of the Aspose.Words classes, methods and properties, consider creating a wrapper assembly (using C# or any other .NET programming language), that will help to avoid using Aspose.Words directly from unmanaged code.

A good approach is to develop a .NET assembly that references Aspose.Words and does all the work with it, and only exposes the minimal set of classes and methods to unmanaged code. Your application then should work just with your wrapper library. 

Reducing the number of classes and methods that you need to invoke via COM Interop could simplify your project, because using .NET classes via COM Interop often requires advanced skills. 
