---
title: Working with VBA Macros in Java
second_title: Aspose.Words for Java
articleTitle: Working with VBA Macros
linktitle: Working with VBA Macros
description: "Working with document VBA projects using Java."
type: docs
weight: 410
url: /java/working-with-vba-macros/
---

Visual Basic for Applications (VBA) for Microsoft Word is a simple but powerful programming language that can be used to extend the functionality. Aspose.Words API provides three classes to get access to the VBA project source code:

- The [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) class provides access to the VBA project information
- The [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) class returns the collection of VBA project modules
- The [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) class provides access to the VBA project module

## Create a VBA Project

Aspose.Words API provides the [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) property to get or set VbaProject in the document.

The following code example demonstrates how to create a VBA project and VBA Module along with basic properties e.g. Name and Type:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Read Macros

Aspose.Words also provides users with the ability to read VBA macros.

The following code example shows how to read VBA Macros from the document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Modify Macros

Using Aspose.Words, users can modify VBA macros.

The following code example shows how to modify VBA Macros using the [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode) property:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Clone VBA Project

With Aspose.Words it is also possible to clone VBA projects.

The following code example demonstrates how to clone the VBA Project using the [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) property which creates a copy of the existing project:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Clone VBA Module

You can also clone VBA modules if needed.

The following code example demonstrates how to clone the VBA Module using the [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) property which creates a copy of the existing project. 

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
