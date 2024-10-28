---
title: การทำงานกับข้อความในตาราง
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับข้อความในตาราง
linktitle: การทำงานกับข้อความในตาราง
description: "แทนที่ข้อความในตารางในC++ แยกข้อความธรรมดาจากตารางหรือเซลล์โดยใช้C++."
type: docs
weight: 60
url: /th/cpp/work-with-text-in-a-table/
---

บทความนี้ไม่มีการอ้างอิงจากเอกสารอ้างอิงหรือแหล่งข้อมูลโปรดช่วยพัฒนาบทความนี้โด.

การเพิ่มข้อความหรือเนื้อหาอื่นๆลงในตารางจะดำเนินการโดยใช้วิธีการที่เหมาะสมของชั้นเรียน[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)และอธิบายไว้ในบทความ**"Create a Table"** ในบทความนี้เราจะพูดคุยเกี่ยวกับวิธีการทำงานกับข้อความในตารางที่มีอยู่แล้ว.

## แทนที่ข้อความในตาราง

ตารางเช่นเดียวกับโหนดอื่นๆในAspose.Wordsมีการเข้าถึงออบเจกต์[Range](https://reference.aspose.com/words/cpp/aspose.words/range/) โดยใช้วัตถุช่วงตารางคุณสามารถแทนที่ข้อความในตาราง.

ความสามารถในการใช้อักขระพิเศษเมื่อเปลี่ยนได้รับการสนับสนุนในปัจจุบันดังนั้นจึงเป็น ในการทำเช่นนี้คุณต้องใช้อักขระเมตาพิเศษที่อธิบายไว้ในวิธีการ[Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/)ที่สอดคล้องกัน.

{{% alert color="primary" %}}

โดยปกติแล้วการเปลี่ยนข้อความควรทำในระดับเซลล์(ต่อเซลล์)หรือในระดับย่อหน้า.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทนที่อินสแตนซ์ทั้งหมดของสตริงข้อความในเซลล์ของตาร:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "replace-text.h" >}}

## แยกข้อความธรรมดาจากตารางหรือเซลล์

ใช้วัตถุ**Range**คุณยังสามารถเรียกวิธีการในช่วงตารางทั้งหมดและดึงตารางเป็นข้อความธรรมด เมื่อต้องการทำเช่นนี้ให้ใช้คุณสมบัติ[Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการพิมพ์ช่วงข้อความของตาราง:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "extract-text.h" >}}

เทคนิคเดียวกันถูกใช้เพื่อดึงเนื้อหาจากเซลล์ตารางแต่ละเซลล์เท่านั้น.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการพิมพ์ช่วงข้อความของแถวและองค์ประกอบของตาราง:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "print-text-range-row-and-table.h" >}}

## การทำงานกับข้อความตารางทางเลือก

Microsoft Wordตารางมี`table title`และ`table description`ที่ให้การแสดงข้อความทางเลือกของข้อมูลที่มีอยู่ในตาราง.

ในAspose.Wordsคุณยังสามารถเพิ่มชื่อตารางและคำอธิบายโดยใช้คุณสมบัติ[Title](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_title/)และ[Description](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_description/) คุณสมบัติเหล่านี้มีความหมายสำหรับDOCXเอกสารที่สอดคล้องกับISO/IEC29500 เมื่อบันทึกในรูปแบบก่อนหน้านี้กว่าISO/IEC29500 คุณสมบัติเหล่านี้จะถูกละเว้น.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัติชื่อและคำอธิบายของตาราง:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "table-title-and-description.h" >}}