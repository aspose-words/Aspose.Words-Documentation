---
title: Som'n Dokument op
second_title: Aspose.Words vir Python via .NET
articleTitle: Som'n Dokument op
linktitle: Som'n Dokument op
type: docs
weight: 20
description: "Som'n dokument op. Aspose.Words for Python vereenvoudig dokumentopsomming met behulp van OpenAI en Google AI modelle deur jou toe te laat om die opsommingslengte te spesifiseer."
url: /af/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Die opsomming van dokumente is'n waardevolle hulpmiddel vir inhoudhersiening, vinnige insigte of die voorbereiding van opsommings. Aspose.Words ondersteun dokumentopsomming met behulp van AI-aangedrewe modelle, wat dit makliker maak om lang teks te verwerk. Hierdie funksie, beskikbaar in die [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) module, integreer gevorderde generatiewe taal modelle van *OpenAI* en *Google*.

U kan verskeie opsies spesifiseer vir die opsomming van dokumentinhoud. Gebruik die [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/) metode om'n opsomming van jou dokument te genereer. Jy kan ook opsommingslengte stel deur die [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/) eienskap te gebruik.

Met Aspose.Words is die implementering van dokumentopsomming eenvoudig. Die volgende kode voorbeeld toon hot om'n documet te som met behulp van GPT - 4o model:

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

Die opsomming van dokumente met Aspose.Words bespaar tyd en help u om op noodsaaklike inligting te fokus. Vir meer inligting, kyk na die [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) API dokumentasie.

{{% /alert %}}