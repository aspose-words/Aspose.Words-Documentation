---
title: Podsumuj dokument
second_title: Aspose.Words dla Java
articleTitle: Podsumuj dokument
linktitle: Podsumuj dokument
type: docs
weight: 20
description: "Podsumuj dokument. Aspose.Words dla Java upraszcza podsumowanie dokumentów za pomocą modeli OpenAI i Google AI, umożliwiając określenie długości podsumowania."
url: /pl/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Podsumowanie dokumentów jest cennym narzędziem do przeglądania treści, szybkiego wglądu lub przygotowywania streszczeń. Aspose.Words obsługuje podsumowanie dokumentów przy użyciu modeli opartych na AI, co ułatwia przetwarzanie długiego tekstu. Ta funkcja, dostępna w funkcji Aspose.Words opartej na AI, integruje zaawansowane generatywne modele językowe z *OpenAI* i *Google*.

Możesz określić różne opcje podsumowania zawartości dokumentu. Użyj metody [Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions), aby wygenerować podsumowanie dokumentu. Możesz także ustawić długość podsumowania za pomocą właściwości [SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength).

Dzięki Aspose.Words implementacja podsumowania dokumentu jest prosta. Poniższy przykład kodu pokazuje hot do summiryze documet przy użyciu modelu GPT - 4o:

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

Podsumowanie dokumentów za pomocą Aspose.Words oszczędza czas i pomaga skupić się na podstawowych informacjach. Aby uzyskać więcej informacji, sprawdź [Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/).

{{% /alert %}}