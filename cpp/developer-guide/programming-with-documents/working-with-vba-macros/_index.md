---
title: Working with VBA Macros in C++
second_title: Aspose.Words for C++
articleTitle: Working with VBA Macros
linktitle: Working with VBA Macros
description: "Working with document VBA projects using C++."
type: docs
weight: 410
url: /cpp/working-with-vba-macros/
---

Visual Basic for Applications (VBA) for Microsoft Word is a simple but powerful programming language that can be used to extend the functionality. Aspose.Words API provides three classes to get access to the VBA project source code:

- The [VBAProject](https://reference.aspose.com/words/cpp/class/aspose.words.vba.vba_project) class provides access to VBA project information
- The [VBAModulesCollection](https://reference.aspose.com/words/cpp/class/aspose.words.vba.vba_module_collection) class returns the collection of VBA project modules
- The [VbaModule](https://reference.aspose.com/words/cpp/class/aspose.words.vba.vba_module) class provides access to the VBA project module

## Create a VBA Project

Aspose.Words API provides `Document.VbaProject` property to get or set VbaProject in the document.

The following code example demonstrates how to create a VBA project and VBA Module along with basic properties e.g. Name and Type:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## Read Macros

Aspose.Words also provides users with the ability to read VBA macros.

The following code example shows how to read VBA Macros from the document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## Write or Modify Macros

Using Aspose.Words, users can modify VBA macros.

The following code example shows how to modify VBA Macros using the [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/) property:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## Clone VBA Project

With Aspose.Words it is also possible to clone VBA projects.

The following code example shows how to clone the VBA Project using the [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) property which creates a copy of the existing project:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## Clone VBA Module

You can also clone VBA modules if needed.

The following code example shows how to clone the VBA Module using the [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) property which creates a copy of the existing project:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
