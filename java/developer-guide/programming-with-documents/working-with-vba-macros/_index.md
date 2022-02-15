---
title: Working with VBA Macros – Aspose.Words for Java
articleTitle: Working with VBA Macros
linktitle: Working with VBA Macros
description: "Working with document VBA projects using Aspose.Words for Java."
type: docs
weight: 160
url: /java/working-with-vba-macros/
---

Visual Basic for Applications (VBA) for Microsoft Word is a simple but powerful programming language that can be used to extend the functionality. Aspose.Words API provides three classes to get access to the VBA project source code:

- The [VBAProject](https://apireference.aspose.com/words/java/com.aspose.words/vbaproject) class provides access to the VBA project information
- The [VBAModulesCollection](https://apireference.aspose.com/words/java/com.aspose.words/VbaModuleCollection) class returns the collection of VBA project modules
- The [VbaModule](https://apireference.aspose.com/words/java/com.aspose.words/VbaModule) class provides access to the VBA project module

## Creating a VBA Project

Aspose.Words API provides the [Dcoument.VbaProject](https://apireference.aspose.com/words/java/com.aspose.words/Document#VbaProject) property to get or set VbaProject in the document. The following code example demonstrates how to create a VBA project and VBA Module along with basic properties e.g. Name and Type. 

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Read Macros

The following code example demonstrates how to read VBA Macros from the document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Modify Macros

The following code example demonstrates how to modify VBA Macros from the document using the VbaModule.setSourceCode() property.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Clone VBA Project

` `The following code example demonstrates how to clone the VBA Project using the [VbaProject.Clone](https://apireference.aspose.com/words/java/com.aspose.words/vbaproject#deepClone()) property which creates a copy of the existing project. 

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Clone VBA Module

` `The following code example demonstrates how to clone the VBA Module using the [VbaModule.Clone](https://apireference.aspose.com/words/java/com.aspose.words/vbaproject#deepClone()) property which creates a copy of the existing project. 

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
