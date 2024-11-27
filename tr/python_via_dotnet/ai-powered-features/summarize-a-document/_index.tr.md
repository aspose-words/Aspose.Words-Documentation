---
title: Bir Belgeyi Özetleme
second_title: Aspose.Words için Python via .NET
articleTitle: Bir Belgeyi Özetleme
linktitle: Bir Belgeyi Özetleme
type: docs
weight: 20
description: "Bir belgeyi özetleyin. Python için Aspose.Words, özet uzunluğunu belirtmenize izin vererek OpenAI ve Google AI modellerini kullanarak belge özetlemeyi basitleştirir."
url: /tr/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Belgeleri özetlemek, içerik incelemesi, hızlı içgörüler veya özetler hazırlamak için değerli bir araçtır. Aspose.Words, AI destekli modelleri kullanarak belge özetlemeyi destekler ve uzun metnin işlenmesini kolaylaştırır. [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) modülünde bulunan bu özellik, *OpenAI* ve *Google* 'ten gelişmiş üretken dil modellerini bütünleştirir.

Belge içeriğini özetlemek için çeşitli seçenekler belirleyebilirsiniz. Belgenizin bir özetini oluşturmak için [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/) yöntemini kullanın. [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/) özelliğini kullanarak özet uzunluğunu da ayarlayabilirsiniz.

Aspose.Words ile belge özetlemenin uygulanması basittir. Aşağıdaki kod örneği, GPT -4o modelini kullanarak bir dokümanı toplamak için sıcak gösterir:

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

Belgeleri Aspose.Words ile özetlemek zaman kazandırır ve temel bilgilere odaklanmanıza yardımcı olur. Daha fazla bilgi için [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) API belgelerine bakın.

{{% /alert %}}