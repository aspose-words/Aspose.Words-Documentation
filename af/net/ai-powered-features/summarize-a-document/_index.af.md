---
title: Som'n Dokument op
second_title: Aspose.Words vir .NET
articleTitle: Som'n Dokument op
linktitle: Som'n Dokument op
type: docs
weight: 20
description: "Som'n dokument op. Aspose.Words for .NET vereenvoudig dokumentopsomming met behulp van OpenAI en Google AI modelle deur jou toe te laat om die opsommingslengte te spesifiseer."
url: /af/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Die opsomming van dokumente is'n waardevolle hulpmiddel vir inhoudhersiening, vinnige insigte of die voorbereiding van opsommings. Aspose.Words ondersteun dokumentopsomming met behulp van AI-aangedrewe modelle, wat dit makliker maak om lang teks te verwerk. Hierdie funksie, beskikbaar in die [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) naamruimte, integreer gevorderde generatiewe taal modelle van *OpenAI* en *Google*.

U kan verskeie opsies spesifiseer vir die opsomming van dokumentinhoud. Gebruik die [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/) metode om'n opsomming van jou dokument te genereer. Jy kan ook opsommingslengte stel deur die [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/) eienskap te gebruik.

Met Aspose.Words is die implementering van dokumentopsomming eenvoudig. Die volgende kode voorbeeld toon hot om'n documet te som met behulp van GPT - 4o model:

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

Die opsomming van dokumente met Aspose.Words bespaar tyd en help u om op noodsaaklike inligting te fokus. Vir meer inligting, kyk na die [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API dokumentasie.

{{% /alert %}}