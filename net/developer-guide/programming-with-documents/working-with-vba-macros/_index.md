---
title: Working with VBA Macros
type: docs
weight: 200
url: /net/working-with-vba-macros/
---

## Overview

Visual Basic for Applications (VBA) for Microsoft Word is a simple but powerful programming language that can be used to extend the functionality. Aspose.Words API provides three classes to get access to the VBA project source code:

- The [VBAProject](https://apireference.aspose.com/net/words/aspose.words/vbaproject) class provides access to VBA project information
- The [VBAModulesCollection](https://apireference.aspose.com/net/words/aspose.words/vbamodulecollection) class returns the collection of VBA project modules
- The [VbaModule](https://apireference.aspose.com/net/words/aspose.words/vbamodule) class provides access to the VBA project module
- The [VbaModuleType](https://apireference.aspose.com/net/words/aspose.words/vbamoduletype) enumeration defines the types of a model in a VBA project. The module can be a procedural module, document module, class module, or designer module

## Creating a VBA Project

Aspose.Words API provides the [Dcoument.VbaProject](https://apireference.aspose.com/net/words/aspose.words/document/properties/vbaproject) property to get or set VbaProject in the document. The following code example demonstrates how to create a VBA project and VBA Module along with basic properties e.g. Name and Type. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Read Macros

The following code example demonstrates how to read VBA Macros from the document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## Write or Modify Macros

The following code example demonstrates how to modify VBA Macros using the VbaModule.SourceCode property.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## Clone VBA Project

The following code example demonstrates how to clone the VBA Project using the [VbaProject.Clone](https://apireference.aspose.com/net/words/aspose.words/vbaproject/methods/clone) property which creates a copy of the existing project. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## Clone VBA Module

The following code example demonstrates how to clone the VBA Module using the [VbaModule.Clone](https://apireference.aspose.com/net/words/aspose.words/vbamodule/methods/clone) property which creates a copy of the existing project. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## Working with the VBA Project References

Aspose.Words API provides VbaReferenceCollection class to work with VBA Project References representing a collection of VBA project references. 
The following code example demonstrates how to remove some references from the collection of references from a VBA project. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}
{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}
