---
title: 总结文档
second_title: Aspose.Words为.NET
articleTitle: 总结文档
linktitle: 总结文档
type: docs
weight: 20
description: "总结一个文档。 Aspose.Wordsfor.NET通过允许您指定摘要长度，简化了使用OpenAI和GoogleAI模型的文档摘要。"
url: /zh/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

摘要文档是内容审查，快速见解或准备摘要的宝贵工具。 Aspose.Words支持使用AI支持的模型进行文档摘要，从而更容易处理长文本。 此功能在[Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/)命名空间中可用，集成了*OpenAI*和*Google*中的高级生成语言模型。

您可以指定用于汇总文档内容的各种选项。 使用[Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/)方法生成文档摘要。 您还可以使用[SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/)属性设置摘要长度。

使用Aspose.Words，实现文档摘要非常简单。 下面的代码示例显示了使用GPT-4o模型对文档集进行汇总的热:

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

使用Aspose.Words汇总文档可以节省时间并帮助您专注于基本信息。 有关更多信息，请查看[Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/)API文档。

{{% /alert %}}