---
title: Which PDF Standard Is Better to Choose
second_title: Aspose.Words for .NET
articleTitle: Which PDF Standard Is Better to Choose
linktitle: Which PDF Standard Is Better to Choose
description: "Choose the best PDF standard to export the result of your programming task in C#. Which PDF standard is better – PDF 1.7, PDF 2.0, PDF/A-1, PDF/A-2, or PDF/UA."
type: docs
weight: 27
url: /net/which-pdf-standard-is-better-to-choose/
---

For some tasks, certain PDF standards will fit better or vice versa worse. In this article, we will try to determine which PDF standards for which cases it makes sense to choose.

{{% alert color="primary" %}}

All of the following applies to the general case. In some specific cases, other considerations may apply.

{{% /alert %}}

## PDF 1.7 vs PDF 2.0

At the moment there is no big difference between Aspose.Words' PDF 1.7 and PDF 2.0 output.

Aspose.Words PDF 2.0 output just allows to use some new features, such as a new encryption algorithm. But there may be difficulties in handling of PDF 2.0 output in older PDF viewers. So, PDF 2.0 should be used if new features are needed. Otherwise, PDF 1.7 should be used.

This may be reconsidered later.

## When to Use PDF/A and Which Version

PDF/A is a format for archiving and long-term preservation. Generally it is required by authorities, archives, libraries, and so on. So, the use of PDF/A compliance is dictated by the requirements of the PDF consumer. And if PDF consumers do not require it, then it should not be used.

The PDF/A version should be selected to be the highest acceptable for the consume, since higher versions are more reliable for Aspose.Words PDF/A output. However, the conformance level for PDF/A-1 or PDF/A-2 should also be selected according to consumer requirements. Thus, if level A is required, then it should be used, and if level B/U is required, then both level B/U and level A could be used.

Note that level A documents are accessible but take more space than level B/U documents.

## When to Use PDF/UA

PDF/UA should be used if PDF consumers require it. Also it could be used if you just need the accessible PDF output, but it will take more space compared to regular PDF output.

{{% alert color="primary" %}}

It is important to note that PDF/UA-1 output will also be WCAG 2.0 and Section 508 compliant.

{{% /alert %}}