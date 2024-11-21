---
title: ทำงานกับข้อความในตาราง
second_title: Aspose.Words สำหรับ Python
articleTitle: ทำงานกับข้อความในตาราง
linktitle: ทำงานกับข้อความในตาราง
description: "แทนที่ข้อความในตารางใน Python แยกข้อความธรรมดาจากตารางหรือเซลล์โดยใช้ Python"
type: docs
weight: 60
url: /th/python-net/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

ตามที่กล่าวไว้ในบทความก่อนหน้านี้ ตารางมักจะมีข้อความธรรมดา แม้ว่าเนื้อหาอื่นๆ เช่น รูปภาพ หรือแม้แต่ตารางอื่นๆ ก็สามารถวางในเซลล์ตารางได้

การเพิ่มข้อความหรือเนื้อหาอื่นๆ ลงในตารางทำได้โดยใช้วิธีการที่เหมาะสมของคลาส [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) และอธิบายไว้ในบทความ **"สร้างตาราง"** ในบทความนี้ เราจะพูดถึงวิธีทำงานกับข้อความในตารางที่มีอยู่แล้ว

## แทนที่ข้อความในตาราง

ตารางก็เหมือนกับโหนดอื่นๆ ใน Aspose.Words ที่สามารถเข้าถึงออบเจ็กต์ [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) เมื่อใช้วัตถุช่วงตาราง คุณสามารถแทนที่ข้อความในตารางได้

ขณะนี้รองรับความสามารถในการใช้อักขระพิเศษเมื่อแทนที่ ดังนั้นจึงเป็นไปได้ที่จะแทนที่ข้อความที่มีอยู่ด้วยข้อความหลายย่อหน้า ในการดำเนินการนี้ คุณจะต้องใช้อักขระเมตาพิเศษที่อธิบายไว้ในวิธี [Replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/#str_str) ที่เกี่ยวข้อง

{{% alert color="primary" %}}

โดยทั่วไป การแทนที่ข้อความควรทำในระดับเซลล์ (ต่อเซลล์) หรือที่ระดับย่อหน้า

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทนที่อินสแตนซ์ทั้งหมดของสตริงข้อความในเซลล์ของทั้งตาราง:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "replace-text.py" >}}

## แยกข้อความธรรมดาจากตารางหรือเซลล์

เมื่อใช้ออบเจ็กต์ **Range** คุณยังสามารถเรียกใช้เมธอดบนช่วงตารางทั้งหมดและแยกตารางเป็นข้อความธรรมดาได้ เมื่อต้องการทำเช่นนี้ ให้ใช้คุณสมบัติ [Text](https://reference.aspose.com/words/python-net/aspose.words/range/text/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการพิมพ์ช่วงข้อความของตาราง:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "extract-text.py" >}}

เทคนิคเดียวกันนี้ใช้เพื่อแยกเนื้อหาจากเซลล์ตารางแต่ละเซลล์เท่านั้น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการพิมพ์ช่วงข้อความขององค์ประกอบแถวและตาราง:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "print-text-range-row-and-table.py" >}}

## การทำงานกับข้อความตารางทางเลือก

ตาราง Microsoft Word มี `table title` และ `table description` ที่ให้ทางเลือกในการแสดงข้อความที่มีอยู่ในตาราง

ใน Aspose.Words คุณยังเพิ่มชื่อตารางและคำอธิบายโดยใช้คุณสมบัติ [Title](https://reference.aspose.com/words/python-net/aspose.words.tables/table/title/) และ [Description](https://reference.aspose.com/words/python-net/aspose.words.tables/table/description/) ได้ด้วย คุณสมบัติเหล่านี้มีความหมายสำหรับเอกสาร DOCX ที่สอดคล้องกับ ISO/IEC 29500 เมื่อบันทึกในรูปแบบที่เก่ากว่า ISO/IEC 29500 คุณสมบัติเหล่านี้จะถูกละเว้น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าชื่อเรื่องและคำอธิบายคุณสมบัติของตาราง:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "table-title-and-description.py" >}}

