---
title: 总结文档
second_title: Aspose.Words为Java
articleTitle: 总结文档
linktitle: 总结文档
type: docs
weight: 20
description: "总结一个文档。 Aspose.WordsforJava通过允许您指定摘要长度，使用OpenAI和GoogleAI模型简化文档摘要。"
url: /zh/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

摘要文档是内容审查，快速见解或准备摘要的宝贵工具。 Aspose.Words支持使用AI支持的模型进行文档摘要，从而更容易处理长文本。 此功能在基于AI的Aspose.Words功能中可用，集成了来自*OpenAI*和*Google*的高级生成语言模型。

您可以指定用于汇总文档内容的各种选项。 使用[Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions)方法生成文档摘要。 您还可以使用[SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength)属性设置摘要长度。

使用Aspose.Words，实现文档摘要非常简单。 下面的代码示例显示了使用GPT-4o模型对文档集进行汇总的热:

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

使用Aspose.Words汇总文档可以节省时间并帮助您专注于基本信息。 有关更多信息，请检查[Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/)。

{{% /alert %}}