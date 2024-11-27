---
title: تلخيص وثيقة
second_title: Aspose.Words ل Java
articleTitle: تلخيص وثيقة
linktitle: تلخيص وثيقة
type: docs
weight: 20
description: "تلخيص وثيقة. Aspose.Words ل Java يبسط تلخيص الوثيقة باستخدام OpenAI وجوجل AI نماذج من خلال السماح لك لتحديد طول الملخص."
url: /ar/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

يعد تلخيص المستندات أداة قيمة لمراجعة المحتوى أو الرؤى السريعة أو إعداد الملخصات. Aspose.Words يدعم تلخيص المستندات باستخدام نماذج تعمل بالطاقة AI، مما يسهل معالجة النص الطويل. هذه الميزة، المتوفرة في AI على أساس Aspose.Words وظيفة، يدمج نماذج اللغة التوليدية المتقدمة من *OpenAI* و *Google*.

يمكنك تحديد خيارات مختلفة لتلخيص محتوى المستند. استخدم طريقة [Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions) لإنشاء ملخص للمستند الخاص بك. يمكنك أيضا تعيين طول الملخص باستخدام خاصية [SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength).

باستخدام Aspose.Words، يكون تنفيذ تلخيص المستندات أمرا بسيطا. يظهر مثال التعليمات البرمجية التالية الساخنة ل سوميريز دوكوميت باستخدام GPT - 4ا نموذج:

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

تلخيص الوثائق مع Aspose.Words يوفر الوقت ويساعدك على التركيز على المعلومات الأساسية. لمزيد من المعلومات، تحقق من [Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/).

{{% /alert %}}