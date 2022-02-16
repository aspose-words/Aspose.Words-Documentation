---
title: Simple Mail Merge in Ruby – Aspose.Words for Java
articleTitle: Simple Mail Merge in Ruby
linktitle: Simple Mail Merge in Ruby
type: docs
weight: 70
url: /java/simple-mail-merge-in-ruby/
---

## Aspose.Words - Simple Mail Merge

To use Mail Merge, simply invoke getMailMerge.execute() method.

**Ruby Code**

{{< highlight ruby >}}

## The path to the documents directory.

data_dir = File.dirname(File.dirname(File.dirname(__FILE__))) + '/data/quickstart/'
\# Open the document.
doc = Rjb::import('com.aspose.words.Document').new(data_dir + "MailMerge.doc")
\# Fill the fields in the document with user data.
doc.getMailMerge().execute(
    Array["FullName", "Company", "Address", "Address2", "City"],
    Array["James Bond", "MI5 Headquarters", "Milbank", "", "London"]
)
\# Saves the document to disk.
doc.save(data_dir + "MailMerge Out.docx")
{{< /highlight >}}

## Download Running Code

Download **Simple Mail Merge (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/simplemailmerge.rb)
