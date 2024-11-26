---
title: Riassumere un documento
second_title: Aspose.Words per Java
articleTitle: Riassumere un documento
linktitle: Riassumere un documento
type: docs
weight: 20
description: "Riassumere un documento. Aspose.Words per Java semplifica il riepilogo dei documenti utilizzando i modelli OpenAI e Google AI, consentendo di specificare la lunghezza del riepilogo."
url: /it/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Il riepilogo dei documenti è uno strumento prezioso per la revisione dei contenuti, approfondimenti rapidi o la preparazione di abstract. Aspose.Words supporta il riepilogo dei documenti utilizzando modelli basati su AI, semplificando l'elaborazione di testo lungo. Questa funzione, disponibile nella funzionalità Aspose.Words basata su AI, integra modelli di linguaggio generativo avanzati da *OpenAI* e *Google*.

È possibile specificare varie opzioni per il riepilogo del contenuto del documento. Utilizzare il metodo [Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions) per generare un riepilogo del documento. È anche possibile impostare la lunghezza del riepilogo utilizzando la proprietà [SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength).

Con Aspose.Words, l'implementazione del riepilogo dei documenti è semplice. L'esempio di codice seguente mostra hot per sommare un documet utilizzando il modello GPT-4o:

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

La sintesi dei documenti con Aspose.Words consente di risparmiare tempo e consente di concentrarsi sulle informazioni essenziali. Per ulteriori informazioni, controllare [Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/).

{{% /alert %}}