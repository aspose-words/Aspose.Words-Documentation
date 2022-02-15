---
title: Aspose.Words for .NET 10.0.0 Release Notes
description: "Aspose.Words for .NET 10.0.0 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 80
url: /net/aspose-words-for-net-10-0-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 10.0.0](https://downloads.aspose.com/words/net/new-releases/aspose.words-for-.net-10.0.0/)

{{% /alert %}} 

## Aspose.Words for .NET 10.0 Release Notes

This release is important because it delivers several important features, some have been in development for long time. But the most important milestone of this release is that from now on we will be releasing Aspose.Words for .NET and Aspose.Words for Java on the same day with the same set of features and fixes in both products.

## What's New

- Table Styles are supported in DOC documents.
- Office Math Markup Language (OMML) formulas are preserved during DOCX roundtrips.
- Custom XML is supported in WordprocessingML 2003 documents.
- More fidelity when rendering DrawingML objects.

Before today Aspose.Words supported table styles in DOCX and WordprocessingML formats during roundtrips and conversions. When converting to other formats table styles were converted to direct formatting, that preserved visual fidelity, but the table styles themselves were lost.

Now we added support of tables styles in DOC documents. This means that conversions between DOC, DOCX and WML will preserve table styles. Also, conversions from DOC documents where table styles are used to PDF, XPS and other formats are improved greatly in visual fidelity.



Aspose.Words now preserves Office Math formulas and equations during DOCX roundtrips. 

We are now working on this futher to preserve equations in RTF, ODT and also render them to PDF and XPS.



Starting from this release Aspose.Words supports Custom XML in all Microsoft Word document formats DOC, DOCX, RTF and WordML 2003. Custom XML elements and attributes are preserved during conversions and programmatically accessible from the Aspose.Words public API.


## All Fixes
