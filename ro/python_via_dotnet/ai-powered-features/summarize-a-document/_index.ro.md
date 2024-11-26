---
title: Rezumați un Document
second_title: Aspose.Words Pentru Python via .NET
articleTitle: Rezumați un Document
linktitle: Rezumați un Document
type: docs
weight: 20
description: "Rezumați un document. Aspose.Words pentru Python simplifică rezumarea documentelor folosind modelele OpenAI și Google AI, permițându-vă să specificați lungimea rezumatului."
url: /ro/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Rezumarea documentelor este un instrument valoros pentru revizuirea conținutului, informații rapide sau pregătirea rezumatelor. Aspose.Words acceptă rezumarea documentelor folosind modele alimentate cu AI, facilitând procesarea textului lung. Această caracteristică, disponibilă în modulul [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/), integrează modele avansate de limbaj generativ din *OpenAI* și *Google*.

Puteți specifica diverse opțiuni pentru rezumarea conținutului documentului. Utilizați metoda [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/) pentru a genera un rezumat al documentului. De asemenea, puteți seta lungimea rezumatului folosind proprietatea [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/).

Cu Aspose.Words, implementarea rezumării documentelor este simplă. Următorul exemplu de cod arată hot pentru a rezuma un document folosind modelul GPT - 4o:

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

Rezumarea documentelor cu Aspose.Words economisește timp și vă ajută să vă concentrați asupra informațiilor esențiale. Pentru mai multe informații, verificați documentația [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) API.

{{% /alert %}}