---
title: สรุปเอกสาร
second_title: Aspose.Wordsสำหรับ.NET
articleTitle: สรุปเอกสาร
linktitle: สรุปเอกสาร
type: docs
weight: 20
description: "สรุปเอกสาร Aspose.Wordsสำหรับ.NETช่วยลดความยุ่งยากในการสรุปเอกสารโดยใช้รุ่นOpenAIและกูเกิลAIโดยให้คุณระบุความ."
url: /th/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

การสรุปเอกสารเป็นเครื่องมือที่มีคุณค่าสำหรับการตรวจทานเนื้อหาข้อมูลเชิงลึกอย่างรว Aspose.Wordsรองรับการสรุปเอกสารโดยใช้รุ่นขับเคลื่อนAIทำให้ง่ายต่อการประมวลผลข้อความยาว คุณลักษณะนี้พร้อมใช้งานในเนมสเปซ[Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/)จะรวมโมเดลภาษาขั้นสูงจาก*OpenAI*และ*Google*

คุณสามารถระบุตัวเลือกต่างๆสำหรับการสรุปเนื้อหาเอกสาร ใช้วิธีการ[Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/)เพื่อสร้างสรุปเอกสารของคุณ คุณยังสามารถตั้งค่าความยาวสรุปโดยใช้คุณสมบัติ[SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/).

ด้วยAspose.Wordsการดำเนินการสรุปเอกสารจะตรงไปตรงมา ตัวอย่างรหัสต่อไปนี้แสดงร้อนเพื่อสรุปเอกสารโดยใช้GPT-4โอโมเดล:

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

สรุปเอกสารด้วยAspose.Wordsช่วยประหยัดเวลาและช่วยให้คุณมุ่งเน้นไปที่ข้อมูลที่จำเป็น สำหรับข้อมูลเพิ่มเติมให้ตรวจสอบเอกสาร[Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/)API.

{{% /alert %}}