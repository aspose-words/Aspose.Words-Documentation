---
title: Joining And Appending in Ruby
type: docs
weight: 10
url: /java/joining-and-appending-in-ruby/
---

## **Aspose.Words - Joining And Appending**
For joining and appending using Aspose.Words Java APIs in Ruby, simply use appendDocument method.

**Ruby Code**

{{< highlight ruby >}}

## Load the documents to join.
dst_doc = Rjb::import("com.aspose.words.Document").new(@data_dir + "TestFile.Destination.doc")
src_doc = Rjb::import("com.aspose.words.Document").new(@data_dir + "TestFile.Source.doc")
\# Append the source document to the destination document using no extra options.
import_format_mode = Rjb::import("com.aspose.words.ImportFormatMode")
dst_doc.appendDocument(src_doc, import_format_mode.KEEP_SOURCE_FORMATTING)
\# Save the document.
dst_doc.save(@data_dir + "TestFile.SimpleAppendDocument Out.docx")
{{< /highlight >}}
## **Download Running Code**
Download **Joining And Appending (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/appenddocument.rb)
