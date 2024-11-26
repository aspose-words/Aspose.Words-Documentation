---
title: Обобщение документа
second_title: Aspose.Words для Python via .NET
articleTitle: Обобщение документа
linktitle: Обобщение документа
type: docs
weight: 20
description: "Обобщение документа. Aspose.Words для Python упрощает обобщение документа с помощью моделей OpenAI и Google AI, позволяя указать длину резюме."
url: /ru/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Обобщение документов - это ценный инструмент для анализа содержания, быстрого анализа информации или подготовки тезисов. Aspose.Words поддерживает обобщение документов с использованием моделей, основанных на AI, что упрощает обработку длинного текста. Эта функция, доступная в модуле [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/), объединяет расширенные модели порождающего языка из *OpenAI* и *Google*.

Вы можете указать различные параметры для обобщения содержимого документа. Используйте метод [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/) для создания краткой информации о вашем документе. Вы также можете задать длину краткой информации, используя свойство [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/).

С помощью Aspose.Words упрощается реализация обобщения документа. В следующем примере кода показано, как обобщить документ, используя модель GPT-4o:

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

Обобщение документов с помощью Aspose.Words экономит время и помогает сосредоточиться на важной информации. Для получения дополнительной информации ознакомьтесь с документацией [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) API.

{{% /alert %}}