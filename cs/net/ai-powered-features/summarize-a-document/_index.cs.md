---
title: Shrňte dokument
second_title: Aspose.Words pro .NET
articleTitle: Shrňte dokument
linktitle: Shrňte dokument
type: docs
weight: 20
description: "Shrňte dokument. Aspose.Words pro .NET zjednodušuje sumarizaci dokumentů pomocí modelů OpenAI a Google AI tím, že umožňuje určit délku souhrnu."
url: /cs/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Shrnutí dokumentů je cenným nástrojem pro kontrolu obsahu, rychlé postřehy nebo přípravu abstraktů. Aspose.Words podporuje sumarizaci dokumentů pomocí modelů poháněných AI, což usnadňuje zpracování dlouhého textu. Tato funkce, dostupná v oboru názvů [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/), integruje pokročilé generativní jazykové modely z *OpenAI* a *Google*.

Můžete zadat různé možnosti pro shrnutí obsahu dokumentu. Pomocí metody [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/) Vygenerujte souhrn dokumentu. Můžete také nastavit délku souhrnu pomocí vlastnosti [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/).

S Aspose.Words je shrnutí implementačního dokumentu jednoduché. Následující příklad kódu ukazuje hot summirize documet pomocí modelu GPT-4o:

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

Shrnutí dokumentů pomocí Aspose.Words šetří čas a pomáhá vám soustředit se na základní informace. Další informace najdete v dokumentaci [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API.

{{% /alert %}}