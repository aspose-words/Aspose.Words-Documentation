---
title: Work with Web Extensions
type: docs
weight: 40
url: /net/work-with-web-extensions/
---

Aspose.Words API provides the [WebExtensions ](https://apireference.aspose.com/net/words/aspose.words.webextensions/)namespace that provides various classes to customize elements and attributes extending the XML vocabulary for representing Office Add-ins.

## **Task Panes in Office Add-ins**

The task panes in Office Add-ins are the interface surfaces which appears on the right side of the window within MS Word. Task pane allows users to access the interface controls which can run code to modify documents.

Aspose.Words API provides: 

- The [TaskPane ](https://apireference.aspose.com/net/words/aspose.words.webextensions/taskpane)class to work with the task panes
- The [TaskPaneCollection ](https://apireference.aspose.com/net/words/aspose.words.webextensions/taskpanecollection)class is used to specify a list of persisted task pane objects
- The [TaskPaneDockState ](https://apireference.aspose.com/net/words/aspose.words.webextensions/taskpanedockstate)enumeration defining all available locations of task pane object

## **Web Extensions**

The document class provides a [Document.WebExtensionTaskPanes](https://apireference.aspose.com/net/words/aspose.words/document/properties/webextensiontaskpanes) property which returns a list of task pane add-ins.

The following code example demonstrates how to create task panes and add to web extension task panes with basic properties. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}
