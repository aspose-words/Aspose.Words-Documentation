---
title: Résumer un document
second_title: Aspose.Words pour .NET
articleTitle: Résumer un document
linktitle: Résumer un document
type: docs
weight: 20
description: "Résumez un document. Aspose.Words pour .NET simplifie la synthèse des documents à l'aide des modèles OpenAI et Google AI en vous permettant de spécifier la longueur du résumé."
url: /fr/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

La synthèse des documents est un outil précieux pour l'examen du contenu, des informations rapides ou la préparation des résumés. Aspose.Words prend en charge la synthèse des documents à l'aide de modèles alimentés par AI, ce qui facilite le traitement du texte long. Cette fonctionnalité, disponible dans l'espace de noms [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/), intègre des modèles de langage génératif avancés de *OpenAI* et *Google*.

Vous pouvez spécifier diverses options pour résumer le contenu du document. Utilisez la méthode [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/) pour générer un résumé de votre document. Vous pouvez également définir la longueur du résumé à l'aide de la propriété [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/).

Avec Aspose.Words, la mise en œuvre de la synthèse des documents est simple. L'exemple de code suivant montre à chaud pour résumer un document en utilisant le modèle GPT-4o:

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

Résumer des documents avec Aspose.Words vous fait gagner du temps et vous aide à vous concentrer sur les informations essentielles. Pour plus d'informations, consultez la documentation [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API.

{{% /alert %}}