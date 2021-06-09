---
title: Public API Changes in Aspose.Words 14.11.0
type: docs
weight: 110
url: /net/public-api-changes-in-aspose-words-14-11-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 14.11.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## BuiltInDocumentProperties.NameOfApplication Property Added

Earlier the field "NameOfApplication" in document properties contained product name with version number. Now version number is removed from this field.

## RevisionOptions.MovedFromTextColor and RevisionOptions.MovedToTextColor Properties Added

Public API for controlling colors of Move revisions for rendering to fixed formats are added. RevisionOptions class now has the following two new public read-write properties:

{{< highlight csharp >}}
public RevisionColor MovedFromTextColor
public RevisionColor MovedToTextColor
{{< /highlight >}}

## Style.Aliases Property Added

Style.Aliases property now returns all aliases of the style as string[]. If style has no aliases then empty array of string is returned.
