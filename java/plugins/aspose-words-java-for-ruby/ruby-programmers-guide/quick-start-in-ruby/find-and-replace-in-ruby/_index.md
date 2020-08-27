---
title: Find And Replace in Ruby
type: docs
weight: 30
url: /java/find-and-replace-in-ruby/
---

## **Aspose.Words - Find And Replace**
To replace text using Aspose.Words Java in Ruby, simply invoke the replace_text() method.

**Ruby Code**

{{< highlight ruby >}}
# The path to the documents directory.
data_dir = File.dirname(File.dirname(File.dirname(__FILE__))) + '/data/quickstart/'
\# Open the document.
doc = Rjb::import('com.aspose.words.Document').new(data_dir + "ReplaceSimple.doc")
\# Check the text of the document.
puts "Original document text: " + doc.getRange().getText()
\# Replace the text in the document.
doc.getRange().replace("_CustomerName_", "James Bond", false, false)
\# Check the replacement was made.
puts "Document text after replace: " + doc.getRange().getText()
\# Save the modified document.
doc.save(data_dir + "ReplaceSimple Out.doc")
{{< /highlight >}}
## **Download Running Code**
Download **Find And Replace** **(Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/findandreplace.rb)
