---
title: How to Remove Footers but Leave Headers Intact
type: docs
weight: 240
url: /cpp/how-to-remove-footers-but-leave-headers-intact/
---

{{% alert color="primary" %}} 

Each section in a document can have up to three headers and up to three footers (for first, even and odd pages). If you want to delete all footers in a document you need to loop through all sections and remove every footer node.

{{% /alert %}} 

## **Example**

Below example deletes all footers from all sections, but leaves headers intact. You can download the template file of this example from here.

{{< gist "aspose-words" "38845012a35610163a07b547a36d6563" "cpp-Programming-Documents-Document-RemoveFooters-RemoveFooters.cpp" >}}
