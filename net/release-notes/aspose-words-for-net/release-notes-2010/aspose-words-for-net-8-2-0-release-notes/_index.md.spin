---
title: Aspose.Words for .NET 8.2.0 Release Notes
type: docs
weight: 80
url: /net/aspose-words-for-net-8-2-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 8.2.0](http://www.aspose.com/downloads/words/net/new-releases/aspose.words-for-.net-8.2.0/)

{{% /alert %}} 

The important changes are:

- Comment ranges are now supported.
  Assemblies with and without the Authenticode signature are supplied. 
  About 50 other fixes and improvements. 



A comment in a Word document can be anchored to a position or to a range of text. Earlier versions of Aspose.Words supported comments anchoring to a position of text only. If a comment was anchored to a range of text (and that is the most common scenario), Aspose.Words lost the range information and converted the comment as anchored to the end position of the commented text. This was annoying to {many|multiple|several|a few|numerous} customers, comments ranges are especially important in legal documents for example because they need to know exactly what piece of text each comment applies to.

I am happy to announce that comment ranges are now fully supported! Comment ranges are supported when converting to/from DOC, DOCX, WordprocessingML 2003 and RTF formats. Comment ranges are also accessible via the public API and you can examine as well as create comment ranges programmatically. The new classes are and .



We used to ship all Aspose.Words.dlls signed both with the Aspose's strong key and with an Aspose's Authenticode signature. But {several|multiple|a few|many|numerous} customers have complained and explained to us that .NET is sometimes slow at loading assemblies signed with an Authenticode signature. .NET tries to validate the Authenticode signature and this requires sending one or more requests to the Internet and sometimes gives a noticeable delay. An Authenticode signature gives an additional piece of mind that the assembly has not been tampered with, but it is not always necessary. So we are now shipping Aspose.Words.dlls both signed with Authenticode and not signed. Note the MSI installer is still signed with Authenticode.

If you install Aspose.Words.msi or unpack Aspose.Words.zip you will see the new directory. Pretty much self explanatory. The "default" assemblies that most of you will now use are without Authenticode and stored in the old and directories.



As usual, thank you for your patience waiting for fixes and new features. We are already hard working on the next bunch.
