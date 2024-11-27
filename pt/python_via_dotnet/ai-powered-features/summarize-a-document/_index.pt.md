---
title: Resumir um documento
second_title: Aspose.Words Para Python via .NET
articleTitle: Resumir um documento
linktitle: Resumir um documento
type: docs
weight: 20
description: "Resuma um documento. Aspose.Words para Python simplifica a sumarização de documentos usando os modelos OpenAI e Google AI, permitindo que você especifique o comprimento do resumo."
url: /pt/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Resumir documentos é uma ferramenta valiosa para revisão de conteúdo, insights rápidos ou preparação de resumos. Aspose.Words suporta sumarização de documentos usando modelos com AI, facilitando o processamento de texto longo. Esta funcionalidade, disponível no módulo [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/), integra modelos avançados de linguagem generativa de *OpenAI* e *Google*.

Você pode especificar várias opções para resumir o conteúdo do documento. Use o método [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/) para gerar um resumo do seu documento. Você também pode definir o comprimento do resumo usando a propriedade [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/).

Com Aspose.Words, a implementação do resumo do documento é simples. O exemplo de código a seguir mostra hot para resumir um documet usando o modelo GPT - 4o:

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

Resumir documentos com Aspose.Words economiza tempo e ajuda você a se concentrar em informações essenciais. Para obter mais informações, consulte a documentação [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) API.

{{% /alert %}}