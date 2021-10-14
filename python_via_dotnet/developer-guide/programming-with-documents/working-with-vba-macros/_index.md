---
title: Working with VBA Macros
type: docs
weight: 200
url: /python/working-with-vba-macros/
---

## Overview

Visual Basic for Applications (VBA) for Microsoft Word is a simple but powerful programming language that can be used to extend the functionality. Aspose.Words API provides three classes to get access to the VBA project source code:

- The **VBAProject** class provides access to VBA project information
- The **VBAModuleCollection** class returns the collection of VBA project modules
- The **VbaModule** class provides access to the VBA project module
- The **VbaModuleType** enumeration defines the types of a model in a VBA project. The module can be a procedural module, document module, class module, or designer module

## Creating a VBA Project

Aspose.Words API provides the **Dcoument.vba_project** property to get or set **VbaProject** in the document. The following code example demonstrates how to create a VBA project and VBA Module along with basic properties e.g. Name and Type. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Read Macros

The following code example demonstrates how to read VBA Macros from the document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Write or Modify Macros

The following code example demonstrates how to modify VBA Macros using the VbaModule.SourceCode property.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Clone VBA Project

The following code example demonstrates how to clone the VBA Project using the **VbaProject.clone** method which creates a copy of the existing project. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Clone VBA Module

The following code example demonstrates how to clone the VBA Module using the **VbaModule.clone** property which creates a copy of the existing project. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Working with the VBA Project References

Aspose.Words API provides **VbaReferenceCollection** class to work with VBA Project References representing a collection of VBA project references. 
The following code example demonstrates how to remove some references from the collection of references from a VBA project. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}
{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}
