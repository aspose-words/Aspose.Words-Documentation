---
title: Working with VBA Macros in Python
second_title: Aspose.Words for Python via .NET
articleTitle: Working with VBA Macros
linktitle: Working with VBA Macros
description: "Create, read, write, clone, and manage VBA macros in a document using Python."
type: docs
weight: 410
url: /python-net/working-with-vba-macros/
aliases: [/python/working-with-vba-macros/]
---

Visual Basic for Applications (VBA) for Microsoft Word is a simple but powerful programming language that can be used to extend the functionality. Aspose.Words API provides three classes to get access to the VBA project source code:

- The [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) class provides access to VBA project information
- The [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) class returns the collection of VBA project modules
- The [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) class provides access to the VBA project module
- The [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) enumeration defines the types of a model in a VBA project. The module can be a procedural module, document module, class module, or designer module

## Create a VBA Project

Aspose.Words API provides the [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) property to get or set [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) in the document.

The following code example demonstrates how to create a VBA project and VBA Module along with basic properties e.g. [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) and [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Read Macros

Aspose.Words also provides users with the ability to read VBA macros.

The following code example shows how to read VBA Macros from the document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Write or Modify Macros

Using Aspose.Words, users can modify VBA macros.

The following code example shows how to modify VBA Macros using the [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/) property:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Clone VBA Project

With Aspose.Words it is also possible to clone VBA projects.

The following code example shows how to clone the VBA Project using the [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) property which creates a copy of the existing project:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Clone VBA Module

You can also clone VBA modules if needed.

The following code example shows how to clone the VBA Module using the [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) property which creates a copy of the existing project:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Work with the VBA Project References

Aspose.Words API provides [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) class to work with VBA Project References representing a collection of VBA project references.

The following code example shows how to remove some references from the collection of references from a VBA project:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}