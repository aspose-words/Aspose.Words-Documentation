---
title: Hello World in Ruby – Aspose.Words for Java
articleTitle: Hello World in Ruby
linktitle: Hello World in Ruby
description: "Write 'Hello' to a Word Document using Ruby."
type: docs
weight: 40
url: /java/hello-world-in-ruby/
---

## Aspose.Words - Hello World

To Write anything in the Word Document using Aspose.Words for Java in Ruby, simply invoke print_hello_world() method of HelloWorld module.

**Ruby Code**

{{< highlight ruby >}}
data_dir = File.dirname(File.dirname(File.dirname(__FILE__))) + '/data/quickstart/'

### a blank document.

document = Rjb::import('com.aspose.words.Document').new()

#### provides members to easily add content to a document.

builder = Rjb::import('com.aspose.words.DocumentBuilder').new(document)

##### a new paragraph in the document with the text "Hello World!"

builder.writeln("Hello World!")
\# Save the document in DOCX format. The format to save as is inferred from the extension of the file name.
\# Aspose.Words supports saving any document in many more formats.
document.save(data_dir + "HelloWorld.docx")
{{< /highlight >}}

## Download Running Code

Download **Hello World (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/helloworld.rb)
