---
title: تلخيص وثيقة
second_title: Aspose.Words ل .NET
articleTitle: تلخيص وثيقة
linktitle: تلخيص وثيقة
type: docs
weight: 20
description: "تلخيص وثيقة. Aspose.Words ل .NET يبسط تلخيص الوثيقة باستخدام OpenAI وجوجل AI نماذج من خلال السماح لك لتحديد طول الملخص."
url: /ar/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

يعد تلخيص المستندات أداة قيمة لمراجعة المحتوى أو الرؤى السريعة أو إعداد الملخصات. Aspose.Words يدعم تلخيص المستندات باستخدام نماذج تعمل بالطاقة AI، مما يسهل معالجة النص الطويل. هذه الميزة، المتوفرة في [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) مساحة الاسم، تدمج نماذج اللغة التوليدية المتقدمة من *OpenAI* و *Google*.

يمكنك تحديد خيارات مختلفة لتلخيص محتوى المستند. استخدم طريقة [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/) لإنشاء ملخص للمستند الخاص بك. يمكنك أيضا تعيين طول الملخص باستخدام خاصية [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/).

باستخدام Aspose.Words، يكون تنفيذ تلخيص المستندات أمرا بسيطا. يظهر مثال التعليمات البرمجية التالية الساخنة ل سوميريز دوكوميت باستخدام GPT - 4ا نموذج:

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

تلخيص الوثائق مع Aspose.Words يوفر الوقت ويساعدك على التركيز على المعلومات الأساسية. لمزيد من المعلومات، راجع وثائق [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API.

{{% /alert %}}