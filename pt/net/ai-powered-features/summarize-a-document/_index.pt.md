---
title: Resumir um documento
second_title: Aspose.Words para .NET
articleTitle: Resumir um documento
linktitle: Resumir um documento
type: docs
weight: 20
description: "Resuma um documento. Aspose.Words para .NET simplifica a sumarização de documentos usando os modelos OpenAI e Google AI, permitindo que você especifique o comprimento do resumo."
url: /pt/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Resumir documentos é uma ferramenta valiosa para revisão de conteúdo, insights rápidos ou preparação de resumos. Aspose.Words suporta sumarização de documentos usando modelos com AI, facilitando o processamento de texto longo. Este recurso, disponível no namespace [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/), integra modelos avançados de linguagem generativa de *OpenAI* e *Google*.

Você pode especificar várias opções para resumir o conteúdo do documento. Use o método [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/) para gerar um resumo do seu documento. Você também pode definir o comprimento do resumo usando a propriedade [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/).

Com Aspose.Words, a implementação do resumo do documento é simples. O exemplo de código a seguir mostra hot para resumir um documet usando o modelo GPT - 4o:

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

Resumir documentos com Aspose.Words economiza tempo e ajuda você a se concentrar em informações essenciais. Para obter mais informações, consulte a documentação [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API.

{{% /alert %}}