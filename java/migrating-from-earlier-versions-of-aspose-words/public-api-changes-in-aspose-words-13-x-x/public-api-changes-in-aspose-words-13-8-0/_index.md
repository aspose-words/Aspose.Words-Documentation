---
title: Public API Changes in Aspose.Words 13.8.0
type: docs
weight: 80
url: /java/public-api-changes-in-aspose-words-13-8-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 13.8.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## Document.RemoveExternalSchemaReferences is made Public

Use **Document.RemoveExternalSchemaReferences** to remove XSD references from the document.

## MailMergeCleanupOptions.RemoveEmptyParagraphs Removes Paragraphs Containing NEXT and NEXTIF Fields

Starting with this version of Aspose.Words the option **MailMergeCleanupOptions.RemoveEmptyParagraphs** now removes paragraphs that contain **NEXT** and **NEXTIF** fields that are otherwise empty.

In addition **MailMergeCleanupOptions.RemoveEmptyParagraphs** and **MailMergeCleanupOptions.RemoveContainingFields** also now affect all of the fields participating in a mail merge such as ADDRESSBLOCK and so forth.

## MetafileRenderingMode added to ImageSaveOptions

This member enables the user to select between Aspose.Words and GDI+ metafile rendering engines. 

When **MetafileRenderingMode.Vector** is specified, Aspose.Words renders metafile to vector graphics using own metafile rendering engine first and then renders vector graphics to the image. When **MetafileRenderingMode.Bitmap** is specified, Aspose.Words renders metafile directly to the image using GDI+ metafile rendering engine. **MetafileRenderingMode.Bitmap** is the default value and should be used in most cases. **MetafileRenderingMode.Vector** enables to achieve more consistent text rendering on low resolutions.

## PostScript Save Format Introduced

Aspose.Words can now render documents to PostScript 3.0 format. This format is often used when sending data directly to printers and should be used over the standard printing framework when printing speed is essential.

## Protection of Selected Ranges API Introduced

**EditableRangeStart**, **EditableRangeEnd** nodes and the **EditableRange** facade are added as new public API model entities which can be preserved during DOC/DOCX/WML/RTF round trip.

These classes provide equivalent members to modify features of the protected range, such as changing the editor group, removing the range, changing the permissions and so forth.

## Style.IsQuickStyle Added to the Public API

Use **Style.IsQuickStyle** to get or set whether the style is included in the Quick Styles Gallery displayed on the top ribbon when a document is opened in Microsoft Word.

## Remove a Style from a Document

Use **Style.Remove** to delete a style from a document.

## DataRelation Constructor Signature Changed

In previous versions the **DataRelation** class took the names of the parent and child data tables. This constructor was deprecated and has now been removed. Instead pass the **DataRelation** constructor the related parent and child **DataTable**.

**Java**

{{< highlight csharp >}}
dataSet.getRelations().add(new DataRelation(
                "OrderToItemDetails",
                orders,
                itemDeatails,
                new String[]{"OrderID"},
                new String[]{"OrderID"}));
{{< /highlight >}}
