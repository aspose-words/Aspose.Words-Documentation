---
title: Load in the Plain Text Format
type: docs
weight: 10
url: /net/load-in-the-plain-text-format/
---

{{% alert color="primary" %}} 

Aspose.Words does not directly support loading text files through the use of the [Document](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.document.html) constructor. This feature is however planned.

For the time being you can load a text file into Aspose.Words by inserting the contents of the text file into a blank document using the [DocumentBuilder](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.documentbuilder.html) object. For more details, see the how-to on how to [Load Plain TXT Files](/pages/createpage.action?spaceKey=wordsnet&title=How+To+Load+Plain+Text+TXT+Files&linkCreation=true&fromPageId=2595970).

Since a text file normally contains only text, it cannot provide any of the complex Word document features that the other formats support during import. Normally the plain text is inserted as is into the document body. However, Aspose.Words is versatile and you can fully customize import based on your requirements. For example, you can use the [Range.Replace](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.range.replace overloads.html) method to replace pre-determined place holders in the text file with different formatting or insert a node at that location.

{{% /alert %}}
