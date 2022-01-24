---
title: Append Documents in Ruby
description: "Ruby: append an MS Word document to other one using Aspose.Words for Java."
type: docs
weight: 10
url: /java/append-documents-in-ruby/
---

## Aspose.Words - Append Documents

To append documents using Aspose.Words Java in Ruby.

**Ruby Code**

{{< highlight ruby >}}
data_dir = File.dirname(File.dirname(File.dirname(__FILE__))) + '/data/quickstart/'
\# Load the destination and source documents from disk.
dst_doc = Rjb::import('com.aspose.words.Document').new(data_dir + "TestFile.Destination.doc")
src_doc = Rjb::import('com.aspose.words.Document').new(data_dir + "TestFile.Source.doc")
importformatmode = Rjb::import('com.aspose.words.ImportFormatMode')
source_formating = importformatmode.KEEP_SOURCE_FORMATTING
\# Append the source document to the destination document while keeping the original formatting of the source document.
dst_doc.appendDocument(src_doc, source_formating)
dst_doc.save(data_dir + "TestFile Out.docx")
{{< /highlight >}}

## Download Running Code

Download **Append Documents (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/appenddoc.rb)
