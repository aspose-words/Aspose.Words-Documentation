---
title: Remove Field in Ruby
description: Ruby: remove a Field from MS Word Document using Aspose.Words for Java
type: docs
weight: 20
url: /java/remove-field-in-ruby/
---

## Aspose.Words - Remove Field

**Ruby Code**

{{< highlight ruby >}}

## The path to the documents directory.

data_dir = File.dirname(File.dirname(File.dirname(__FILE__))) + '/data/'
\# Open the document.
doc = Rjb::import('com.aspose.words.Document').new(data_dir + "Field.RemoveField.doc")

#ExStart

#ExFor:Field.Remove

#ExId:DocumentBuilder_RemoveField

### a field from the document.

field = doc.getRange().getFields().get(0)
\# Calling this method completely removes the field from the document.
field.remove()

#ExEnd

\# Save the document.
doc.save(data_dir + "Field.RemoveField Out.doc")
{{< /highlight >}}

## Download Running Code

Download **Remove Field (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/removefield.rb)
