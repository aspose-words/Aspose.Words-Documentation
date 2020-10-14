---
title: Changing Page Setup for Whole Document
type: docs
weight: 10
url: /net/changing-page-setup-for-whole-document/
---

{{% alert color="primary" %}} 

You want to change page setup (e.g. paper size, orientation, margins etc) for an existing document. If you are using Microsoft Word Automation, then you probably have code like this:



{{< highlight csharp >}}
ActiveDocument.Range.PageSetup.PaperSize = wdPaperLetter
{{< /highlight >}}

When migrating to Aspose.Words, you can easily achieve the same functionality. The only difference in Aspose.Words is when applying such changes to the entire document you need to loop across all sections in the document and modify the page setup of each section. 

{{% /alert %}} 

Page setup is a set of formatting attributes which is stored in each section of a Word document. Microsoft Word Automation’s ActiveDocument.Range.PageSetup is a “shortcut” to set the same page setup for all sections of a document. Aspose.Words only provides access to the page setup of individual sections via the Section.PageSetup property so any document-wide changes to page setup must be applied for all sections.

##### Example

*Shows how to set paper size for the whole document.* 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Sections-ModifyPageSetupInAllSectionsOfDocument-ModifyPageSetupInAllSectionsOfDocument.cs" >}}
