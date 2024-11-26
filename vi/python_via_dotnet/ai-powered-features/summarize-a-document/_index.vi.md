---
title: Tóm tắt Một Tài liệu
second_title: Aspose.Words cho Python via .NET
articleTitle: Tóm tắt Một Tài liệu
linktitle: Tóm tắt Một Tài liệu
type: docs
weight: 20
description: "Tóm tắt một tài liệu. Aspose.Words cho Python đơn giản hóa việc tóm tắt tài liệu bằng cách sử dụng các mô hình OpenAI Và Google AI bằng cách cho phép bạn chỉ định độ dài tóm tắt."
url: /vi/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Tóm tắt tài liệu là một công cụ có giá trị để xem xét nội dung, hiểu biết nhanh hoặc chuẩn bị tóm tắt. Aspose.Words hỗ trợ tóm tắt tài liệu bằng cách sử dụng các mô hình được hỗ trợ AI, giúp xử lý văn bản dài dễ dàng hơn. Tính năng này, có sẵn trong mô-đun [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/), tích hợp các mô hình ngôn ngữ tạo nâng cao từ *OpenAI* và *Google*.

Bạn có thể chỉ định các tùy chọn khác nhau để tóm tắt nội dung tài liệu. Sử dụng phương thức [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/) để tạo bản tóm tắt tài liệu của bạn. Bạn cũng có thể đặt độ dài tóm tắt bằng thuộc tính [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/).

Với Aspose.Words, việc thực hiện tóm tắt tài liệu rất đơn giản. Ví dụ mã sau đây hiển thị nóng để tóm tắt tài liệu bằng cách sử dụng mô hình GPT-4o:

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

Tóm tắt tài liệu với Aspose.Words tiết kiệm thời gian và giúp bạn tập trung vào thông tin cần thiết. Để biết thêm thông tin, hãy kiểm tra tài liệu [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) API.

{{% /alert %}}