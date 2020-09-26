---
title: Working with VBA Macros
type: docs
weight: 40
url: /cpp/working-with-vba-macros/
---

## **Overview**

Visual Basic for Applications (VBA) for Microsoft Word is a simple but powerful programming language that can be used to extend the functionality. Aspose.Words API provides three classes to get access to the VBA project source code:

- The [VBAProject](https://apireference.aspose.com/cpp/words/class/aspose.words.vba_project/) class provides access to VBA project information
- The [VBAModulesCollection](https://apireference.aspose.com/cpp/words/class/aspose.words.vba_module_collection/) class returns the collection of VBA project modules
- The [VbaModule](https://apireference.aspose.com/cpp/words/class/aspose.words.vba_module/) class provides access to the VBA project module

## **Creating a VBA Project**

Aspose.Words API provides Dcoument.VbaProject property to get or set VbaProject in the document. The following code example demonstrates how to create a VBA project and VBA Module along with basic properties e.g. Name and Type. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## **Read Macros**

The following code example demonstrates how to read VBA Macros from the document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## **Write or Modify Macros**

The following code example demonstrates how to modify VBA Macros using the VbaModule.SourceCode property.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## **Clone VBA Project**

The following code example demonstrates how to clone the VBA Project using the VbaProject.Clone property which creates a copy of the existing project. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## **Clone VBA Module**

The following code example demonstrates how to clone the VBA Module using the VbaModule.Clone property which creates a copy of the existing project.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
