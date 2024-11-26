---
title: Bir Belgeyi Özetleme
second_title: Aspose.Words için .NET
articleTitle: Bir Belgeyi Özetleme
linktitle: Bir Belgeyi Özetleme
type: docs
weight: 20
description: "Bir belgeyi özetleyin. .NET için Aspose.Words, özet uzunluğunu belirtmenize izin vererek OpenAI ve Google AI modellerini kullanarak belge özetlemeyi basitleştirir."
url: /tr/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Belgeleri özetlemek, içerik incelemesi, hızlı içgörüler veya özetler hazırlamak için değerli bir araçtır. Aspose.Words, AI destekli modelleri kullanarak belge özetlemeyi destekler ve uzun metnin işlenmesini kolaylaştırır. [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) ad alanında bulunan bu özellik, *OpenAI* ve *Google* arasındaki gelişmiş üretken dil modellerini bütünleştirir.

Belge içeriğini özetlemek için çeşitli seçenekler belirleyebilirsiniz. Belgenizin bir özetini oluşturmak için [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/) yöntemini kullanın. [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/) özelliğini kullanarak özet uzunluğunu da ayarlayabilirsiniz.

Aspose.Words ile belge özetlemenin uygulanması basittir. Aşağıdaki kod örneği, GPT -4o modelini kullanarak bir dokümanı toplamak için sıcak gösterir:

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

Belgeleri Aspose.Words ile özetlemek zaman kazandırır ve temel bilgilere odaklanmanıza yardımcı olur. Daha fazla bilgi için [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API belgelerine bakın.

{{% /alert %}}