---
title: Clean Up a Document
description: "Aspose.Words for Java allows you to remove unused or duplicate information to reduce output size and processing time. Remove unused styles, unused built-in styles, duplicate styles, or unused lists."
type: docs
weight: 15
url: /java/clean-up-a-document/
---

Sometimes you may need to remove unused or duplicate information to reduce the size of the output document and processing time.

While you can find and remove unused data, such as styles or lists, or duplicate information manually, it will be much more convenient to do this using features and capabilities provided by Aspose.Words.

The [CleanupOptions](https://apireference.aspose.com/words/java/com.aspose.words/CleanupOptions) class allows you to specify options for document cleaning. To remove duplicate styles or just unused styles or lists from the document, you can use the [Cleanup](https://apireference.aspose.com/words/java/com.aspose.words/document#cleanup()) method.

## Remove Unused Information from a Document

You can use the [UnusedStyles](https://apireference.aspose.com/words/java/com.aspose.words/cleanupoptions#UnusedStyles) and [UnusedBuiltinStyles](https://apireference.aspose.com/words/java/com.aspose.words/cleanupoptions#UnusedBuiltinStyles) properties to detect and remove styles that are marked as "unused".

You can use the [UnusedLists](https://apireference.aspose.com/words/java/com.aspose.words/cleanupoptions#UnusedLists) property to detect and remove lists and list definitions that are marked as "unused".

The following code example shows how to remove only unused styles from a document:

{{< highlight java >}}
Document doc = new Document(dataDir + "Document.docx");

CleanupOptions cleanupOptions = new CleanupOptions();
cleanupoptions.setUnusedLists(false);
cleanupoptions.setUnusedStyles(true);

// Count of styles before Cleanup.
System.out.println(doc.getStyles().getCount());

// Count of lists before Cleanup.
System.out.println(doc.getLists().getCount());

// Cleans unused styles and lists from the document depending on given CleanupOptions.
doc.cleanup(cleanupOptions);

// Count of styles after Cleanup was decreased.
System.out.println(doc.getStyles().getCount());

// Count of lists after Cleanup is the same.
System.out.println(doc.getLists().getCount());

doc.save(dataDir + "Document.Cleanup_out.docx");
{{< /highlight >}}

## Remove Duplicate Information from a Document

You can also use the [DuplicateStyle](https://apireference.aspose.com/words/java/com.aspose.words/cleanupoptions#DuplicateStyle) property to substitute all duplicate styles with the original one and remove duplicates from a document.

The following code example shows how to remove duplicate styles from a document:

{{< highlight java >}}
Document doc = new Document(dataDir + "Document.docx");

CleanupOptions options = new CleanupOptions();
options.setDuplicateStyle(true);

// Count of styles before Cleanup.
System.out.println(doc.getStyles().getCount());

// Cleans duplicate styles from the document.
doc.cleanup(options);

// Count of styles after Cleanup was decreased.
System.out.println(doc.getStyles().getCount());

doc.save(dataDir + "Document.CleanupDuplicateStyle_out.docx");
{{< /highlight >}}