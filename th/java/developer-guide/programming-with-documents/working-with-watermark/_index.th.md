---
title: การทำงานกับลายน้ำในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับลายน้ำ
linktitle: การทำงานกับลายน้ำ
type: docs
description: "การจัดการลายน้ำเอกสารโดยใช้Java."
weight: 70
url: /th/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

หัวข้อนี้กล่าวถึงวิธีการทำงานตามโปรแกรมด้วยลายน้ำโดยใช้Aspose.Words ลายน้ำเป็นภาพพื้นหลังที่แสดงอยู่เบื้องหลังข้อความในเอกสาร ลายน้ำสามารถประกอบด้วยข้อความหรือรูปภาพที่แสดงโดยคลาสของ[Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/).

{{% alert color="primary" %}}

**ลองออนไลน์**

คุณสามารถลองฟังก์ชั่นนี้กับเรา [ลายน้ำเอกสารออนไลน์ฟรี](https://products.aspose.app/words/watermark).

{{% /alert %}}

## เพิ่มลายน้ำในเอกสาร

ในMicrosoft Wordลายน้ำสามารถแทรกลงในเอกสารโดยใช้คำสั่งแทรกลายน้ำ Aspose.Wordsให้[watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/)คลาสที่จะเพิ่มหรือลบลายน้ำในเอกสาร. Aspose.Wordsให้การแจงนับ[WatermarkType](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)กำหนดสามประเภทที่เป็นไปได้ของลายน้ำ(ข้อความ,ภาพ,และไม่มี)ที่จะทำงา

### เพิ่มลายน้ำข้อความ

ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นถึงวิธีการแทรกลายน้ำข้อความในเอกสารโดยการกำหนด[TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/)โดยใช้วิธีการ[SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### เพิ่มลายน้ำภาพ

ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นถึงวิธีการแทรกลายน้ำภาพในเอกสารโดยการกำหนด[ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/)โดยใช้วิธีการ[SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

ลายน้ำยังสามารถแทรกโดยใช้ชั้นเรียนรูปร่างได้เป็นอย่างดี มันเป็นเรื่องง่ายมากที่จะแทรกรูปร่างหรือภาพใดๆลงในส่วนหัวหรือส่วนท้ายและทำให้การส.

ตัวอย่างรหัสต่อไปนี้แทรกลงในเอกสารคำ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## ลบลายน้ำออกจากเอกสาร

คลาส[Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/)มีวิธีการ`Remove`เพื่อลบลายน้ำออกจากเอกสาร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเอาลายน้ำออกจากเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

เมื่อต้องการเอาลายน้ำออกจากเอกสารที่คุณต้องตั้งค่าเฉพาะชื่อของรูปร่างลายน้ำในระ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าชื่อของรูปร่างลายน้ำและลบออกจากเอกสาร:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## เพิ่มลายน้ำลงในเซลล์ตาราง

บางครั้งคุณต้องใส่ลายน้ำ/ภาพลงในเซลล์ของตารางและแสดงนอกโต๊ะคุณสามารถใช้[IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean)คุณสมบัติ คุณสมบัตินี้ได้รับหรือตั้งค่าสถานะที่ระบุว่ารูปร่างจะแสดงภายในตารางหรือภายนอกของมัน โปรดทราบว่าคุณสมบัตินี้ทำงานเฉพาะเมื่อคุณเพิ่มประสิทธิภาพเอกสารสำหรับMicrosoft Word2010 โดยใช้วิธี[OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้คุณสมบัตินี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
