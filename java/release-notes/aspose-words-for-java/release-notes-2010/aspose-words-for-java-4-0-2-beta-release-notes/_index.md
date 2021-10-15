---
title: Aspose.Words for Java 4.0.2 BETA Release Notes
type: docs
weight: 10
url: /java/aspose-words-for-java-4-0-2-beta-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 4.0.2 BETA](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-4.0.2-beta/)

{{% /alert %}} 

A comment in a Word document can be anchored to a position or to a range of text. Earlier versions of Aspose.Words supported comments anchoring to a position of text only. If a comment was anchored to a range of text (and that is the most common scenario), Aspose.Words lost the range information and converted the comment as anchored to the end position of the commented text. This was annoying to several customers, comments ranges are especially important in legal documents for example because they need to know exactly what piece of text each comment applies to.

I am happy to announce that comment ranges are now fully supported! Comment ranges are supported when converting to/from DOC, DOCX and RTF formats. Comment ranges are also accessible via the public API and you can examine as well as create comment ranges programmatically. The new classes are and .

If you attempt to load HTML that does not specify encoding explicitly there could be a situation when Aspose.Words guesses the encoding incorrectly and stops HTML parsing upon encountering malformed (from that encoding's point of view) input. This could result in partially loaded documents or in rare cases parsing going into endless loop.
