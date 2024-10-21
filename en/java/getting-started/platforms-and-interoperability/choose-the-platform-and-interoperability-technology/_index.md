---
title: Choose Platform and Technology
second_title: Aspose.Words for Java
articleTitle: Choose the Platform and Interoperability Technology
linktitle: Choose the Platform and Interoperability Technology
description: "Choose the Platform for Aspose.Words."
type: docs
weight: 10
url: /java/choose-the-platform-and-interoperability-technology/
---

Using Aspose.Words from any other programming language requires the use of some *interoperability technology* . The interoperability technology must allow your programming language to call into a class library written for Java. 

This is a list of the suggested interoperability technologies to use for a variety of programming languages: 

| Programming Language | Aspose.Words to Use | Interoperability Technology |
| :- | :- | :- |
| `ASP` | .NET | `COM Interop` |
| `ColdFusion` | .NET | ColdFusion .NET extension |
|  | `Java` | ColdFusion |
| `Delphi` | .NET | `COM Interop` |
| `JScript` | .NET | `COM Interop` |
| `Perl` | .NET | `COM Interop` |
|  | `Java` | `Inline::Java` |
| `PHP` | .NET | `COM Interop` |
|  | `Java` | Java Bridge |
| `PowerBuilder` | .NET | `COM Interop` |
| `Python` | .NET | `COM Interop` |
|  | `Java` | JPype |
| `VBScript` | .NET | `COM Interop` |
| Visual Basic | .NET | `COM Interop` |
From the above table you can see that for some programming languages it is possible to use either Aspose.Words for .NET or Aspose.Words for Java. The following table can help you choose:

| `Scenario` | Comments |
| :- | :- |
| Aspose.Words for .NET via COM Interop | <p>Consider the following:</p><p>- Available on Microsoft Windows platforms only.</p><p>- Cannot call static methods.</p><p>- Hard to call overloaded methods (suffixes added to names).</p><p>- Hard to use enumerated values (need to look up and use a constant value).</p><p>- Cannot invoke constructors with parameters.</p> |
| Aspose.Words for Java via Java Bridge or Inline::Java | <p>Consider the following:</p><p>- Available on any platform where Java is available.</p><p>- Can call static methods, constructors with parameters, overloaded methods and use enumerated values.</p> |