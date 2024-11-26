---
title: Summarize a Document
second_title: Aspose.Words for Java
articleTitle: Summarize a Document
linktitle: Summarize a Document
type: docs
weight: 20
description: "Summarize a document. Aspose.Words for Java simplifies document summarization using OpenAI and Google AI models by allowing you to specify the summary length."
url: /java/summarize-a-document/
---

Summarizing documents is a valuable tool for content review, quick insights, or preparing abstracts. Aspose.Words supports document summarization using AI-powered models, making it easier to process long text. This feature, available in the AI-based Aspose.Words functionality, integrates advanced generative language models from *OpenAI* and *Google*. 

You can specify various options for summarizing document content. Use the [Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions) method to generate a summary of your document. You can also set summary length using the [SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength) property.

With Aspose.Words, implementing document summarization is straightforward. The following code example shows hot to summirize a documet using GPT-4o model:

{{< highlight java >}}
Document firstDoc = new Document(getMyDir() + "Big document.docx");
 Document secondDoc = new Document(getMyDir() + "Document.docx");

 String apiKey = System.getenv("API_KEY");
 // Use OpenAI or Google generative language models.
 IAiModelText model = (IAiModelText)AiModel.create(AiModelType.GPT_4_O_MINI).withApiKey(apiKey);

 Document oneDocumentSummary = model.summarize(firstDoc, new SummarizeOptions(); { oneDocumentSummary.setSummaryLength(SummaryLength.SHORT); });
 oneDocumentSummary.save(getArtifactsDir() + "AI.AiSummarize.One.docx");

 Document multiDocumentSummary = model.summarize(new Document[] { firstDoc, secondDoc }, new SummarizeOptions(); { multiDocumentSummary.setSummaryLength(SummaryLength.LONG); });
 multiDocumentSummary.save(getArtifactsDir() + "AI.AiSummarize.Multi.docx");
{{< /highlight >}}

{{% alert color="primary" %}}

Summarizing documents with Aspose.Words saves time and helps you focus on essential information. For more information, check the [Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/).

{{% /alert %}}