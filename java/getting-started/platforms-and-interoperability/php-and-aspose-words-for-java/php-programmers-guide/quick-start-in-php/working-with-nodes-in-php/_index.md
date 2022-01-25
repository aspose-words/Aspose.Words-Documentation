---
title: Working With Nodes in PHP
description: "PHP: Working With Document Nodes using Aspose.Words for Java."
type: docs
weight: 90
url: /java/working-with-nodes-in-php/
---

## Aspose.Words - Working With Nodes

To get Node Type using Aspose.Words Java Apis in Php, simply invoke getNodeType method.

**Php Code**

{{< highlight csharp >}}

// Create a new document.
$doc = new Java("com.aspose.words.Document");
$nodeType = $doc->getFirstSection()->getBody()->getNodeType();
$node = new Java("com.aspose.words.Node");
echo "NodeType: " . $node->nodeTypeToString($nodeType);
{{< /highlight >}}

## Download Running Code

Download **Working With Nodes (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_PHP/src/quickstart/workingwithnodes/php/WorkingWithNodes.php)
