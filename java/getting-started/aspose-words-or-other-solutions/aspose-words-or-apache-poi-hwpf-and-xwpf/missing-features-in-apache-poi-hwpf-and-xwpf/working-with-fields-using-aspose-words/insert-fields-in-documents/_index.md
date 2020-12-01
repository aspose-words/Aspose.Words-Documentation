---
title: Insert Fields in Documents
type: docs
weight: 10
url: /java/insert-fields-in-documents/
---

## Aspose.Words - Insert Fields in Documents

In Aspose.Words the **DocumentBuilder.insertField** method is used to insert new fields into a document. The first parameter accepts the full field code of the field to be inserted. The second parameter is optional and allows the field result of the field to be set manually. If this is not supplied then the field is updated automatically. You can pass null or empty to this parameter to insert a field with an empty field value.

**Java**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Insert few page breaks (just for testing)
for (int i = 0; i < 5; i++)
	builder.insertBreak(BreakType.PAGE_BREAK);

// Move DocumentBuilder cursor into the primary footer.
builder.moveToHeaderFooter(HeaderFooterType.FOOTER_PRIMARY);

// We want to insert a field like this:

// { IF {PAGE} <> {NUMPAGES} "See Next Page" "Last Page" }
Field field = builder.insertField("IF ");
builder.moveTo(field.getSeparator());
builder.insertField("PAGE");
builder.write(" <> ");
builder.insertField("NUMPAGES");
builder.write(" \"See Next Page\" \"Last Page\" ");

// Finally update the outer field to recalcaluate the final value. Doing this will automatically update the inner fields at the same time.
field.update();
doc.save(dataDir + "AsposeFields.docx");
{{< /highlight >}}

## Download Running Code

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## Download Sample Code

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithfields/insertfieldsindoc/AsposeInsertFields.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithfields/insertfieldsindoc/AsposeInsertFields.java)

{{% alert color="primary" %}} 

For more details, visit [Inserting Fields into a Document](/words/java/insert-and-remove-field/#insertandremovefield-insertingfieldsintoadocument).

{{% /alert %}}
