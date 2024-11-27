---
title: Узагальнення документа
second_title: Aspose.Words для .NET
articleTitle: Узагальнення документа
linktitle: Узагальнення документа
type: docs
weight: 20
description: "Узагальнення документа. Aspose.Words для .NET полегшує Узагальнення документа за допомогою моделей OpenAI та Google AI, дозволяючи вказати довжину резюме."
url: /uk/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Узагальнення документів-це цінний інструмент для аналізу змісту, швидкого аналізу інформації або підготовки тез. Aspose.Words підтримує Узагальнення документів за допомогою моделей на основі AI, що полегшує обробку довгого тексту. Ця функція, доступна в просторі імен [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/), поєднує розширені моделі генеративної мови з *OpenAI* та *Google*.

Ви можете вказати різні параметри для узагальнення вмісту документа. Використовуйте метод [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/) для створення короткої інформації про ваш документ. Ви також можете задати довжину короткої інформації, використовуючи властивість [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/).

За допомогою Aspose.Words спрощується реалізація Узагальнення документа. Наступний приклад коду показує, як узагальнити документ за допомогою моделі GPT - 4o:

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

Узагальнення документів за допомогою Aspose.Words економить час і допомагає зосередитися на важливій інформації. Для отримання додаткової інформації перегляньте документацію [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API.

{{% /alert %}}