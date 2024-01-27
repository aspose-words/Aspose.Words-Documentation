---
title: Working with Headers and Footers in C++
second_title: Aspose.Words for C++
articleTitle: Working with Headers and Footers
linktitle: Working with Headers and Footers
description: "How to manipulate headers and footers using C++."
type: docs
aliases:
 - /cpp/how-to-remove-footers-but-leave-headers-intact/
 - /cpp/how-to-create-headers-footers-using-documentbuilder/
weight: 150
url: /cpp/working-with-headers-and-footers/
---

Aspose.Words allows users to work with headers and footers in a document. A header is text that is placed at the top of a page, and a footer is text at the bottom of a page. Typically, these areas are used to insert information that should be repeated on all or some pages of the document, such as page numbers, creation date, company information, and so on.

## Create Headers or Footers using DocumentBuilder

If you want to add a document header or footer programmatically, the easiest way is to use the [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) class to do it.

The following code example shows how to add a header and footer for document pages:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "create-header-footer.h" >}}

## Specify Header or Footer Options

When you add a header or footer to a document, you can set some advanced properties. Aspose.Words provides users with the [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) and [HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/) classes, as well as [HeaderFooterType](https://reference.aspose.com/words/cpp/aspose.words/headerfootertype/) enumeration that give you more control over the header and footer customization process.

### Specify Header or Footer Type

You can specify three different header types and three different footer types for one document:

1. Header and/or footer for the first page
2. Header and/or footer for even pages
3. Header and/or footer for odd pages

The following code example shows how to add a header for odd document pages:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "header-footer-type.h" >}}

### Specify Whether to Display Different Headers or Footers for the First Page

As said above, you can also set a different header or footer for the first page. To do this, you need to set the [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_differentfirstpageheaderfooter/) flag to `true` and then specyfy the **HeaderFirst** or **FooterFirst** value.

The following code example shows how to set the header for the first page only:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "different-first-page.h" >}}

### Specify Whether to Display Different Headers or Footers for Odd or Even Pages

 Next, you will want to set different headers or footers for odd and even pages in a document. To do this, you need to set the [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_oddandevenpagesheaderfooter/) flag to `true` and then specyfy the values **HeaderPrimary** and **HeaderEven**, or **FooterPrimary** and **FooterEven**.

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "odd-even-pages.h" >}}

### Insert an Absolutely Positioned Image into the Header

To place an image in a header or footer, use the **HeaderPrimary** header type or the **FooterPrimary** footer type and the `InsertImage` method.

The following code example shows how to add an image to a header:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "insert-image.h" >}}

### Set Font and Paragraph Properties for Header or Footer Text

With Aspose.Words you can set the font and paragraph properties, use the **HeaderPrimary** header type or the **FooterPrimary** footer type, as well as methods and properties for working with the fonts and paragraphs you use for the document body.

The following code example shows how to set the text in the header to Arial, bold, size 14, and center alignment:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "font-props.h" >}}

### Insert Page Numbers into the Header or Footer

If necessary, you can add page numbers to the header or footer. To do this, use the **HeaderPrimary** header type or the **FooterPrimary** footer type and the [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) method to add the required field.

The following code example shows how to add page numbers to the footer on the right:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "page-numbers.h" >}}

### Use Headers or Footers Defined in the Previous Section

If you need to copy the header or footer from the previous section, you can do that too.

The following code example shows how to copy the header or footer from the previous section:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "copy-headers-footers-from-previous-section.h" >}}

### Ensure Header or Footer appearance when Using Different Page Orientations and Page Size

Aspose.Words allows you to provide the appearance of a header or footer when using different orientations and page sizes.

The following example shows how to do this:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

## How to Remove Only Headers or Only Footers

Each section in a document can have up to three headers and up to three footers (for first, even, and odd pages). If you want to remove all headers or all footers in a document, you need to loop through all the sections and remove each corresponding header node or footer node.

The following code example shows how to remove all footers from all sections but leave headers intact. You can remove only headers in a similar way:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "remove-footers.h" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}