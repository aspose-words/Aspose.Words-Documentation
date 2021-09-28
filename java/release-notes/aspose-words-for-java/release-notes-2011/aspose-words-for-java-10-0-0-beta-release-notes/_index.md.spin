---
title: Aspose.Words for Java 10.0.0 BETA Release Notes
type: docs
weight: 100
url: /java/aspose-words-for-java-10-0-0-beta-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 10.0.0 BETA](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-10.0.0-beta/)

{{% /alert %}} 

This is the first release of Aspose.Words for Java that we have automatically ported from our .NET code and therefore it contains {many|multiple|several|a few|numerous} of the features that were missing in Aspose.Words for Java for so long. This is not an April Fools' Day joke. 

Some of the features that are new (now available) in Aspose.Words for Java include:

- Field update engine (including evaluate Table of Contents).
- Nested mail merge regions.
- Support for WordprocessingML 2003 documents.
- Support for MHTML.
- Render to XPS and SWF.
- CustomXML and Structured Document Tags support.
- DrawingML roundtrip and rendering.
- Footnotes and endnotes in rendering.
- Many others.



This is a BETA version of the Aspose.Words for Java software. Do not use it in production systems. There is a number of known limitations in this release including, but not limited to:

- There is no user documentation included with this release. See the old documentation or corresponding .NET documentation for the time being.
- A fixed date/time stamp will be output if you update the DATE and TIME document fields.
- There is no build for Java 1.4. Only JARs for Java 1.5 and 6 are provided.
- Printing documents is not supported.
- Rendering document pages to images such as TIFF is not supported.
- Brightness, contrast and other color modifications on images when rendering to PDF and XPS not supported.

This version of Aspose.Words for Java was only tested with:

- Windows 7, Java 1.5
- Ubuntu 9.04, Java 1.5



We are working to finalize the outstanding issues and updating user documentation. A production release is expected at end of April.

Feel free to submit your requests and issues in the support forum.





When you render documents to PDF, XPS or convert to EPUB that requires embedding of fonts into a document, then Aspose.Words needs to have access to TrueType fonts. If you run Aspose.Words on a Windows system, then by default it will search for fonts in the system Windows\Fonts folder. But if you run Aspose.Words on a Linux system, it does not have a default location for fonts and you need to specify it explicitly.

Use the new class and / methods to specify the location of TrueType fonts.

`    `@Test    public void testHelloWorld() throws Exception    

Unknown macro: {        FontSettings.setFontsFolder("C}






