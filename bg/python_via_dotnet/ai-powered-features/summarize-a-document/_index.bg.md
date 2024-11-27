---
title: Обобщаване на документ
second_title: Aspose.Words за Python via .NET
articleTitle: Обобщаване на документ
linktitle: Обобщаване на документ
type: docs
weight: 20
description: "Обобщете документ. Aspose.Words за Python опростява обобщаването на документи с помощта на OpenAI и Гугъл AI модели, като ви позволява да зададете дължината на резюмето."
url: /bg/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Обобщаването на документи е ценен инструмент за преглед на съдържанието, бързи прозрения или изготвяне на резюмета. Aspose.Words поддържа обобщаване на документи, използвайки AI - захранвани модели, което улеснява обработката на дълъг текст. Тази функция, налична в модула [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/), интегрира разширени генеративни езикови модели от *OpenAI* и *Google*.

Можете да зададете различни опции за обобщаване на съдържанието на документа. Използвайте метода [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/), за да генерирате резюме на вашия документ. Можете също да зададете дължина на резюмето, като използвате свойството [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/).

При Aspose.Words обобщаването на документа е лесно. Следващият пример за код показва горещо сумиране на документ, използвайки GPT-4о модел:

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

Обобщаването на документи с Aspose.Words спестява време и Ви помага да се съсредоточите върху основната информация. За повече информация вижте документацията [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) API.

{{% /alert %}}