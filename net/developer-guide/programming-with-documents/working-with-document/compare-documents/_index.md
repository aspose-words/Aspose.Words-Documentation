---
title: Compare Documents
type: docs
weight: 50
url: /net/compare-documents/
---

You can use Document.Compare method to compare two documents to see the difference between them. This method mimics Microsoft Word's Compare feature and produces document difference as a number of edit and format revisions. The main idea is that if we reject all revisions then we get a document which is equal to the original document. On the contrary, if we accept all revisions then we get the final (comparison target) document.

{{% alert color="primary" %}}

**Try online**

You can try this functionality with our [Document comparison online](https://products.aspose.app/words/comparison).

{{% /alert %}}

## **Limitations**

There are a few general limitations:

- The document being compared must not have revisions before this method is called.
- Markup - is limited to SmartTag only. Other markups are ignored completely.
- Dml - Fallback shapes are compared instead of actual Dml comparison.

{{% alert color="primary" %}} 

There is an important note regarding "equal". Actually "equality" means here that the comparison method is not able to represent changes as revisions. In general, it means that both document text and text formatting are the same. But there can be other difference between documents. For example, Word supports only format revisions for styles and we can't represent style insertion/deletion. So documents can have a different set of styles and the Compare method still produces no revisions.

{{% /alert %}} 

The following code example demonstrates the Normal Comparison Case. You can download the template files of below examples from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Document).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-NormalComparison.cs" >}}

The following code example demonstrates how to test that Word Documents are "Equal".

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareForEqual.cs" >}}

## **Compare Word Documents and Ignore Document Formatting**

CompareOptions class allows to choose advanced options for document comparison operation. You can ignore document formatting, headers-footers, fields, footnotes, tables, text boxes, comments and case changes when documents are compared. Set the value of CompareOptions.IgnoreFormatting property to *true* to ignore the document formatting. The headers and footers contents are ignored when CompareOptions.IgnoreHeadersAndFooters is set to *true*. The following code example demonstrates how to ignore the document's formatting and headers footers contents.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cs" >}}

## **Set Target Document for Comparison Differences**

MS Word has "Show changes in" option in compare document dialogue box and the result of the comparison depends on this option. CompareOptions.Target property serves this purpose. This property specifies which document shall be used as a target during the comparison. For example, this option together with IgnoreFormatting setting determines which document has to be used as a formatting source for ranges of equal text. ComparisonTargetType enumeration is used to specify base document which will be used during the comparison. The following code example demonstrates how to set the target document for a comparison of two documents. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareDocumentWithComparisonTarget.cs" >}}
