---
title: สร้างหรือโหลดเอกสารใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: สร้างหรือโหลดเอกสาร
linktitle: สร้างหรือโหลดเอกสาร
type: docs
url: /th/python-net/create-or-load-a-document/
description: "สร้างเอกสารเปล่าหรือโหลดจากไฟล์หรือสตรีมโดยใช้ Python"
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
---

เกือบทุกงานที่คุณต้องการดำเนินการด้วย Aspose.Words เกี่ยวข้องกับการโหลดเอกสาร คลาส [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) แสดงถึงเอกสารที่โหลดลงในหน่วยความจำ เอกสารมีตัวสร้างที่โอเวอร์โหลดหลายตัว ซึ่งช่วยให้คุณสร้างเอกสารเปล่าหรือโหลดจากไฟล์หรือสตรีมได้ สามารถโหลดเอกสารในรูปแบบการโหลดใดก็ได้ที่ Aspose.Words รองรับ สำหรับรายการรูปแบบการโหลดที่รองรับทั้งหมด โปรดดูการแจงนับ [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/)

## สร้างเอกสารใหม่

เราจะเรียกตัวสร้าง [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) โดยไม่มีพารามิเตอร์เพื่อสร้างเอกสารเปล่าใหม่ หากคุณต้องการสร้างเอกสารโดยทางโปรแกรม วิธีที่ง่ายที่สุดคือใช้คลาส [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) เพื่อเพิ่มเนื้อหาเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีสร้างเอกสารโดยใช้ตัวสร้างเอกสาร:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

หมายเหตุค่าเริ่มต้น:

- เอกสารเปล่าประกอบด้วยหนึ่งส่วนพร้อมพารามิเตอร์เริ่มต้น ย่อหน้าว่างหนึ่งย่อหน้า และสไตล์เอกสารบางรูปแบบ จริงๆ แล้วเอกสารนี้เหมือนกับผลลัพธ์ของการสร้าง "เอกสารใหม่" ใน Microsoft Word
- ขนาดกระดาษเอกสารคือ [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter)

{{% /alert %}}

## โหลดเอกสาร

หากต้องการโหลดเอกสารที่มีอยู่ในรูปแบบ [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) ใดๆ ให้ส่งชื่อไฟล์หรือสตรีมลงในตัวสร้าง [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ตัวใดตัวหนึ่ง รูปแบบของเอกสารที่โหลดจะถูกกำหนดโดยอัตโนมัติตามนามสกุลของเอกสาร

### โหลดจากไฟล์

ส่งชื่อไฟล์เป็นสตริงไปยังตัวสร้าง [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) เพื่อเปิดเอกสารที่มีอยู่จากไฟล์

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเปิดเอกสารจากไฟล์:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

### โหลดจากสตรีม

หากต้องการเปิดเอกสารจากสตรีม เพียงส่งออบเจ็กต์สตรีมที่มีเอกสารไปยังตัวสร้าง [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเปิดเอกสารจากกระแสข้อมูล:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}
