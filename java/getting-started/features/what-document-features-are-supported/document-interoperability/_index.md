---
title: Document Interoperability
type: docs
weight: 10
url: /java/document-interoperability/
---

{{% alert color="primary" %}} 

Today’s document formats and standards are complex and when you require document conversion or other document processing features in your project, the only practical solution is often to rely on a third-party component that implements the desired functionality. But relying on a third-party component always carries some risk. One of the unique risks in document processing is the question about how completely and correctly the library implements a particular document format or a standard.

Aspose is committed to delivering the most complete and accurate implementations of document formats and standards. The Aspose.Words team demonstrates its commitment to interoperability by providing detailed implementation notes for each supported document format.

When you open a document in Aspose.Words and save it (in the same or different format) you might sometimes notice data or formatting differences between the original and the produced documents. The differences you will see can be attributed to one the following reasons:

- The feature available in one document format has no corresponding feature in the other. For example there is a rich functionality for tab stops in DOC, but not in HTML.
- The feature is not yet supported by Aspose.Words in one or both formats.

The tables in the following topics show which features of Microsoft Word documents are supported when you save a document using Aspose.Words in a particular format.

The Supported column contains the following values:

- **Yes** – The feature is supported. Content and formatting will be preserved. Comments provide further information about the feature and how it is implemented in Aspose.Words. If there are any limitations they will be also stated in that column.
- **Planned** – The feature will be supported in future versions of Aspose.Words. Content or formatting related to this feature will be lost in the current version.
- **N/A (Not Applicable)** - The feature is not supported because there is no corresponding feature in the output format. Some content or formatting will be lost. The feature is not likely to be supported in the future.

{{% /alert %}}
