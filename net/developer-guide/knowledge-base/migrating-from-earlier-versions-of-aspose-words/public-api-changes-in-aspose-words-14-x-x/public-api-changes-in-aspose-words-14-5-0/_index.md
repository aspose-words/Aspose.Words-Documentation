---
title: Public API Changes in Aspose.Words 14.5.0
type: docs
weight: 50
url: /net/public-api-changes-in-aspose-words-14-5-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 14.5.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## Hyphenation API Extended

Hyphenation API logic has now been changed in the following way:

1. When dictionary is registered, it is loaded instantly and if there is an error, an exception is thrown. In the previous version registering of the dictionary was delayed until its first use which could throw during build of page layout.
1. A callback has now been added which allows delayed loading of dictionaries.
1. API now supports loading of Hyphenation dictionary from a stream.

## SaveOptions.UseAntiAliasing Supported for Raster Images During Exporting Document to HTML

When the document is exported to the Html, Mhtml and Epub formats, SaveOptions.UseAntiAliasing option is used for raster images.
