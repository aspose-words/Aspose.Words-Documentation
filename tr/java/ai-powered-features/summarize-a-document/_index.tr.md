---
title: Bir Belgeyi Özetleme
second_title: Aspose.Words için Java
articleTitle: Bir Belgeyi Özetleme
linktitle: Bir Belgeyi Özetleme
type: docs
weight: 20
description: "Bir belgeyi özetleyin. Java için Aspose.Words, özet uzunluğunu belirtmenize izin vererek OpenAI ve Google AI modellerini kullanarak belge özetlemeyi basitleştirir."
url: /tr/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Belgeleri özetlemek, içerik incelemesi, hızlı içgörüler veya özetler hazırlamak için değerli bir araçtır. Aspose.Words, AI destekli modelleri kullanarak belge özetlemeyi destekler ve uzun metnin işlenmesini kolaylaştırır. AI tabanlı Aspose.Words işlevinde bulunan bu özellik, *OpenAI* ve *Google* 'den gelişmiş üretken dil modellerini bütünleştirir.

Belge içeriğini özetlemek için çeşitli seçenekler belirleyebilirsiniz. Belgenizin bir özetini oluşturmak için [Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions) yöntemini kullanın. [SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength) özelliğini kullanarak özet uzunluğunu da ayarlayabilirsiniz.

Aspose.Words ile belge özetlemenin uygulanması basittir. Aşağıdaki kod örneği, GPT -4o modelini kullanarak bir dokümanı toplamak için sıcak gösterir:

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

Belgeleri Aspose.Words ile özetlemek zaman kazandırır ve temel bilgilere odaklanmanıza yardımcı olur. Daha fazla bilgi için [Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/)'ı kontrol edin.

{{% /alert %}}