---
title: Ein Dokument zusammenfassen
second_title: Aspose.Words für .NET
articleTitle: Ein Dokument zusammenfassen
linktitle: Ein Dokument zusammenfassen
type: docs
weight: 20
description: "Fassen Sie ein Dokument zusammen. Aspose.Words für .NET vereinfacht die Dokumentzusammenfassung mit OpenAI- und Google AI-Modellen, indem Sie die Länge der Zusammenfassung angeben können."
url: /de/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Das Zusammenfassen von Dokumenten ist ein wertvolles Werkzeug für die Inhaltsprüfung, schnelle Einblicke oder das Erstellen von Abstracts. Aspose.Words unterstützt die Dokumentzusammenfassung mit AI-basierten Modellen, wodurch die Verarbeitung von Langtext erleichtert wird. Diese Funktion, die im Namespace [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) verfügbar ist, integriert erweiterte generative Sprachmodelle aus *OpenAI* und *Google*.

Sie können verschiedene Optionen für die Zusammenfassung von Dokumentinhalten angeben. Verwenden Sie die Methode [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/), um eine Zusammenfassung Ihres Dokuments zu generieren. Sie können die Zusammenfassungslänge auch mit der Eigenschaft [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/) festlegen.

Mit Aspose.Words ist die Implementierung der Dokumentzusammenfassung unkompliziert. Das folgende Codebeispiel zeigt, wie schnell ein Dokument mit dem GPT -4o-Modell summiert werden kann:

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

Das Zusammenfassen von Dokumenten mit Aspose.Words spart Zeit und hilft Ihnen, sich auf wesentliche Informationen zu konzentrieren. Weitere Informationen finden Sie in der Dokumentation zu [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API.

{{% /alert %}}