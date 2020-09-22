---
title: Public API Changes in Aspose.Words 14.4.0
type: docs
weight: 40
url: /java/public-api-changes-in-aspose-words-14-4-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 14.4.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

### **Simple Mail Merge now Ignores MailMergeCleanupOptions.RemoveUnusedRegions Option**

Previously, when there was no mail merge region defined in template document and simple mail merge was performed using an empty data source after specifying MailMergeCleanupOptions.RemoveUnusedRegions, Aspose.Words used to produce an empty output document. This was because simple mail merge is technically a particular case of mail merge with regions where the whole document acts as a single region. Now starting with this release, **simple mail merge** is no more affected by the **MailMergeCleanupOptions.RemoveUnusedRegions** option since it is meaningless to produce empty documents.
