---
title: Load And Save To Disk in Ruby
type: docs
weight: 50
url: /java/load-and-save-to-disk-in-ruby/
---

## **Aspose.Words - Load And Save To Disk**
To load and save a word document to disk using Aspose.Words Java for Ruby, simply invoke save_to_disk() method of LoadAndSaveToDisk module.

**Ruby Code**

{{< highlight ruby >}}

 # The path to the documents directory.

data_dir = File.dirname(File.dirname(File.dirname(__FILE__))) + '/data/quickstart/'

\# Open the document.

doc = Rjb::import('com.aspose.words.Document').new(data_dir + "Document.doc")

\# Save the document as DOCX document.

doc.save(data_dir + "Document Out.docx")

{{< /highlight >}}
## **Download Running Code**
Download **Load And Save To Disk (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/loadandsavetodisk.rb)
