---
title: สรุปเอกสาร
second_title: Aspose.WordsสำหรับPython via .NET
articleTitle: สรุปเอกสาร
linktitle: สรุปเอกสาร
type: docs
weight: 20
description: "สรุปเอกสาร Aspose.WordsสำหรับPythonช่วยลดความยุ่งยากในการสรุปเอกสารโดยใช้รุ่นOpenAIและกูเกิลAIโดยให้คุณระบุความ."
url: /th/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

การสรุปเอกสารเป็นเครื่องมือที่มีคุณค่าสำหรับการตรวจทานเนื้อหาข้อมูลเชิงลึกอย่างรว Aspose.Wordsรองรับการสรุปเอกสารโดยใช้รุ่นขับเคลื่อนAIทำให้ง่ายต่อการประมวลผลข้อความยาว คุณลักษณะนี้พร้อมใช้งานในโมดูล[aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/)รวมโมเดลภาษาขั้นสูงจาก*OpenAI*และ*Google*

คุณสามารถระบุตัวเลือกต่างๆสำหรับการสรุปเนื้อหาเอกสาร ใช้วิธีการ[summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/)เพื่อสร้างสรุปเอกสารของคุณ คุณยังสามารถตั้งค่าความยาวสรุปโดยใช้คุณสมบัติ[summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/).

ด้วยAspose.Wordsการดำเนินการสรุปเอกสารจะตรงไปตรงมา ตัวอย่างรหัสต่อไปนี้แสดงร้อนเพื่อสรุปเอกสารโดยใช้GPT-4โอโมเดล:

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

สรุปเอกสารด้วยAspose.Wordsช่วยประหยัดเวลาและช่วยให้คุณมุ่งเน้นไปที่ข้อมูลที่จำเป็น สำหรับข้อมูลเพิ่มเติมให้ตรวจสอบเอกสาร[aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/)API.

{{% /alert %}}