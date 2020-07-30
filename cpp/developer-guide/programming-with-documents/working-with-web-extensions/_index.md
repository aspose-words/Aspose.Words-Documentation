---
title: Working with Web Extensions
type: docs
weight: 310
url: /cpp/working-with-web-extensions/
---

## **Overview**
Aspose.Words API provides the WebExtensions namespace that provides various classes to customize elements and attributes extending the XML vocabulary for representing Office Add-ins.
### **Task Panes in Office Add-ins**
The task panes in Office Add-ins are the interface surfaces which appears on the right side of the window within MS Word. Task pane allows users to access the interface controls which can run code to modify documents.

Aspose.Words API provides: 

- The TaskPane class to work with the task panes
- The TaskPaneCollection class is used to specify a list of persisted task pane objects
- The TaskPaneDockState enumeration defining all available locations of task pane object
### **Web Extensions**
The document class provides a Document.WebExtensionTaskPanes property which returns a list of task pane add-ins.

The following code example demonstrates how to create task panes and add to web extension task panes with basic properties. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cpp" >}}
