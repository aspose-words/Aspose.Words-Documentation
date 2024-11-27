---
title: Riassumere un documento
second_title: Aspose.Wordsper Python via .NET
articleTitle: Riassumere un documento
linktitle: Riassumere un documento
type: docs
weight: 20
description: "Riassumere un documento. Aspose.Words per Python semplifica il riepilogo dei documenti utilizzando i modelli OpenAI e Google AI, consentendo di specificare la lunghezza del riepilogo."
url: /it/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Il riepilogo dei documenti è uno strumento prezioso per la revisione dei contenuti, approfondimenti rapidi o la preparazione di abstract. Aspose.Words supporta il riepilogo dei documenti utilizzando modelli basati su AI, semplificando l'elaborazione di testo lungo. Questa funzione, disponibile nel modulo [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/), integra modelli di linguaggio generativo avanzati da *OpenAI* e *Google*.

È possibile specificare varie opzioni per il riepilogo del contenuto del documento. Utilizzare il metodo [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/) per generare un riepilogo del documento. È inoltre possibile impostare la lunghezza del riepilogo utilizzando la proprietà [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/).

Con Aspose.Words, l'implementazione del riepilogo dei documenti è semplice. L'esempio di codice seguente mostra hot per sommare un documet utilizzando il modello GPT-4o:

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

La sintesi dei documenti con Aspose.Words consente di risparmiare tempo e consente di concentrarsi sulle informazioni essenziali. Per ulteriori informazioni, controllare la documentazione [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) API.

{{% /alert %}}