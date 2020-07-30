---
title: Working with VBA Macros
type: docs
weight: 400
url: /java/working-with-vba-macros/
---

## **Overview**
Visual Basic for Applications (VBA) for Microsoft Word is a simple but powerful programming language that can be used to extend the functionality. Aspose.Words API provides three classes to get access to the VBA project source code:

- The [VBAProject](https://apireference.aspose.com/java/words/com.aspose.words/vbaproject) class provides access to the VBA project information
- The [VBAModulesCollection](https://apireference.aspose.com/java/words/com.aspose.words/VbaModuleCollection) class returns the collection of VBA project modules
- The [VbaModule](https://apireference.aspose.com/java/words/com.aspose.words/VbaModule) class provides access to the VBA project module
## **Creating a VBA Project**
Aspose.Words API provides the [Dcoument.VbaProject](https://apireference.aspose.com/net/words/aspose.words/document/properties/vbaproject) property to get or set VbaProject in the document. The following code example demonstrates how to create a VBA project and VBA Module along with basic properties e.g. Name and Type. 

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}
## **Read Macros**
The following code example demonstrates how to read VBA Macros from the document.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}
## **Modify Macros**
The following code example demonstrates how to modify VBA Macros from the document using the VbaModule.setSourceCode() property.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}
## **Clone VBA Project**
` `The following code example demonstrates how to clone the VBA Project using the [VbaProject.Clone](https://apireference.aspose.com/net/words/aspose.words/vbaproject/methods/clone) property which creates a copy of the existing project. 

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}
## **Clone VBA Module**
` `The following code example demonstrates how to clone the VBA Module using the [VbaModule.Clone](https://apireference.aspose.com/net/words/aspose.words/vbamodule/methods/clone) property which creates a copy of the existing project. 

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
