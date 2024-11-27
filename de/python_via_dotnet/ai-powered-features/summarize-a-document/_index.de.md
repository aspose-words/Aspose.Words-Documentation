---
title: Ein Dokument zusammenfassen
second_title: Aspose.Words für Python via .NET
articleTitle: Ein Dokument zusammenfassen
linktitle: Ein Dokument zusammenfassen
type: docs
weight: 20
description: "Fassen Sie ein Dokument zusammen. Aspose.Words für Python vereinfacht die Dokumentzusammenfassung mit OpenAI- und Google AI-Modellen, indem Sie die Länge der Zusammenfassung angeben können."
url: /de/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Das Zusammenfassen von Dokumenten ist ein wertvolles Werkzeug für die Inhaltsprüfung, schnelle Einblicke oder das Erstellen von Abstracts. Aspose.Words unterstützt die Dokumentzusammenfassung mit AI-basierten Modellen, wodurch die Verarbeitung von Langtext erleichtert wird. Diese Funktion, die im Modul [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) verfügbar ist, integriert erweiterte generative Sprachmodelle aus *OpenAI* und *Google*.

Sie können verschiedene Optionen für die Zusammenfassung von Dokumentinhalten angeben. Verwenden Sie die Methode [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/), um eine Zusammenfassung Ihres Dokuments zu generieren. Sie können die Zusammenfassungslänge auch mit der Eigenschaft [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/) festlegen.

Mit Aspose.Words ist die Implementierung der Dokumentzusammenfassung unkompliziert. Das folgende Codebeispiel zeigt, wie schnell ein Dokument mit dem GPT -4o-Modell summiert werden kann:

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

Das Zusammenfassen von Dokumenten mit Aspose.Words spart Zeit und hilft Ihnen, sich auf wesentliche Informationen zu konzentrieren. Weitere Informationen finden Sie in der Dokumentation zu [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) API.

{{% /alert %}}