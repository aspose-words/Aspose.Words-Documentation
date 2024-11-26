---
title: Som'n Dokument op
second_title: Aspose.Words vir Java
articleTitle: Som'n Dokument op
linktitle: Som'n Dokument op
type: docs
weight: 20
description: "Som'n dokument op. Aspose.Words for Java vereenvoudig dokumentopsomming met behulp van OpenAI en Google AI modelle deur jou toe te laat om die opsommingslengte te spesifiseer."
url: /af/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Die opsomming van dokumente is'n waardevolle hulpmiddel vir inhoudhersiening, vinnige insigte of die voorbereiding van opsommings. Aspose.Words ondersteun dokumentopsomming met behulp van AI-aangedrewe modelle, wat dit makliker maak om lang teks te verwerk. Hierdie funksie, beskikbaar in die AI-gebaseerde Aspose.Words funksionaliteit, integreer gevorderde generatiewe taal modelle van *OpenAI* en *Google*.

U kan verskeie opsies spesifiseer vir die opsomming van dokumentinhoud. Gebruik die [Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions) metode om'n opsomming van jou dokument te genereer. Jy kan ook opsommingslengte stel deur die [SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength) eienskap te gebruik.

Met Aspose.Words is die implementering van dokumentopsomming eenvoudig. Die volgende kode voorbeeld toon hot om'n documet te som met behulp van GPT - 4o model:

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

Die opsomming van dokumente met Aspose.Words bespaar tyd en help u om op noodsaaklike inligting te fokus. Vir meer inligting, kyk na die [Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/).

{{% /alert %}}