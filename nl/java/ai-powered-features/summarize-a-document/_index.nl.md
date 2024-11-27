---
title: Een Document samenvatten
second_title: Aspose.Words voor Java
articleTitle: Een Document samenvatten
linktitle: Een Document samenvatten
type: docs
weight: 20
description: "Een document samenvatten. Aspose.Words voor Java vereenvoudigt het samenvatten van documenten met behulp van OpenAI - en Google AI - modellen door u toe te staan de lengte van de samenvatting op te geven."
url: /nl/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Het samenvatten van documenten is een waardevol hulpmiddel voor het beoordelen van inhoud, Snelle inzichten of het opstellen van samenvattingen. Aspose.Words ondersteunt documentsamenvatting met behulp van AI-aangedreven modellen, waardoor het gemakkelijker wordt om lange tekst te verwerken. Deze functie, beschikbaar in de AI-gebaseerde Aspose.Words functionaliteit, integreert geavanceerde generatieve taalmodellen van *OpenAI* en *Google*.

U kunt verschillende opties opgeven voor het samenvatten van documentinhoud. Gebruik de methode [Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions) om een samenvatting van uw document te genereren. U kunt ook de lengte van de samenvatting instellen met de Eigenschap [SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength).

Met Aspose.Words is het implementeren van documentsamenvatting eenvoudig. Het volgende code voorbeeld toont hot om een document te summirizen met behulp van GPT-4o model:

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

Het samenvatten van documenten met Aspose.Words bespaart tijd en helpt u zich te concentreren op essentiële informatie. Kijk voor meer informatie op [Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/).

{{% /alert %}}