---
title: Podsumuj dokument
second_title: Aspose.Words dla .NET
articleTitle: Podsumuj dokument
linktitle: Podsumuj dokument
type: docs
weight: 20
description: "Podsumuj dokument. Aspose.Words dla .NET upraszcza podsumowanie dokumentów za pomocą modeli OpenAI i Google AI, umożliwiając określenie długości podsumowania."
url: /pl/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Podsumowanie dokumentów jest cennym narzędziem do przeglądania treści, szybkiego wglądu lub przygotowywania streszczeń. Aspose.Words obsługuje podsumowanie dokumentów przy użyciu modeli opartych na AI, co ułatwia przetwarzanie długiego tekstu. Ta funkcja, dostępna w przestrzeni nazw [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/), integruje zaawansowane generatywne modele językowe z *OpenAI* i *Google*.

Możesz określić różne opcje podsumowania zawartości dokumentu. Użyj metody [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/), aby wygenerować podsumowanie dokumentu. Możesz także ustawić długość podsumowania za pomocą właściwości [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/).

Dzięki Aspose.Words implementacja podsumowania dokumentu jest prosta. Poniższy przykład kodu pokazuje hot do summiryze documet przy użyciu modelu GPT - 4o:

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

Podsumowanie dokumentów za pomocą Aspose.Words oszczędza czas i pomaga skupić się na podstawowych informacjach. Aby uzyskać więcej informacji, sprawdź dokumentację [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API.

{{% /alert %}}