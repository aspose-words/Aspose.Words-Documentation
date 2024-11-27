---
title: Обобщение документа
second_title: Aspose.Words для .NET
articleTitle: Обобщение документа
linktitle: Обобщение документа
type: docs
weight: 20
description: "Обобщение документа. Aspose.Words для .NET упрощает обобщение документа с помощью моделей OpenAI и Google AI, позволяя указать длину резюме."
url: /ru/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Обобщение документов - это ценный инструмент для анализа содержания, быстрого анализа информации или подготовки тезисов. Aspose.Words поддерживает обобщение документов с использованием моделей, основанных на AI, что упрощает обработку длинного текста. Эта функция, доступная в пространстве имен [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/), объединяет расширенные модели порождающего языка из *OpenAI* и *Google*.

Вы можете указать различные параметры для обобщения содержимого документа. Используйте метод [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/) для создания краткой информации о вашем документе. Вы также можете задать длину краткой информации, используя свойство [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/).

С помощью Aspose.Words упрощается реализация обобщения документа. В следующем примере кода показано, как обобщить документ, используя модель GPT-4o:

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

Обобщение документов с помощью Aspose.Words экономит время и помогает сосредоточиться на важной информации. Для получения дополнительной информации ознакомьтесь с документацией [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API.

{{% /alert %}}