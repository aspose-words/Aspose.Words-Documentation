---
title: Podsumuj dokument
second_title: Aspose.Words dla Python via .NET
articleTitle: Podsumuj dokument
linktitle: Podsumuj dokument
type: docs
weight: 20
description: "Podsumuj dokument. Aspose.Words dla Python upraszcza podsumowanie dokumentów za pomocą modeli OpenAI i Google AI, umożliwiając określenie długości podsumowania."
url: /pl/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Podsumowanie dokumentów jest cennym narzędziem do przeglądania treści, szybkiego wglądu lub przygotowywania streszczeń. Aspose.Words obsługuje podsumowanie dokumentów przy użyciu modeli opartych na AI, co ułatwia przetwarzanie długiego tekstu. Ta funkcja, dostępna w module [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/), integruje zaawansowane generatywne modele językowe z *OpenAI* i *Google*.

Możesz określić różne opcje podsumowania zawartości dokumentu. Użyj metody [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/), aby wygenerować podsumowanie dokumentu. Możesz także ustawić długość podsumowania za pomocą właściwości [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/).

Dzięki Aspose.Words implementacja podsumowania dokumentu jest prosta. Poniższy przykład kodu pokazuje hot do summiryze documet przy użyciu modelu GPT - 4o:

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

Podsumowanie dokumentów za pomocą Aspose.Words oszczędza czas i pomaga skupić się na podstawowych informacjach. Aby uzyskać więcej informacji, sprawdź dokumentację [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) API.

{{% /alert %}}