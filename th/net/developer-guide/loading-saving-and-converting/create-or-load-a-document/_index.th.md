---
title: สร้างหรือโหลดเอกสารใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: สร้างหรือโหลดเอกสาร
linktitle: สร้างหรือโหลดเอกสาร
type: docs
url: /th/net/create-or-load-a-document/
description: "สร้างเอกสารเปล่าหรือโหลดจากไฟล์หรือสตรีมโดยใช้ C#"
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

เกือบทุกงานที่คุณต้องการดำเนินการด้วย Aspose.Words เกี่ยวข้องกับการโหลดเอกสาร คลาส `Document` แสดงถึงเอกสารที่โหลดลงในหน่วยความจำ เอกสารมีตัวสร้างที่โอเวอร์โหลดหลายตัว ซึ่งช่วยให้คุณสร้างเอกสารเปล่าหรือโหลดจากไฟล์หรือสตรีมได้ สามารถโหลดเอกสารในรูปแบบการโหลดใดก็ได้ที่ Aspose.Words รองรับ สำหรับรายการรูปแบบการโหลดที่รองรับทั้งหมด โปรดดูการแจงนับ [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/)

## สร้างเอกสารใหม่ {#create-a-new-document}

เราจะเรียกตัวสร้าง [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) โดยไม่มีพารามิเตอร์เพื่อสร้างเอกสารเปล่าใหม่ หากคุณต้องการสร้างเอกสารโดยทางโปรแกรม วิธีที่ง่ายที่สุดคือใช้คลาส [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) เพื่อเพิ่มเนื้อหาเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีสร้างเอกสารโดยใช้ตัวสร้างเอกสาร:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

หมายเหตุค่าเริ่มต้น:

- เอกสารเปล่าประกอบด้วยหนึ่งส่วนพร้อมพารามิเตอร์เริ่มต้น หนึ่งย่อหน้าว่าง และสไตล์เอกสารบางรูปแบบ จริงๆ แล้วเอกสารนี้เหมือนกับผลลัพธ์ของการสร้าง "เอกสารใหม่" ใน Microsoft Word
- ขนาดกระดาษเอกสารคือ [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**

{{% /alert %}}

## โหลดเอกสาร {#load-a-document}

หากต้องการโหลดเอกสารที่มีอยู่ในรูปแบบ [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) ใดๆ ให้ส่งชื่อไฟล์หรือสตรีมไปยังหนึ่งในตัวสร้างเอกสาร รูปแบบของเอกสารที่โหลดจะถูกกำหนดโดยอัตโนมัติตามนามสกุลของเอกสาร

### โหลดจากไฟล์ {#load-from-a-file}

ส่งชื่อไฟล์เป็นสตริงไปยังตัวสร้างเอกสารเพื่อเปิดเอกสารที่มีอยู่จากไฟล์

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเปิดเอกสารจากไฟล์:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)

### โหลดจากสตรีม {#load-from-a-stream}

หากต้องการเปิดเอกสารจากสตรีม เพียงส่งออบเจ็กต์สตรีมที่มีเอกสารไปยังตัวสร้างเอกสาร

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเปิดเอกสารจากกระแสข้อมูล:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}
