---
title: แทนที่ฟิลด์C++
second_title: Aspose.WordsสำหรับC++
articleTitle: แทนที่ฟิลด์ด้วยข้อความแบบคงที่
linktitle: แทนที่ฟิลด์ด้วยข้อความแบบคงที่
description: "เรียนรู้วิธีแทนที่ฟิลด์ด้วยข้อความในC++ แทนที่ฟิลด์ด้วยข้อมูลแบบคงที่โดยใช้C++API."
type: docs
weight: 37
url: /th/cpp/replace-fields/
---

การแทนที่ฟิลด์มักจำเป็นต้องใช้เมื่อคุณต้องการบันทึกเอกสารของคุณเป็นสำเนาแบบคงที่ ตัวอย่างเช่นเมื่อส่งเป็นสิ่งที่แนบในอีเมล การแปลงฟิลด์เช่น`DATE`หรือ`TIME`เป็นข้อความแบบคงที่จะอนุญาตให้เอกสารแสดงวันเดียวกันกับเมื่อ นอกจากนี้ในบางสถานการณ์คุณอาจต้องลบเขตข้อมูลที่มีเงื่อนไข`IF`ออกจากเอกสารของคุณและแทนที่ด้วยผลลัพธ์ข้อความล่าสุดแทน ตัวอย่างเช่นการแปลงผลลัพธ์ของฟิลด์`IF`เป็นข้อความแบบคงที่ดังนั้นจะไม่เปลี่ยนค่าของฟิลด์.

แผนภาพด้านล่างแสดงให้เห็นว่าฟิลด์`IF`ถูกเก็บไว้ในเอกสาร:

* ข้อความถูกล้อมรอบด้วยโหนดฟิลด์พิเศษ-[FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldstart/)และ[FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldend/)
* โหนด[FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_separator/)จะแยกข้อความภายในฟิลด์ลงในโค้ดฟิลด์และผลลัพธ์ของฟิลด์
* รหัสฟิลด์จะกำหนดลักษณะการทำงานทั่วไปของฟิลด์ในขณะที่ผลลัพธ์ของฟิลด์จะยังคงผลลัพธ์ล่าสุดเมื่อฟิลด์นี้ถูกอัปเดตโดยใช้Microsoft WordหรือAspose.Words
* ผลลัพธ์ฟิลด์คือสิ่งที่ถูกเก็บไว้ในฟิลด์และแสดงในเอกสารเมื่อดู

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

โครงสร้างยังสามารถมองเห็นด้านล่างในรูปแบบลำดับชั้นโดยใช้โครงการสาธิต*"DocumentExplorer"*.

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## ฟิลด์ที่ไม่สามารถถูกแทนที่ด้วยข้อความ

การแทนที่ฟิลด์ที่มีข้อความแบบคงที่ไม่ทำงานอย่างถูกต้องสำหรับบางเขตข้อมูลในส่วนหัวห.

ตัวอย่างเช่นการพยายามแปลงฟิลด์`PAGE`ในส่วนหัวหรือส่วนท้ายเป็นข้อความแบบคงที่จะส่งผลใ นท้ายทั้งนี้เนื่องจากส่วนหัวและท้ายกระดาษถูกทำซ้ำในหลายหน้าและเมื่อพวกเขายังคงเป็.

งไรก็ตามในส่วนหัวฟิลด์`PAGE`จะแปลเป็นข้อความแบบคงที่ ข้อความรันนี้จะถูกประเมินว่าเป็นหน้าสุดท้ายในส่วนซึ่งจะทำให้ฟิลด์`PAGE`ในส่วนหัวแสดงหน้าสุดท้ายเหนือทุกหน้า.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทนที่ฟิลด์ด้วยผลลัพธ์ล่าสุด:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UnlinkFields.cpp" >}}

## แปลงบางประเภทฟิลด์ในส่วนเอกสารที่เฉพาะเจาะจง

เนื่องจาก**ConvertFieldsToStaticText**เมธอดยอมรับสองพารามิเตอร์-[CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/)คุณสมบัติและการแจงนับ[FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/)จึงเป็นไปได้ที่จะส่งโห นี้จะช่วยให้ฟิลด์ที่จะถูกแปลงเป็นข้อความแบบคงที่เฉพาะในส่วนที่เฉพาะเจาะจงของเอกส.

ตัวอย่างเช่น คุณสามารถส่งอ็อบเจ็กต์ [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) และแปลงฟิลด์ประเภทที่ระบุจากเอกสารทั้งหมดเป็นข้อความคงที่ หรือคุณสามารถส่งอ็อบเจ็กต์ [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) ของส่วนและแปลงเฉพาะฟิลด์ที่พบในเนื้อหานั้นเท่านั้น.

{{% alert color="primary" %}}

เมื่อผ่านโหนดระดับบล็อกเช่น[Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/)โปรดทราบว่าในบางกรณีฟิลด์สามารถครอบคลุมหลายย่อหน้า ถ้าเกิดเหตุการณ์นี้ก็จะแนะนำให้ผ่านผู้ปกครองของคอมโพสิตแทนเพื่อหลีกเลี่ยงนี้.

{{% /alert %}}

การแจงนับ[FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/)ที่ส่งผ่านไปยังวิธีการ**ConvertFieldsToStaticText**ระบุชนิดของฟิลด์ที่ควรจะแปลงเป็นข้อความแบบคงที่ ชนิดฟิลด์อื่นๆที่พบในเอกสารจะยังคงไม่เปลี่ยนแปลง.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเลือกฟิลด์ของชนิดที่ระบุ–*targetFieldType*ในโหนดที่เฉพาะเจาะจง-*compositeNode*และแ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cpp" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแปลงฟิลด์`IF`ทั้งหมดในเอกสารเป็นข้อความแบบสแตติก:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแปลงฟิลด์`PAGE`ทั้งหมดในเนื้อหาของเอกสารเป็นข้อความแบบ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแปลงฟิลด์`IF`ทั้งหมดในย่อหน้าสุดท้ายเป็นข้อความแบบคงที่:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}