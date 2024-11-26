---
title: Meringkas Dokumen
second_title: Aspose.Words untuk .NET
articleTitle: Meringkas Dokumen
linktitle: Meringkas Dokumen
type: docs
weight: 20
description: "Meringkas dokumen. Aspose.Words untuk .NET menyederhanakan peringkasan dokumen menggunakan model OpenAI dan Google AI dengan memungkinkan Anda menentukan panjang ringkasan."
url: /id/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Meringkas dokumen adalah alat yang berharga untuk tinjauan konten, wawasan cepat, atau menyiapkan abstrak. Aspose.Words mendukung peringkasan dokumen menggunakan model bertenaga AI, sehingga memudahkan pemrosesan teks panjang. Fitur ini, tersedia dalam namespace [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/), mengintegrasikan model bahasa generatif lanjutan dari *OpenAI* dan *Google*.

Anda dapat menentukan berbagai opsi untuk meringkas konten dokumen. Gunakan metode [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/) untuk membuat ringkasan dokumen Anda. Anda juga dapat mengatur panjang ringkasan menggunakan properti [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/).

Dengan Aspose.Words, menerapkan peringkasan dokumen sangatlah mudah. Contoh kode berikut menunjukkan hot untuk meringkas sebuah dokumen menggunakan model GPT-4o:

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

Meringkas dokumen dengan Aspose.Words menghemat waktu dan membantu Anda fokus pada informasi penting. Untuk informasi selengkapnya, lihat dokumentasi [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API.

{{% /alert %}}