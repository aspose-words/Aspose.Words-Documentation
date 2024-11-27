---
title: Resumir un Documento
second_title: Aspose.Words por .NET
articleTitle: Resumir un Documento
linktitle: Resumir un Documento
type: docs
weight: 20
description: "Resumir un documento. Aspose.Words para .NET simplifica el resumen de documentos utilizando los modelos OpenAI y Google AI al permitirle especificar la longitud del resumen."
url: /es/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Resumir documentos es una herramienta valiosa para revisar contenido, obtener información rápida o preparar resúmenes. Aspose.Words admite el resumen de documentos mediante modelos impulsados por AI, lo que facilita el procesamiento de texto largo. Esta función, disponible en el espacio de nombres [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/), integra modelos avanzados de lenguaje generativo de *OpenAI* y *Google*.

Puede especificar varias opciones para resumir el contenido del documento. Utilice el método [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/) para generar un resumen de su documento. También puede establecer la longitud del resumen utilizando la propiedad [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/).

Con Aspose.Words, implementar el resumen de documentos es sencillo. El siguiente ejemplo de código muestra hot para sumar un documento usando el modelo GPT-4o:

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

Resumir documentos con Aspose.Words ahorra tiempo y le ayuda a concentrarse en la información esencial. Para obtener más información, consulte la documentación de [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API.

{{% /alert %}}