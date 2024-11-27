---
title: Resumir um documento
second_title: Aspose.Words para Java
articleTitle: Resumir um documento
linktitle: Resumir um documento
type: docs
weight: 20
description: "Resuma um documento. Aspose.Words para Java simplifica a sumarização de documentos usando os modelos OpenAI e Google AI, permitindo que você especifique o comprimento do resumo."
url: /pt/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Resumir documentos é uma ferramenta valiosa para revisão de conteúdo, insights rápidos ou preparação de resumos. Aspose.Words suporta sumarização de documentos usando modelos com AI, facilitando o processamento de texto longo. Esta funcionalidade, disponível na funcionalidade AI-based Aspose.Words, integra modelos avançados de linguagem generativa de *OpenAI* e *Google*.

Você pode especificar várias opções para resumir o conteúdo do documento. Use o método [Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions) para gerar um resumo do documento. Você também pode definir o comprimento do resumo usando a propriedade [SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength).

Com Aspose.Words, a implementação do resumo do documento é simples. O exemplo de código a seguir mostra hot para resumir um documet usando o modelo GPT - 4o:

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

Resumir documentos com Aspose.Words economiza tempo e ajuda você a se concentrar em informações essenciais. Para mais informações, verifique o [Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/).

{{% /alert %}}