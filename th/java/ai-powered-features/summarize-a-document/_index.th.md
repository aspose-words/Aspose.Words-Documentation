---
title: สรุปเอกสาร
second_title: Aspose.WordsสำหรับJava
articleTitle: สรุปเอกสาร
linktitle: สรุปเอกสาร
type: docs
weight: 20
description: "สรุปเอกสาร Aspose.WordsสำหรับJavaช่วยลดความยุ่งยากในการสรุปเอกสารโดยใช้รุ่นOpenAIและกูเกิลAIโดยให้คุณระบุความ."
url: /th/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

การสรุปเอกสารเป็นเครื่องมือที่มีคุณค่าสำหรับการตรวจทานเนื้อหาข้อมูลเชิงลึกอย่างรว Aspose.Wordsรองรับการสรุปเอกสารโดยใช้AIรุ่นขับเคลื่อน,ทำให้ง่ายต่อการประมวลผลข้อความยาว. คุณลักษณะนี้พร้อมใช้งานในฟังก์ชันการทำงานAIที่ใช้Aspose.Wordsรวมโมเดลภาษาขั้นสูงจาก*OpenAI*และ*Google*

คุณสามารถระบุตัวเลือกต่างๆสำหรับการสรุปเนื้อหาเอกสาร ใช้วิธีการ[Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions)เพื่อสร้างสรุปเอกสารของคุณ นอกจากนี้คุณยังสามารถตั้งค่าความยาวสรุปโดยใช้คุณสมบัติ[SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength).

ด้วยAspose.Wordsการดำเนินการสรุปเอกสารจะตรงไปตรงมา ตัวอย่างรหัสต่อไปนี้แสดงร้อนเพื่อสรุปเอกสารโดยใช้GPT-4โอโมเดล:

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

สรุปเอกสารด้วยAspose.Wordsช่วยประหยัดเวลาและช่วยให้คุณมุ่งเน้นไปที่ข้อมูลที่จำเป็น สำหรับข้อมูลเพิ่มเติมให้ตรวจสอบ[Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/).

{{% /alert %}}