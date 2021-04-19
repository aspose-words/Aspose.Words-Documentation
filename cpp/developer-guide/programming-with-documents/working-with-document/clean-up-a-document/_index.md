---
title: Clean Up a Document
description: "Aspose.Words for C++ allows you to remove unused or duplicate information to reduce output size and processing time. Remove unused styles, unused built-in styles, duplicate styles, or unused lists."
type: docs
weight: 15
url: /cpp/clean-up-a-document/
---

Sometimes you may need to remove unused or duplicate information to reduce the size of the output document and processing time.

While you can find and remove unused data, such as styles or lists, or duplicate information manually, it will be much more convenient to do this using features and capabilities provided by Aspose.Words.

The [CleanupOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.cleanup_options) class allows you to specify options for document cleaning. To remove duplicate styles or just unused styles or lists from the document, you can use the [Cleanup](https://apireference.aspose.com/words/cpp/class/aspose.words.document#a18a1bc1920b22b3fbe2dc4fde0f4c886) method.

## Remove Unused Information from a Document

You can use the [UnusedStyles](https://apireference.aspose.com/words/cpp/class/aspose.words.cleanup_options#ace46d5447a9b10fec96e2e4015bdd898) and [UnusedBuiltinStyles](https://apireference.aspose.com/words/cpp/class/aspose.words.cleanup_options#a9b18ace3a72ea17cd6e277853a899138) properties to detect and remove styles that are marked as "unused".

You can use the [UnusedLists](https://apireference.aspose.com/words/cpp/class/aspose.words.cleanup_options#ac3e543c571810aa3a3460f3f295e45c0) property to detect and remove lists and list definitions that are marked as "unused".

The following code example shows how to remove only unused styles from a document:

{{< highlight csharp >}}
System::SharedPtr<Document> doc = System::MakeObject<Document>(inputDataDir + u"Document.docx");

System::SharedPtr<CleanupOptions> cleanupoptions = System::MakeObject<CleanupOptions>();
cleanupoptions->set_UnusedLists(false);
cleanupoptions->set_UnusedStyles(true);

// Count of styles before Cleanup.
std::cout << doc->get_Styles()->get_Count() << std::endl;

// Count of lists before Cleanup.
std::cout << doc->get_Lists()->get_Count() << std::endl;

// Cleans unused styles and lists from the document depending on given CleanupOptions.
doc->Cleanup(cleanupoptions);

// Count of styles after Cleanup was decreased.
std::cout << doc->get_Styles()->get_Count() << std::endl;

// Count of lists after Cleanup is the same.
std::cout << doc->get_Lists()->get_Count() << std::endl;

System::String outputPath = outputDataDir + u"CleansUnusedStyles.docx";
doc->Save(outputPath);
{{< /highlight >}}

## Remove Duplicate Information from a Document

You can also use the [DuplicateStyle](https://apireference.aspose.com/words/cpp/class/aspose.words.cleanup_options#a2184a5696e7cd5fe2b170d3b10bf3314) property to substitute all duplicate styles with the original one and remove duplicates from a document.

The following code example shows how to remove duplicate styles from a document:

{{< highlight csharp >}}
System::SharedPtr<Document> doc = System::MakeObject<Document>(inputDataDir + u"Document.docx");

System::SharedPtr<CleanupOptions> options = System::MakeObject<CleanupOptions>();
options->set_DuplicateStyle(true);

// Count of styles before Cleanup.
std::cout << doc->get_Styles()->get_Count() << std::endl;

// Cleans duplicate styles from the document.
doc->Cleanup(options);

// Count of styles after Cleanup was decreased.
std::cout << doc->get_Styles()->get_Count() << std::endl;

System::String outputPath = outputDataDir + u"CleanupDuplicateStyle_out.docx";
doc->Save(outputPath);
{{< /highlight >}}