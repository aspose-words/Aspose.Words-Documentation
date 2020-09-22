---
title: How to Replace or Modify Hyperlinks and Replace Fields with Static Text
type: docs
weight: 180
url: /cpp/how-to-replace-or-modify-hyperlinks-and-replace-fields-with-static-text/
---

## **Replace or Modify Hyperlinks**

To find and modify hyperlinks it would be nice to have some sort of Hyperlink object with properties, but in the current version, there is no built-in functionality in Aspose.Words to deal with hyperlink fields.

Hyperlinks in Microsoft Word documents are fields. A field consists of the field code and field result. In the current version of Aspose.Words, there is no single object that represents a field. Aspose.Words represents a field by a set of nodes: FieldStart, one or more Run nodes of the field code, FieldSeparator , one or more **Run** nodes of the field result and FieldEnd.

While Aspose.Words does not have a high-level abstraction to represent fields and hyperlink fields in particular, all of the necessary low-level document elements and their properties are exposed and with a bit of coding you can implement quite sophisticated document manipulation features.

This example shows how to create a simple class that represents a hyperlink in the document. Its constructor accepts a **FieldStart** object that must have FieldType.FieldHyperlink type. After you use the **Hyperlink** class, you can get or set its **Target** , **Name** , and **IsLocal** properties. Now it is easy to change targets and names of the hyperlinks throughout the document. In the example, all of the hyperlinks are changed to “[http://aspose.com](http://aspose.com/)”.

Below example finds all hyperlinks in a Word document and changes their URL and display name.

{{< gist "aspose-words" "38845012a35610163a07b547a36d6563" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
