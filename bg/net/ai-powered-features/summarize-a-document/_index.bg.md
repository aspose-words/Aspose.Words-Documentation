---
title: Обобщаване на документ
second_title: Aspose.Words за .NET
articleTitle: Обобщаване на документ
linktitle: Обобщаване на документ
type: docs
weight: 20
description: "Обобщете документ. Aspose.Words за .NET опростява обобщаването на документи с помощта на OpenAI и Гугъл AI модели, като ви позволява да зададете дължината на резюмето."
url: /bg/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Обобщаването на документи е ценен инструмент за преглед на съдържанието, бързи прозрения или изготвяне на резюмета. Aspose.Words поддържа обобщаване на документи, използвайки AI - захранвани модели, което улеснява обработката на дълъг текст. Тази функция, налична в пространството [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/), интегрира разширени генеративни езикови модели от *OpenAI* и *Google*.

Можете да зададете различни опции за обобщаване на съдържанието на документа. Използвайте метода [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/), за да генерирате резюме на вашия документ. Можете също да зададете дължина на резюмето, като използвате свойството [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/).

При Aspose.Words обобщаването на документа е лесно. Следващият пример за код показва горещо сумиране на документ, използвайки GPT-4о модел:

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

Обобщаването на документи с Aspose.Words спестява време и Ви помага да се съсредоточите върху основната информация. За повече информация вижте документацията [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API.

{{% /alert %}}