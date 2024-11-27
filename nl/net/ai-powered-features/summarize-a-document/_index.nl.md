---
title: Een Document samenvatten
second_title: Aspose.Words voor .NET
articleTitle: Een Document samenvatten
linktitle: Een Document samenvatten
type: docs
weight: 20
description: "Een document samenvatten. Aspose.Words voor .NET vereenvoudigt het samenvatten van documenten met behulp van OpenAI - en Google AI - modellen door u toe te staan de lengte van de samenvatting op te geven."
url: /nl/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Het samenvatten van documenten is een waardevol hulpmiddel voor het beoordelen van inhoud, Snelle inzichten of het opstellen van samenvattingen. Aspose.Words ondersteunt documentsamenvatting met behulp van AI-aangedreven modellen, waardoor het gemakkelijker wordt om lange tekst te verwerken. Deze functie, beschikbaar in de [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) naamruimte, integreert geavanceerde generatieve taalmodellen van *OpenAI* en *Google*.

U kunt verschillende opties opgeven voor het samenvatten van documentinhoud. Gebruik de methode [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/) om een samenvatting van uw document te genereren. U kunt ook de lengte van de samenvatting instellen met de eigenschap [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/).

Met Aspose.Words is het implementeren van documentsamenvatting eenvoudig. Het volgende code voorbeeld toont hot om een document te summirizen met behulp van GPT-4o model:

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

Het samenvatten van documenten met Aspose.Words bespaart tijd en helpt u zich te concentreren op essentiële informatie. Raadpleeg de [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API documentatie voor meer informatie.

{{% /alert %}}