---
title: Tóm tắt Một Tài liệu
second_title: Aspose.Words cho .NET
articleTitle: Tóm tắt Một Tài liệu
linktitle: Tóm tắt Một Tài liệu
type: docs
weight: 20
description: "Tóm tắt một tài liệu. Aspose.Words cho .NET đơn giản hóa việc tóm tắt tài liệu bằng cách sử dụng các mô hình OpenAI Và Google AI bằng cách cho phép bạn chỉ định độ dài tóm tắt."
url: /vi/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Tóm tắt tài liệu là một công cụ có giá trị để xem xét nội dung, hiểu biết nhanh hoặc chuẩn bị tóm tắt. Aspose.Words hỗ trợ tóm tắt tài liệu bằng cách sử dụng các mô hình được hỗ trợ AI, giúp xử lý văn bản dài dễ dàng hơn. Tính năng này, có sẵn trong không gian tên [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/), tích hợp các mô hình ngôn ngữ tạo nâng cao từ *OpenAI* và *Google*.

Bạn có thể chỉ định các tùy chọn khác nhau để tóm tắt nội dung tài liệu. Sử dụng phương thức [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/) để tạo bản tóm tắt tài liệu của bạn. Bạn cũng có thể đặt độ dài tóm tắt bằng thuộc tính [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/).

Với Aspose.Words, việc thực hiện tóm tắt tài liệu rất đơn giản. Ví dụ mã sau đây hiển thị nóng để tóm tắt tài liệu bằng cách sử dụng mô hình GPT-4o:

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

Tóm tắt tài liệu với Aspose.Words tiết kiệm thời gian và giúp bạn tập trung vào thông tin cần thiết. Để biết thêm thông tin, hãy kiểm tra tài liệu [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API.

{{% /alert %}}