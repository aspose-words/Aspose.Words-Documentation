---
title: Узагальнення документа
second_title: Aspose.Words для Python via .NET
articleTitle: Узагальнення документа
linktitle: Узагальнення документа
type: docs
weight: 20
description: "Узагальнення документа. Aspose.Words для Python полегшує Узагальнення документа за допомогою моделей OpenAI та Google AI, дозволяючи вказати довжину резюме."
url: /uk/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Узагальнення документів-це цінний інструмент для аналізу змісту, швидкого аналізу інформації або підготовки тез. Aspose.Words підтримує Узагальнення документів за допомогою моделей на основі AI, що полегшує обробку довгого тексту. Ця функція, доступна в модулі [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/), поєднує розширені моделі мови генераторів з *OpenAI* та *Google*.

Ви можете вказати різні параметри для узагальнення вмісту документа. Використовуйте метод [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/) для створення короткої інформації про ваш документ. Ви також можете задати довжину короткої інформації, використовуючи властивість [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/).

За допомогою Aspose.Words спрощується реалізація Узагальнення документа. Наступний приклад коду показує, як узагальнити документ за допомогою моделі GPT - 4o:

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

Узагальнення документів за допомогою Aspose.Words економить час і допомагає зосередитися на важливій інформації. Для отримання додаткової інформації перегляньте документацію [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) API.

{{% /alert %}}