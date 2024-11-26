---
title: การทำงานกับข้อความในตาราง
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับข้อความในตาราง
linktitle: การทำงานกับข้อความในตาราง
description: "แทนที่ข้อความในตารางในJava แยกข้อความธรรมดาจากตารางหรือเซลล์โดยใช้Java."
type: docs
weight: 60
url: /th/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

บทความนี้ไม่มีการอ้างอิงจากเอกสารอ้างอิงหรือแหล่งข้อมูลโปรดช่วยพัฒนาบทความนี้โด.

การเพิ่มข้อความหรือเนื้อหาอื่นๆลงในตารางจะดำเนินการโดยใช้วิธีการที่เหมาะสมของชั้นเรียน[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)และอธิบายไว้ในบทความ**"Create a Table"** ในบทความนี้เราจะพูดคุยเกี่ยวกับวิธีการทำงานกับข้อความในตารางที่มีอยู่แล้ว.

## แทนที่ข้อความในตาราง

ตารางเช่นเดียวกับโหนดอื่นๆในAspose.Wordsมีการเข้าถึงออบเจกต์[Range](https://reference.aspose.com/words/java/com.aspose.words/range/) โดยใช้วัตถุช่วงตารางคุณสามารถแทนที่ข้อความในตาราง.

ความสามารถในการใช้อักขระพิเศษเมื่อเปลี่ยนได้รับการสนับสนุนในปัจจุบันดังนั้นจึงเป็น ในการทำเช่นนี้คุณต้องใช้อักขระเมตาพิเศษที่อธิบายไว้ในวิธีการ[Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String)ที่สอดคล้องกัน.

{{% alert color="primary" %}}

โดยปกติแล้วการเปลี่ยนข้อความควรทำในระดับเซลล์(ต่อเซลล์)หรือในระดับย่อหน้า.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทนที่อินสแตนซ์ทั้งหมดของสตริงข้อความในเซลล์ของตาร:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## แยกข้อความธรรมดาจากตาราง

ใช้วัตถุ**Range**คุณยังสามารถเรียกวิธีการในช่วงตารางทั้งหมดและดึงตารางเป็นข้อความธรรมด เมื่อต้องการทำเช่นนี้ให้ใช้คุณสมบัติ[Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการพิมพ์ช่วงข้อความของตาราง:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

เทคนิคเดียวกันถูกใช้เพื่อดึงเนื้อหาจากเซลล์ตารางแต่ละเซลล์เท่านั้น.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการพิมพ์ช่วงข้อความของแถวและองค์ประกอบของตาราง:

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการพิมพ์ช่วงข้อความของแถวและองค์ประกอบของตาราง.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## การทำงานกับข้อความตารางทางเลือก

Microsoft Wordตารางมี`table title`และ`table description`ที่ให้การแสดงข้อความทางเลือกของข้อมูลที่มีอยู่ในตาราง.

ในAspose.Wordsคุณยังสามารถเพิ่มชื่อตารางและคำอธิบายโดยใช้คุณสมบัติ[Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle)และ[Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) คุณสมบัติเหล่านี้มีความหมายสำหรับDOCXเอกสารที่สอดคล้องกับISO/IEC29500 เมื่อบันทึกในรูปแบบก่อนหน้านี้กว่าISO/IEC29500 คุณสมบัติเหล่านี้จะถูกละเว้น.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัติชื่อและคำอธิบายของตาราง:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
