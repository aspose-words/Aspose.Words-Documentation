---
title: ทํางานกับวอเตอร์มาร์ค Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับลายน้ํา
linktitle: ทํางานกับลายน้ํา
type: docs
description: "การจัดการลายน้ําของเอกสารโดยใช้ Java."
weight: 70
url: /th/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

หัว เรื่อง นี้ พิจารณา วิธี ที่ จะ ทํา งาน โดย ใช้ เครื่องหมาย น้ํา Aspose.Words. ลาย น้ํา คือ ภาพ ฉาก หลัง ซึ่ง แสดง อยู่ ด้าน หลัง ของ ข้อ ความ ใน เอกสาร. เครื่องหมายน้ําสามารถบรรจุข้อความหรือภาพที่แสดงโดย [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) ชั้นเรียน.

{{% alert color="primary" %}}

**ลองออนไลน์ดูสิ**

คุณสามารถลองใช้ฟังก์ชันนี้กับ [ทําเครื่องหมายน้ําในเอกสารออนไลน์แบบฟรี](https://products.aspose.app/words/watermark).

{{% /alert %}}

## เพิ่มลายน้ําเป็นเอกสาร

ใน Microsoft Word, สามารถแทรกลายน้ําในเอกสารได้โดยง่าย โดยใช้คําสั่งแทรกลายน้ํา Aspose.Words ให้ [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) คลาสที่จะเพิ่มหรือลบลายน้ําในเอกสาร Aspose.Words ให้ [ลายน้ํา ชนิด](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)การ ผสม พันธุ์ กําหนด เครื่องหมาย น้ํา สาม ชนิด ที่ อาจ เป็น ไป ได้ (ข้อความ, ภาพ, และ ไม่ มี เลย) ให้ ใช้

### เพิ่มลายน้ําข้อความ

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกลายน้ําข้อความในเอกสารโดยนิยาม [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) ใช้ [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) วิธีการ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### เพิ่มลายน้ํารูปภาพ

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการใส่เครื่องหมายอิมเมจในเอกสารโดยนิยาม [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) ใช้ [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) วิธีการ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

นอก จาก นี้ ยัง สามารถ ใส่ เครื่องหมาย น้ํา ได้ โดย ใช้ ชั้น รูป ทรง ด้วย. เป็น เรื่อง ง่าย มาก ที่ จะ สอด รูป แบบ หรือ รูป ปั้น ใด ๆ เข้า ไป ใน หัว เรือ หรือ ท้าย เรือ และ ด้วย เหตุ นี้ จึง สร้าง เครื่องหมาย น้ํา ของ รูป แบบ ใด ๆ ที่ นึก ออก.

ตัวอย่างโค้ดต่อไปนี้ จะแทรกลายน้ําลงในเอกสารคํา:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มตัวอย่างของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## ลบลายน้ําออกจากเอกสาร

เดอะ [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) ชั้นเรียนจัดหา `Remove` วิธีการลบเครื่องหมายน้ําออกจากเอกสาร

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ลบ เครื่องหมาย น้ํา ออก จาก เอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

เพื่อลบลายน้ําออกจากเอกสาร คุณจะต้องกําหนดชื่อลายน้ําเท่านั้น ระหว่างการแทรก แล้วลบลายน้ําออก โดยใช้ชื่อที่กําหนด

ตัวอย่างรหัสต่อไปนี้ แสดงวิธีตั้งชื่อลายน้ํา และลบออกจากเอกสาร:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## เพิ่มลายน้ําลงในตารางเซลล์

บางครั้งคุณจําเป็นต้องใส่เครื่องหมาย/ภาพลงในเซลล์ของตารางและแสดงมันนอกตารางสามารถใช้ [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) ทรัพย์สิน คุณสมบัตินี้จะใช้รับหรือตั้งธงเพื่อแสดงว่ามีการแสดงในตารางหรือข้างนอก ควรจําไว้ว่า คุณสมบัตินี้ใช้ได้เมื่อคุณทําการแก้ไขเอกสารให้เหมาะสมที่สุด Microsoft Word 2010 ใช้ [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) วิธี

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัตินี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
