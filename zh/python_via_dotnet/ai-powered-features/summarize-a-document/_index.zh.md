---
title: 总结文档
second_title: Aspose.Words为Python via .NET
articleTitle: 总结文档
linktitle: 总结文档
type: docs
weight: 20
description: "总结一个文档。 Aspose.WordsforPython通过允许您指定摘要长度，使用OpenAI和GoogleAI模型简化文档摘要。"
url: /zh/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

摘要文档是内容审查，快速见解或准备摘要的宝贵工具。 Aspose.Words支持使用AI支持的模型进行文档摘要，从而更容易处理长文本。 此功能在[aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/)模块中可用，集成了*OpenAI*和*Google*中的高级生成语言模型。

您可以指定用于汇总文档内容的各种选项。 使用[summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/)方法生成文档摘要。 您还可以使用[summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/)属性设置摘要长度。

使用Aspose.Words，实现文档摘要非常简单。 下面的代码示例显示了使用GPT-4o模型对文档集进行汇总的热:

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

使用Aspose.Words汇总文档可以节省时间并帮助您专注于基本信息。 有关更多信息，请查看[aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/)API文档。

{{% /alert %}}