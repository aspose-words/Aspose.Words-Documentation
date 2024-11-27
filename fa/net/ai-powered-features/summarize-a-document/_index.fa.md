---
title: خلاصه یک سند
second_title: Aspose.Words برای .NET
articleTitle: خلاصه یک سند
linktitle: خلاصه یک سند
type: docs
weight: 20
description: "یک سند را خلاصه کنید. Aspose.Words برای .NET خلاصه سازی اسناد را با استفاده از OpenAI و مدل های Google AI با اجازه دادن به شما برای مشخص کردن طول خلاصه ساده می کند."
url: /fa/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

خلاصه کردن اسناد ابزاری ارزشمند برای بررسی محتوا، بینش سریع یا تهیه خلاصه است. Aspose.Words از خلاصه سازی اسناد با استفاده از مدل های AI پشتیبانی می کند و پردازش متن طولانی را آسان تر می کند. این ویژگی که در فضای نام [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) موجود است، مدل های پیشرفته زبان مولد را از *OpenAI* و *Google* ادغام می کند.

شما می توانید گزینه های مختلفی را برای خلاصه کردن محتوای سند مشخص کنید. از روش [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/) برای ایجاد خلاصه ای از سند خود استفاده کنید. همچنین می توانید طول خلاصه را با استفاده از ویژگی [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/) تنظیم کنید.

با Aspose.Words، خلاصه سازی اسناد پیاده سازی ساده است. مثال کد زیر hot را برای خلاصه کردن یک سند با استفاده از مدل GPT-4o نشان می دهد:

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

خلاصه کردن اسناد با Aspose.Words زمان را صرفه جویی می کند و به شما کمک می کند تا بر روی اطلاعات ضروری تمرکز کنید. برای اطلاعات بیشتر، اسناد [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API را بررسی کنید.

{{% /alert %}}