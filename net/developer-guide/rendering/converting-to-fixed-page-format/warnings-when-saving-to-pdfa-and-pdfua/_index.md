---
title: Warnings When Saving to PDF/A and PDF/UA
second_title: Aspose.Words for .NET
articleTitle: Accessibility Issue Warnings When Saving to PDF/A and PDF/UA
linktitle: Accessibility Issue Warnings When Saving to PDF/A and PDF/UA
description: "PDF/A and PDF/UA impose accessibility requirements related to document content. When saving to PDF/A or PDF/UA in C# and the issue violates compliance, a warning is issued."
type: docs
weight: 29
url: /net/warnings-when-saving-to-pdfa-and-pdfua/
---

PDF/A and PDF/UA formats impose a number of accessibility requirements related to document content that cannot be fulfilled during automatic conversion from Word to PDF. These requirements are described in the previous article *"Working with PDF/A or PDF/UA"*. Now warnings are issued for some of these problems.

Warnings are issued when saving to one of the PDF/A or PDF/UA formats and the issue violates compliance. For example, the warning about missing document title will be issued when saving to PDF/UA and will not be issued when saving to PDF/A.

All warnings are of [WarningType](https://reference.aspose.com/words/net/aspose.words/warningtype/)**.MinorFormattingLoss** and [WarningSource](https://reference.aspose.com/words/net/aspose.words/warningsource/)**.Pdf**. Here is a list of the new Description warning values:

| Description warning value                                    | PDF/A                  | PDF/UA                 |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "Document title is missing. This violates the compliance requirements. The output document will not be fully compliant." |                        | {{< emoticons/tick >}} |
| "The document contains headings which levels are not consecutive. This violates the compliance requirements. The output document will not be fully compliant." |                        | {{< emoticons/tick >}} |
| "There are shapes without alt text in the document. This violates the compliance requirements. The output document will not be fully compliant." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "There are tables without alt text in the document. This violates the compliance requirements. The output document will not be fully compliant." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "There are hyperlinks without alt text in the document. This violates the compliance requirements. The output document will not be fully compliant." |                        | {{< emoticons/tick >}} |
| "There are tables without header row/column in the document. This violates the compliance requirements. The output document will not be fully compliant." |                        | {{< emoticons/tick >}} |
| "The document contains Unicode PUA characters. This violates the compliance requirements. The output document will not be fully compliant." | {{< emoticons/tick >}} |                        |
| "The document contains .notdef glyphs. This violates the compliance requirements. The output document will not be fully compliant." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |