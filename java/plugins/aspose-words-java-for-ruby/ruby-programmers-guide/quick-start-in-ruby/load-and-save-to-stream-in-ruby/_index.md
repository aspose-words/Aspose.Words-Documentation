---
title: Load And Save To Stream in Ruby
type: docs
weight: 60
url: /java/load-and-save-to-stream-in-ruby/
---

## **Aspose.Words - Load And Save To Stream**
To load and save a word document to stream using Aspose.Words for Java in Ruby, simply invoke save_to_stream() method of LoadAndSaveToStream module.

**Ruby Code**

{{< highlight ruby >}}

 # The path to the documents directory.

data_dir = File.dirname(File.dirname(File.dirname(__FILE__))) + '/data/quickstart/'

\# Open the stream. Read only access is enough for Aspose.Words to load a document.

stream = Rjb::import('java.io.FileInputStream').new(data_dir + "Document.doc")

\# Load the entire document into memory.

doc = Rjb::import('com.aspose.words.Document').new(stream)

\# You can close the stream now, it is no longer needed because the document is in memory.

stream.close()

\# ... do something with the document

\# Convert the document to a different format and save to stream.

dst_stream = Rjb::import("java.io.ByteArrayOutputStream").new()

save_format = Rjb::import("com.aspose.words.SaveFormat")

doc.save(dst_stream, save_format.RTF)

output = Rjb::import("java.io.FileOutputStream").new(data_dir + "Document Out.rtf")

output.write(dst_stream.toByteArray())

output.close()

{{< /highlight >}}
## **Download Running Code**
Download **Load And Save To Stream (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/loadandsavetostream.rb)
