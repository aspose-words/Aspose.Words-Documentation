---
title: Convert Doc to HTML in Ruby
type: docs
weight: 20
url: /java/convert-doc-to-html-in-ruby/
---

## Aspose.Words - Doc to HTML

Here is example code for converting document to HTML using Aspose.Words Java for Ruby.

**Ruby Code**

{{< highlight ruby >}}

## The path to the documents directory.

data_dir = File.dirname(File.dirname(File.dirname(__FILE__))) + '/data/'
\# Open the document.
doc = Rjb::import('com.aspose.words.Document').new(data_dir + "TestFile.doc")

#HtmlSaveOptions options = new HtmlSaveOptions();

options = Rjb::import('com.aspose.words.HtmlSaveOptions').new
\# HtmlSaveOptions.ExportRoundtripInformation property specifies
\# whether to write the roundtrip information when saving to HTML, MHTML or EPUB.
\# Default value is true for HTML and false for MHTML and EPUB.
options.setExportRoundtripInformation(true)
doc.save(data_dir + "ExportRoundtripInformation Out.html", options)
doc = Rjb::import('com.aspose.words.Document').new(data_dir + "ExportRoundtripInformation Out.html")
\# Save the document Docx file format
save_format = Rjb::import('com.aspose.words.SaveFormat')
doc.save(data_dir + "Out.docx", save_format.DOCX)
{{< /highlight >}}

## Download Running Code

Download **Doc to HTML (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/doctohtml.rb)
