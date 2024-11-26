---
title: Rezumați un Document
second_title: Aspose.Words pentru Java
articleTitle: Rezumați un Document
linktitle: Rezumați un Document
type: docs
weight: 20
description: "Rezumați un document. Aspose.Words pentru Java simplifică rezumarea documentelor folosind modelele OpenAI și Google AI, permițându-vă să specificați lungimea rezumatului."
url: /ro/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Rezumarea documentelor este un instrument valoros pentru revizuirea conținutului, informații rapide sau pregătirea rezumatelor. Aspose.Words acceptă rezumarea documentelor folosind modele alimentate cu AI, facilitând procesarea textului lung. Această caracteristică, disponibilă în funcționalitatea Aspose.Words bazată pe AI, integrează modele avansate de limbaj generativ din *OpenAI* și *Google*.

Puteți specifica diverse opțiuni pentru rezumarea conținutului documentului. Utilizați metoda [Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions) pentru a genera un rezumat al documentului. De asemenea, puteți seta lungimea rezumatului folosind proprietatea [SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength).

Cu Aspose.Words, implementarea rezumării documentelor este simplă. Următorul exemplu de cod arată hot pentru a rezuma un document folosind modelul GPT - 4o:

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

Rezumarea documentelor cu Aspose.Words economisește timp și vă ajută să vă concentrați asupra informațiilor esențiale. Pentru mai multe informații, verificați [Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/).

{{% /alert %}}