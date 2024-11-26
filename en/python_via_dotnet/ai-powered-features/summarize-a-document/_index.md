---
title: Summarize a Document
second_title: Aspose.Words for Python via .NET
articleTitle: Summarize a Document
linktitle: Summarize a Document
type: docs
weight: 20
description: "Summarize a document. Aspose.Words for Python simplifies document summarization using OpenAI and Google AI models by allowing you to specify the summary length."
url: /python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Summarizing documents is a valuable tool for content review, quick insights, or preparing abstracts. Aspose.Words supports document summarization using AI-powered models, making it easier to process long text. This feature, available in the [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) module, integrates advanced generative language models from *OpenAI* and *Google*. 

You can specify various options for summarizing document content. Use the [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/) method to generate a summary of your document. You can also set summary length using the [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/) property.

With Aspose.Words, implementing document summarization is straightforward. The following code example shows hot to summirize a documet using GPT-4o model:

{{< highlight python >}}
first_doc = aw.Document(MyDir + "Big document.docx")
second_doc = aw.Document(MyDir + "Document.docx")
api_key = os.getenv("API_KEY")
# Use OpenAI or Google generative language models.
model = aw.ai.AiModel.create(aw.ai.AiModelType.GPT_4O_MINI).with_api_key(api_key).as_open_ai_model()
options = aw.ai.SummarizeOptions()
options.summary_length = aw.ai.SummaryLength.SHORT
one_document_summary = model.summarize(first_doc, options)
oneDocumentSummary.save(ArtifactsDir + "AI.AiSummarize.One.docx")
options.summary_length = aw.ai.SummaryLength.LONG
multi_document_summary = model.summarize([first_doc, second_doc], options)
multiDocumentSummary.save(ArtifactsDir + "AI.AiSummarize.Multi.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Summarizing documents with Aspose.Words saves time and helps you focus on essential information. For more information, check the [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) API documentation.

{{% /alert %}}