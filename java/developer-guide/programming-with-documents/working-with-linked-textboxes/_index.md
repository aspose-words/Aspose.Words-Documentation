---
title: Working with Linked TextBoxes
type: docs
weight: 360
url: /java/working-with-linked-textboxes/
---

## **Overview**
In Aspose.Words, TextBox class is used to specify how a text is displayed inside a shape. It provides a public property named as Parent to get the parent shape for the text box to allow customer to find linked Shape from linked TextBox.
### **Create A Link**
TextBox class provides IsValidLinkTarget method in order to check whether the TextBox can be linked to the target Textbox as shown in the code snippet given below:

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


### **Check TextBox Sequence**
The following code snippets shows how to check if shape.TextBox is a Head, a Tail or a Middle of the sequence:

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}
### **Break a Link**
The following code snippet shows how to break a link for a shape.TextBox:

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
