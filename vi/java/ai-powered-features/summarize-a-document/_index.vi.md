---
title: Tóm tắt Một Tài liệu
second_title: Aspose.Words cho Java
articleTitle: Tóm tắt Một Tài liệu
linktitle: Tóm tắt Một Tài liệu
type: docs
weight: 20
description: "Tóm tắt một tài liệu. Aspose.Words cho Java đơn giản hóa việc tóm tắt tài liệu bằng cách sử dụng các mô hình OpenAI Và Google AI bằng cách cho phép bạn chỉ định độ dài tóm tắt."
url: /vi/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

Tóm tắt tài liệu là một công cụ có giá trị để xem xét nội dung, hiểu biết nhanh hoặc chuẩn bị tóm tắt. Aspose.Words hỗ trợ tóm tắt tài liệu bằng cách sử dụng các mô hình được hỗ trợ AI, giúp xử lý văn bản dài dễ dàng hơn. Tính năng này, có sẵn trong chức năng AI-based Aspose.Words, tích hợp các mô hình ngôn ngữ tạo nâng cao từ *OpenAI* và *Google*.

Bạn có thể chỉ định các tùy chọn khác nhau để tóm tắt nội dung tài liệu. Sử dụng phương thức [Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions) để tạo bản tóm tắt tài liệu của bạn. Bạn cũng có thể đặt độ dài tóm tắt bằng thuộc tính [SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength).

Với Aspose.Words, việc thực hiện tóm tắt tài liệu rất đơn giản. Ví dụ mã sau đây hiển thị nóng để tóm tắt tài liệu bằng cách sử dụng mô hình GPT-4o:

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

Tóm tắt tài liệu với Aspose.Words tiết kiệm thời gian và giúp bạn tập trung vào thông tin cần thiết. Để biết thêm thông tin, hãy kiểm tra [Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/).

{{% /alert %}}