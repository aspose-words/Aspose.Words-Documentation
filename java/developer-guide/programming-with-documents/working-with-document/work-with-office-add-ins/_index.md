---
title: Work with Office Add-ins
description: "Aspose.Words for Java provides various classes for working with Office Add-ins. You can add Task Pane via web extension and customize the pane and extension properties."
type: docs
weight: 40
url: /java/work-with-office-add-ins/
aliases: [/java/working-with-web-extensions/]
---

Sometimes you might want to give access to interface controls that run code to modify documents. Aspose.Words API provides the WebExtensions namespace, which grants various classes to customize elements and attributes extending the XML vocabulary for representing Office Add-ins.

WebExtensions namespace can be conditionally divided into:

* Objects for working with the task pane
* Objects for working with web extensions

## Using Task Panes

The task panes are interface surfaces that are displayed on the right side of the window in Microsoft Word. Task pane allows users to access interface controls that can run code to modify documents.

For example, using Aspose.Words API, you can add a task pane add-in and customize its appearance.

## Using Web Extensions

Web Extensions are tools that expand the capabilities of Office applications and interact with Office document content. Web Extensions provide additional functionality to Office clients for improving user experience.

Aspose.Words provides the ability to add Web Extensions of the Task Pane type using the [WebExtension](https://apireference.aspose.com/words/java/com.aspose.words/WebExtension) and [TaskPane](https://apireference.aspose.com/words/java/com.aspose.words/TaskPane) classes, and also allows you to customize the pane and extension properties.

The following code example shows how to create task panes and add to web extension task panes with basic properties: 

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

To see a list of task pane add-ins, use the [WebExtensionTaskPanes](https://apireference.aspose.com/words/java/com.aspose.words/Document#WebExtensionTaskPanes) property.

The following code example shows how to get such a list of add-ins:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

