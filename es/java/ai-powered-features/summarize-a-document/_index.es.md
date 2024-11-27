---
title: Resumir un Documento
second_title: Aspose.Words por Java
articleTitle: Resumir un Documento
linktitle: Resumir un Documento
type: docs
weight: 20
description: "Resumir un documento. Aspose.Words para Java simplifica el resumen de documentos utilizando los modelos OpenAI y Google AI al permitirle especificar la longitud del resumen."
url: /es/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Resumir documentos es una herramienta valiosa para revisar contenido, obtener información rápida o preparar resúmenes. Aspose.Words admite el resumen de documentos mediante modelos impulsados por AI, lo que facilita el procesamiento de texto largo. Esta función, disponible en la funcionalidad AI basada en Aspose.Words, integra modelos avanzados de lenguaje generativo de *OpenAI* y *Google*.

Puede especificar varias opciones para resumir el contenido del documento. Utilice el método [Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions) para generar un resumen de su documento. También puede establecer la longitud del resumen utilizando la propiedad [SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength).

Con Aspose.Words, implementar el resumen de documentos es sencillo. El siguiente ejemplo de código muestra hot para sumar un documento usando el modelo GPT-4o:

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

Resumir documentos con Aspose.Words ahorra tiempo y le ayuda a concentrarse en la información esencial. Para obtener más información, marque [Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/).

{{% /alert %}}