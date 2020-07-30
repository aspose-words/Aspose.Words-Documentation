---
title: Load Plain Text (TXT) Files in Ruby
type: docs
weight: 30
url: /java/load-plain-text-txt-files-in-ruby/
---

## **Aspose.Words - Load Text (TXT) File**
Load TXT file and save as word document using Aspose.Words Java in Ruby, simply invoke LoadTXT module.

**Ruby Code**

{{< highlight ruby >}}

 # The path to the documents directory.

data_dir = File.dirname(File.dirname(File.dirname(__FILE__))) + '/data/'

\# Open the document.

doc = Rjb::import('com.aspose.words.Document').new(data_dir + "LoadTxt.txt")

\# Save as any Aspose.Words supported format, such as DOCX.

doc.save(data_dir + "LoadTxt Out.doc")

{{< /highlight >}}
## **Download Running Code**
Download **Load Text (TXT) File (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/loadtxt.rb)
