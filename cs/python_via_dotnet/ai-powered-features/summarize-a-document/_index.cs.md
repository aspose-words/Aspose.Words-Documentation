---
title: Shrňte dokument
second_title: Aspose.Words pro Python via .NET
articleTitle: Shrňte dokument
linktitle: Shrňte dokument
type: docs
weight: 20
description: "Shrňte dokument. Aspose.Words pro Python zjednodušuje sumarizaci dokumentů pomocí modelů OpenAI a Google AI tím, že umožňuje určit délku souhrnu."
url: /cs/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Shrnutí dokumentů je cenným nástrojem pro kontrolu obsahu, rychlé postřehy nebo přípravu abstraktů. Aspose.Words podporuje sumarizaci dokumentů pomocí modelů poháněných AI, což usnadňuje zpracování dlouhého textu. Tato funkce, dostupná v modulu [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/), integruje pokročilé generativní jazykové modely z *OpenAI* a *Google*.

Můžete zadat různé možnosti pro shrnutí obsahu dokumentu. Pomocí metody [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/) Vygenerujte souhrn dokumentu. Můžete také nastavit délku souhrnu pomocí vlastnosti [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/).

S Aspose.Words je shrnutí implementačního dokumentu jednoduché. Následující příklad kódu ukazuje hot summirize documet pomocí modelu GPT-4o:

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

Shrnutí dokumentů pomocí Aspose.Words šetří čas a pomáhá vám soustředit se na základní informace. Další informace najdete v dokumentaci [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) API.

{{% /alert %}}