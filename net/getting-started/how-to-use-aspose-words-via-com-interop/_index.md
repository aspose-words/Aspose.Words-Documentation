---
title: Aspose.Words for .NET via COM Interop
second_title: Aspose.Words for .NET
articleTitle: How to Use Aspose.Words for .NET via COM Interop
linktitle: How to Use Aspose.Words for .NET via COM Interop
type: docs
description: "Use Aspose.Words for .NET via COM Interop in Python, PHP, VBScript, JScript, and other programming languages."
weight: 130
url: /net/how-to-use-aspose-words-via-com-interop/
---

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

## Work with COM Interop

Aspose.Words for .NET executes under the control of the .NET Framework and this is called managed code. Code written in all of the above languages runs outside the .NET Framework and it is called unmanaged code. Interaction between unmanaged code and Aspose.Words occurs via the .NET facility called COM Interop.

Aspose.Words objects are .NET objects, but when used via COM Interop, they appear as COM objects in your programming language. Therefore, it is best to make sure you know how to create and use COM objects in your programming language, before you start using Aspose.Words.

Here are the topics that you will eventually need to master:

- Using COM objects in your programming language. See your programming language documentation and the language-specific topics further in this documentation.
- Working with COM objects exposed by .NET COM Interop. See [Interoperating With Unmanaged Code](https://learn.microsoft.com/en-us/dotnet/framework/interop/) and [Exposing .NET Framework Components to COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) in MSDN.
- Aspose.Words document object model. See Aspose.Words [Developer Guide](https://docs.aspose.com/words/net/developer-guide/) and [API Reference](https://reference.aspose.com/words/net/).

## Register Aspose.Words for .NET with COM Interop

After [installation Aspose.Words for .NET](https://docs.aspose.com/words/net/installation/), you need to register Aspose.Words for COM Interop using the  `regasm.exe` utility.

`regasm.exe` is a tool included in .NET Framework SDK. All the .NET Framework SDK tools are located in the `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\` directory, for example *C:\Windows\Microsoft .NET\Framework\v4.0.30319*.

To get tlb file run `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` in cmd, where `<installdir>` is the directory where you installed Aspose.Words, typically `%USERPROFILE%\.nuget\packages\aspose.words\`.

## Work with Aspose.Words via COM Interop

### ProgIDs

ProgID stands for “programmatic identifier”, it is a name of a COM class that you need to use in order to create an object.

Currently, Aspose.Words defines four publicly creatable COM objects. Their ProgIDs are:

- ComHelper
- Document
- DocumentBuilder
- License

The ProgIDs consist of the library name ("Aspose.Words") and the class name.

### Type Library

During installation, the Aspose.Words.tlb (COM type library) is copied to your computer to:

- For .NET Framework 4.0 to **<installdir>\lib\net40-client**

If your programming language (for example Visual Basic or Delphi) allows you to reference a COM type library, then add a reference to **Aspose.Words.tlb** and you will be able to see all Aspose.Words classes, methods, properties and enumerations in your Object Browser.

### Creating COM Objects

The creation of a .NET object is similar to creation of a normal COM object:

**VBScript**

```
Dim helper
Set helper = CreateObject("Aspose.Words.ComHelper")
 
```

Once created, you are able to access the object’s methods and properties, as if it was a COM object:

**VBScript**

```
Dim doc
Set doc = helper.Open("C:\my.doc")
 
```

Some methods have overloads and they will be exposed by COM Interop with a numeric suffix added to them, except for the very first method that stays unchanged. For example, Document.Save method overloads become Document.Save, Document.Save_2, Document.Save_3, and so on.

For more information, see the language-specific articles further in this documentation.

### Creating a Wrapper Assembly

If you need to use many of the Aspose.Words classes, methods and properties, consider creating a wrapper assembly (using C# or any other .NET programming language), that will help to avoid using Aspose.Words directly from unmanaged code.

A good approach is to develop a .NET assembly that references Aspose.Words and does all the work with it, and only exposes the minimal set of classes and methods to unmanaged code. Your application then should work just with your wrapper library.

Reducing the number of classes and methods that you need to invoke via COM Interop could simplify your project, because using .NET classes via COM Interop often requires advanced skills.