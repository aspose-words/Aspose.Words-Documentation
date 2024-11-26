---
title: Ein Dokument zusammenfassen
second_title: Aspose.Words für Java
articleTitle: Ein Dokument zusammenfassen
linktitle: Ein Dokument zusammenfassen
type: docs
weight: 20
description: "Fassen Sie ein Dokument zusammen. Aspose.Words für Java vereinfacht die Dokumentzusammenfassung mit OpenAI- und Google AI-Modellen, indem Sie die Länge der Zusammenfassung angeben können."
url: /de/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Das Zusammenfassen von Dokumenten ist ein wertvolles Werkzeug für die Inhaltsprüfung, schnelle Einblicke oder das Erstellen von Abstracts. Aspose.Words unterstützt die Dokumentzusammenfassung mit AI-basierten Modellen, wodurch die Verarbeitung von Langtext erleichtert wird. Diese Funktion, die in der AI-basierten Aspose.Words-Funktionalität verfügbar ist, integriert erweiterte generative Sprachmodelle aus *OpenAI* und *Google*.

Sie können verschiedene Optionen für die Zusammenfassung von Dokumentinhalten angeben. Verwenden Sie die [Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions)-Methode, um eine Zusammenfassung Ihres Dokuments zu generieren. Sie können die Länge der Zusammenfassung auch mit der Eigenschaft [SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength) festlegen.

Mit Aspose.Words ist die Implementierung der Dokumentzusammenfassung unkompliziert. Das folgende Codebeispiel zeigt, wie schnell ein Dokument mit dem GPT -4o-Modell summiert werden kann:

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

Das Zusammenfassen von Dokumenten mit Aspose.Words spart Zeit und hilft Ihnen, sich auf wesentliche Informationen zu konzentrieren. Für weitere Informationen überprüfen Sie die [Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/).

{{% /alert %}}