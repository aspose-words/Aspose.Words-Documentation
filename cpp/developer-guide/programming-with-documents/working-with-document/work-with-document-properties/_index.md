---
title: Work with Document Properties
description: "Aspose.Words for C++ allows storing some useful information about your document, such as API and Version Number or Authorized Date, in built-in or custom document properties."
type: docs
weight: 20
url: /cpp/work-with-document-properties/
---

Document properties allow storing some useful information about your document. These properties can be divided into two groups:

* System or built-in that contain values such as document title, author name, document statistics, and others.
* User-defined or custom, provided as name-value pairs where the user can define both the name and value.

It is useful to know that information about API and Version Number is directly written to output documents. For example, upon converting a document to PDF, Aspose.Words fills in the "Application" field with "Aspose.Words", and the "PDF Producer" field with "Aspose.Words for C++ YY.M.N", where *YY.M.N* is the version of Aspose.Words used for conversion. For more details, see ["Generator or Producer Name Included in Output Documents"](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Note that you **cannot direct** Aspose.Words to change or remove this information from output documents.

{{% /alert %}}

## Access Document Properties

To access document properties in Aspose.Words use:

* [BuiltInDocumentProperties](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.built_in_document_properties/) to obtain built-in properties.

* [CustomDocumentProperties](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.custom_document_properties/) to obtain custom properties.

**BuiltInDocumentProperties** and **CustomDocumentProperties** are collections of [DocumentProperty](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.document_property) objects. These objects can be obtained through the indexer property by name or by index.

**BuiltInDocumentProperties** additionally provides access to document properties through a set of entered properties that return values of the appropriate type. **CustomDocumentProperties** enable you to add or remove document properties from a document.

The [DocumentProperty]https://apireference.aspose.com/words/cpp/class/aspose.words.properties.document_property) class allows you to get the name, value, and type of a document property. [Value](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.document_property#ad71d5c7702950973d4290506ffb0c6f3) returns an object, but there is a set of methods allowing you to get the property value converted to a specific type. After you get to know what type the property is, you can use one of the **DocumentProperty.ToXXX** methods, such as **DocumentProperty.**[ToString](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.document_property#aa72dd172db59c902679905c0b83f9e3e) and **DocumentProperty.**[ToInt](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.document_property#a9c7b459dff09a22f2dddcd687e9fe8fb), to obtain the value of the appropriate type.

The following code example shows how to enumerate all built-in and custom properties in a document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Data/Programming-Documents/Document/Properties.doc).

{{% /alert %}}

In Microsoft Word, you can access document properties using the “File → Properties” menu.

<img src="work-with-document-properties_1.png" alt="work-with-document-properties_1.png" style="width:400px"/>

## Add or Remove Document Properties

You cannot add or remove built-in document properties using Aspose.Words. You can only change or update their values.

To add custom document properties with Aspose.Words, use the [Add](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.custom_document_properties#a2d5b0a04653aaa1ce7d51e78c6b02661) method, passing the new property name and the value of the appropriate type. The method returns the newly created **DocumentProperty** object.

To remove custom properties, use the [Remove](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.document_property_collection#a200ce42d790ea064d14a8977eae33da6) method, passing it the property name to remove, or the [RemoveAt](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.document_property_collection#a6a52162ce259ae840abf318ebc064f36) method to remove the property by index. You can also remove all properties using the [Clear](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.document_property_collection#a7abda7b50ad68520afd35ace74ce7f69) method.

The following code example checks whether a custom property with a given name exists in a document and adds a few more custom document properties:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Data/Programming-Documents/Document/Properties.doc).

{{% /alert %}}

The following code example shows how to remove a custom document property:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## Update Built-In Document Properties

Aspose.Words does not automatically update document properties, as Microsoft Word does with some properties, but provides a method to update some statistical built-in document properties. Call the [UpdateWordCount](https://apireference.aspose.com/words/cpp/class/aspose.words.document#a1828e1ccbb5d7936fd248401b0c8deee) method to recalculate and update the following properties:

* [Characters](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.built_in_document_properties#ab5319940a69f96f39eccfd348a0394f9)
* [CharactersWithSpaces](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.built_in_document_properties#a3c682a63e3dec93c1a5a10b7f8ee4373)
* [Words](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.built_in_document_properties#af22aef4479030762efad9fca8474bbcd)
* [Paragraphs](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.built_in_document_properties#abf2e8427ab4b8df1fecd456b88dd2e19)
* [Lines](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.built_in_document_properties#aec961e8cdd47a13a054d8da6765870da)

## Create a New Custom Property Linked to Content

Aspose.Words provides the [AddLinkToContent](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.custom_document_properties#a7663e73880d141e99ad3a51cd4fce64c) method to create a new custom document property linked to content. This property returns the newly created property object or null if the [LinkSource](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.document_property#a35260f5a310ddffa12404091688e4242) is invalid.

The following code example shows how to configure a link to a custom property:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## Get Document Variables

You can get a collection of document variables using the [Variables](https://apireference.aspose.com/words/cpp/class/aspose.words.document#a84f1b3dd74ce4b7fe77753bbfda5810c) property. Variable names and values are strings.

The following code example shows how to enumerate document variables:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Data/Programming-Documents/Document/Properties.doc).

{{% /alert %}}

## Remove Personal Information from Document

If you want to share a Word document with other people, you may want to remove personal information such as author name and company. To do this use the [RemovePersonalInformation](https://apireference.aspose.com/words/cpp/class/aspose.words.document#a9173c5aa2e4c664da0aa13a10b6957c6) property to set the flag indicating that Microsoft Word will remove all user information from comments, revisions, and document properties upon saving the document.

The following code example shows how to remove personal information:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

Setting this option does not actually remove personal information while processing a document in Aspose.Words and affects only the Microsoft Word behavior.

{{% /alert %}}