---
title: Working With Nodes in Ruby
type: docs
weight: 90
url: /java/working-with-nodes-in-ruby/
---

## **Aspose.Words - Working With Nodes**
To get Node Type using Aspose.Words Java for Ruby, simply invoke get_nodes() method. method of Nodes module.

**Ruby Code**

{{< highlight ruby >}}

 # The path to the documents directory.

data_dir = File.dirname(File.dirname(File.dirname(__FILE__))) + '/data/quickstart/'

\# Create a new document.

doc = Rjb::import('com.aspose.words.Document').new()

\# Creates and adds a paragraph node to the document.

para = Rjb::import("com.aspose.words.Paragraph").new(doc)

\# Typed access to the last section of the document.

section = doc.getLastSection()

section.getBody().appendChild(para)

\# Next print the node type of one of the nodes in the document.

node_type = doc.getFirstSection().getBody().getNodeType()

node = Rjb::import("com.aspose.words.Node")

puts "NodeType: " + node.nodeTypeToString(node_type)

{{< /highlight >}}
## **Download Running Code**
Download **Working With Nodes (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/nodes.rb)
