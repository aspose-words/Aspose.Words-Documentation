---
title: Summarize a Document
second_title: Aspose.Words for .NET
articleTitle: Summarize a Document
linktitle: Summarize a Document
type: docs
weight: 20
description: "Summarize a document. Aspose.Words for .NET simplifies document summarization using OpenAI and Google AI models by allowing you to specify the summary length."
url: /net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Summarizing documents is a valuable tool for content review, quick insights, or preparing abstracts. Aspose.Words supports document summarization using AI-powered models, making it easier to process long text. This feature, available in the [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) namespace, integrates advanced generative language models from *OpenAI* and *Google*. 

You can specify various options for summarizing document content. Use the [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/) method to generate a summary of your document. You can also set summary length using the [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/) property.

With Aspose.Words, implementing document summarization is straightforward. The following code example shows how to summarize a document using GPT-4o model:

{{< highlight csharp >}}
Document firstDoc = new Document(MyDir + "Big document.docx");
Document secondDoc = new Document(MyDir + "Document.docx");

string apiKey = Environment.GetEnvironmentVariable("API_KEY");
// Use OpenAI or Google generative language models.
IAiModelText model = (IAiModelText)AiModel.Create(AiModelType.Gpt4OMini).WithApiKey(apiKey);

Document oneDocumentSummary = model.Summarize(firstDoc, new SummarizeOptions() { SummaryLength = SummaryLength.Short });
oneDocumentSummary.Save(ArtifactsDir + "AI.AiSummarize.One.docx");

Document multiDocumentSummary = model.Summarize(new Document[] { firstDoc, secondDoc }, new SummarizeOptions() { SummaryLength = SummaryLength.Long });
multiDocumentSummary.Save(ArtifactsDir + "AI.AiSummarize.Multi.docx");
{{< /highlight >}}

{{% alert color="primary" %}}

Summarizing documents with Aspose.Words saves time and helps you focus on essential information. For more information, check the [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API documentation.

{{% /alert %}}