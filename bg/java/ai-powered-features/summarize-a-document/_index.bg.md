---
title: Обобщаване на документ
second_title: Aspose.Words за Java
articleTitle: Обобщаване на документ
linktitle: Обобщаване на документ
type: docs
weight: 20
description: "Обобщете документ. Aspose.Words за Java опростява обобщаването на документи с помощта на OpenAI и Гугъл AI модели, като ви позволява да зададете дължината на резюмето."
url: /bg/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Обобщаването на документи е ценен инструмент за преглед на съдържанието, бързи прозрения или изготвяне на резюмета. Aspose.Words поддържа обобщаване на документи, използвайки AI-захранвани модели, което улеснява обработката на дълъг текст. Тази функция, налична във функционалността AI Aspose.Words, интегрира разширени генеративни езикови модели от *OpenAI* и *Google*.

Можете да зададете различни опции за обобщаване на съдържанието на документа. Използвайте метода [Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions), за да генерирате резюме на вашия документ. Можете също да зададете дължина на резюмето, като използвате свойството [SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength).

При Aspose.Words обобщаването на документа е лесно. Следващият пример за код показва горещо сумиране на документ, използвайки GPT-4о модел:

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

Обобщаването на документи с Aspose.Words спестява време и Ви помага да се съсредоточите върху основната информация. За повече информация вижте [Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/).

{{% /alert %}}