---
title: Meringkas Dokumen
second_title: Aspose.Words untuk Python via .NET
articleTitle: Meringkas Dokumen
linktitle: Meringkas Dokumen
type: docs
weight: 20
description: "Meringkas dokumen. Aspose.Words untuk Python menyederhanakan peringkasan dokumen menggunakan model OpenAI dan Google AI dengan memungkinkan Anda menentukan panjang ringkasan."
url: /id/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Meringkas dokumen adalah alat yang berharga untuk tinjauan konten, wawasan cepat, atau menyiapkan abstrak. Aspose.Words mendukung peringkasan dokumen menggunakan model bertenaga AI, sehingga memudahkan pemrosesan teks panjang. Fitur ini, tersedia dalam modul [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/), mengintegrasikan model bahasa generatif lanjutan dari *OpenAI* dan *Google*.

Anda dapat menentukan berbagai opsi untuk meringkas konten dokumen. Gunakan metode [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/) untuk membuat ringkasan dokumen Anda. Anda juga dapat mengatur panjang ringkasan menggunakan properti [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/).

Dengan Aspose.Words, menerapkan peringkasan dokumen sangatlah mudah. Contoh kode berikut menunjukkan hot untuk meringkas sebuah dokumen menggunakan model GPT-4o:

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

Meringkas dokumen dengan Aspose.Words menghemat waktu dan membantu Anda fokus pada informasi penting. Untuk informasi selengkapnya, lihat dokumentasi [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) API.

{{% /alert %}}