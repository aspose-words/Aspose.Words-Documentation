---
title: Обобщение документа
second_title: Aspose.Words для Java
articleTitle: Обобщение документа
linktitle: Обобщение документа
type: docs
weight: 20
description: "Обобщение документа. Aspose.Words для Java упрощает обобщение документа с помощью моделей OpenAI и Google AI, позволяя указать длину резюме."
url: /ru/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Обобщение документов - это ценный инструмент для анализа содержания, получения быстрой информации или подготовки тезисов. Aspose.Words поддерживает обобщение документов с использованием моделей, основанных на AI, что упрощает обработку длинного текста. Эта функция, доступная в функционале Aspose.Words, основанном на AI, объединяет расширенные модели порождающего языка из *OpenAI* и *Google*.

Вы можете указать различные параметры для обобщения содержимого документа. Используйте метод [Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions) для создания краткой информации о вашем документе. Вы также можете задать длину краткой информации, используя свойство [SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength).

С помощью Aspose.Words упрощается реализация обобщения документа. В следующем примере кода показано, как обобщить документ, используя модель GPT-4o:

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

Обобщение документов с помощью Aspose.Words экономит время и помогает сосредоточиться на важной информации. Для получения дополнительной информации проверьте [Java API документация](https://reference.aspose.com/words/java/com.aspose.words/).

{{% /alert %}}