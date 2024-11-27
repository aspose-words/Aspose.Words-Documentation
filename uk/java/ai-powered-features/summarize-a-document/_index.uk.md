---
title: Узагальнення документа
second_title: Aspose.Words для Java
articleTitle: Узагальнення документа
linktitle: Узагальнення документа
type: docs
weight: 20
description: "Узагальнення документа. Aspose.Words для Java полегшує Узагальнення документа за допомогою моделей OpenAI та Google AI, дозволяючи вказати довжину резюме."
url: /uk/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Узагальнення документів-це цінний інструмент для аналізу змісту, швидкого аналізу інформації або підготовки тез. Aspose.Words підтримує Узагальнення документів за допомогою моделей на основі AI, що полегшує обробку довгого тексту. Ця функція, доступна у функціоналі Aspose.Words, заснованому на AI, поєднує розширені моделі генеративної мови з *OpenAI* та *Google*.

Ви можете вказати різні параметри для узагальнення вмісту документа. Використовуйте метод [Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions) для створення короткої інформації про ваш документ. Ви також можете задати довжину короткої інформації, використовуючи властивість [SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength).

За допомогою Aspose.Words спрощується реалізація Узагальнення документа. Наступний приклад коду показує, як узагальнити документ за допомогою моделі GPT - 4o:

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

Узагальнення документів за допомогою Aspose.Words економить час і допомагає зосередитися на важливій інформації. Для отримання додаткової інформації перевірте [Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/).

{{% /alert %}}