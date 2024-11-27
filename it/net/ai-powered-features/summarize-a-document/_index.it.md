---
title: Riassumere un documento
second_title: Aspose.Words per .NET
articleTitle: Riassumere un documento
linktitle: Riassumere un documento
type: docs
weight: 20
description: "Riassumere un documento. Aspose.Words per .NET semplifica il riepilogo dei documenti utilizzando i modelli OpenAI e Google AI, consentendo di specificare la lunghezza del riepilogo."
url: /it/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Il riepilogo dei documenti è uno strumento prezioso per la revisione dei contenuti, approfondimenti rapidi o la preparazione di abstract. Aspose.Words supporta il riepilogo dei documenti utilizzando modelli basati su AI, semplificando l'elaborazione di testo lungo. Questa funzione, disponibile nello spazio dei nomi [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/), integra modelli di linguaggio generativo avanzati da *OpenAI* e *Google*.

È possibile specificare varie opzioni per il riepilogo del contenuto del documento. Utilizzare il metodo [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/) per generare un riepilogo del documento. È inoltre possibile impostare la lunghezza del riepilogo utilizzando la proprietà [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/).

Con Aspose.Words, l'implementazione del riepilogo dei documenti è semplice. L'esempio di codice seguente mostra hot per sommare un documet utilizzando il modello GPT-4o:

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

La sintesi dei documenti con Aspose.Words consente di risparmiare tempo e consente di concentrarsi sulle informazioni essenziali. Per ulteriori informazioni, controllare la documentazione [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API.

{{% /alert %}}