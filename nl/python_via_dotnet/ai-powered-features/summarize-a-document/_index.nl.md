---
title: Een Document samenvatten
second_title: Aspose.Words Voor Python via .NET
articleTitle: Een Document samenvatten
linktitle: Een Document samenvatten
type: docs
weight: 20
description: "Een document samenvatten. Aspose.Words voor Python vereenvoudigt het samenvatten van documenten met behulp van OpenAI - en Google AI - modellen door u toe te staan de lengte van de samenvatting op te geven."
url: /nl/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Het samenvatten van documenten is een waardevol hulpmiddel voor het beoordelen van inhoud, Snelle inzichten of het opstellen van samenvattingen. Aspose.Words ondersteunt documentsamenvatting met behulp van AI-aangedreven modellen, waardoor het gemakkelijker wordt om lange tekst te verwerken. Deze functie, beschikbaar in de module [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/), integreert geavanceerde generatieve taalmodellen van *OpenAI* en *Google*.

U kunt verschillende opties opgeven voor het samenvatten van documentinhoud. Gebruik de methode [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/) om een samenvatting van uw document te genereren. U kunt ook de lengte van de samenvatting instellen met de eigenschap [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/).

Met Aspose.Words is het implementeren van documentsamenvatting eenvoudig. Het volgende code voorbeeld toont hot om een document te summirizen met behulp van GPT-4o model:

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

Het samenvatten van documenten met Aspose.Words bespaart tijd en helpt u zich te concentreren op essentiële informatie. Raadpleeg de [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) API documentatie voor meer informatie.

{{% /alert %}}