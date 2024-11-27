---
title: خلاصه یک سند
second_title: Aspose.Words برای Python via .NET
articleTitle: خلاصه یک سند
linktitle: خلاصه یک سند
type: docs
weight: 20
description: "یک سند را خلاصه کنید. Aspose.Words برای Python خلاصه سازی اسناد را با استفاده از OpenAI و مدل های Google AI با اجازه دادن به شما برای مشخص کردن طول خلاصه ساده می کند."
url: /fa/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

خلاصه کردن اسناد ابزاری ارزشمند برای بررسی محتوا، بینش سریع یا تهیه خلاصه است. Aspose.Words از خلاصه سازی اسناد با استفاده از مدل های AI پشتیبانی می کند و پردازش متن طولانی را آسان تر می کند. این ویژگی که در ماژول [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) موجود است، مدل های پیشرفته زبان مولد را از *OpenAI* و *Google* ادغام می کند.

شما می توانید گزینه های مختلفی را برای خلاصه کردن محتوای سند مشخص کنید. از روش [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/) برای ایجاد خلاصه ای از سند خود استفاده کنید. همچنین می توانید طول خلاصه را با استفاده از ویژگی [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/) تنظیم کنید.

با Aspose.Words، خلاصه سازی اسناد پیاده سازی ساده است. مثال کد زیر hot را برای خلاصه کردن یک سند با استفاده از مدل GPT-4o نشان می دهد:

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

خلاصه کردن اسناد با Aspose.Words زمان را صرفه جویی می کند و به شما کمک می کند تا بر روی اطلاعات ضروری تمرکز کنید. برای اطلاعات بیشتر، اسناد [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) API را بررسی کنید.

{{% /alert %}}