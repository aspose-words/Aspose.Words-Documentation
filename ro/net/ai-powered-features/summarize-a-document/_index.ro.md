---
title: Rezumați un Document
second_title: Aspose.Words pentru .NET
articleTitle: Rezumați un Document
linktitle: Rezumați un Document
type: docs
weight: 20
description: "Rezumați un document. Aspose.Words pentru .NET simplifică rezumarea documentelor folosind modelele OpenAI și Google AI, permițându-vă să specificați lungimea rezumatului."
url: /ro/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Rezumarea documentelor este un instrument valoros pentru revizuirea conținutului, informații rapide sau pregătirea rezumatelor. Aspose.Words acceptă rezumarea documentelor folosind modele alimentate cu AI, facilitând procesarea textului lung. Această caracteristică, disponibilă în spațiul de nume [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/), integrează modele avansate de limbaj generativ din *OpenAI* și *Google*.

Puteți specifica diverse opțiuni pentru rezumarea conținutului documentului. Utilizați metoda [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/) pentru a genera un rezumat al documentului. De asemenea, puteți seta lungimea rezumatului folosind proprietatea [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/).

Cu Aspose.Words, implementarea rezumării documentelor este simplă. Următorul exemplu de cod arată hot pentru a rezuma un document folosind modelul GPT - 4o:

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

Rezumarea documentelor cu Aspose.Words economisește timp și vă ajută să vă concentrați asupra informațiilor esențiale. Pentru mai multe informații, verificați documentația [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API.

{{% /alert %}}