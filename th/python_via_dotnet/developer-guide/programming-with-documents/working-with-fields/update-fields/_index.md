---
title: กำลังอัปเดตฟิลด์ Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: อัปเดตฟิลด์
linktitle: อัปเดตฟิลด์
description: "อัปเดตช่องในเอกสารด้วยวิธีต่างๆ และใช้ตัวเลือกอื่นใน Python"
type: docs
weight: 30
url: /th/python-net/update-fields/
---

โดยทั่วไปแล้ว ช่องที่แทรกลงใน Microsoft Word จะมีค่าล่าสุดอยู่แล้ว ตัวอย่างเช่น หากฟิลด์นั้นเป็นสูตรหรือหมายเลขหน้า ฟิลด์นั้นก็จะมีค่าที่คำนวณได้ถูกต้องสำหรับเวอร์ชันของเอกสารที่กำหนด แต่ถ้าคุณมีแอปพลิเคชันที่สร้างหรือแก้ไขเอกสารที่มีฟิลด์ต่างๆ เช่น การรวมเอกสารสองฉบับหรือเติมข้อมูลลงในเอกสาร ตามหลักการแล้ว ฟิลด์ทั้งหมดจะต้องได้รับการอัปเดตเพื่อให้เอกสารมีประโยชน์

## วิธีอัปเดตฟิลด์

เมื่อโหลดเอกสาร Aspose.Words จะเลียนแบบลักษณะการทำงานของ Microsoft Word พร้อมกับปิดตัวเลือกในการอัปเดตช่องโดยอัตโนมัติ พฤติกรรมสามารถสรุปได้ดังนี้:

- เมื่อคุณเปิด/บันทึกเอกสาร ช่องต่างๆ จะยังคงเหมือนเดิม
- คุณสามารถอัปเดตฟิลด์ทั้งหมดในเอกสารได้อย่างชัดเจน (เช่น สร้าง TOC ใหม่) เมื่อคุณต้องการ
- เมื่อคุณพิมพ์/เรนเดอร์เป็น PDF หรือ XPS ฟิลด์ที่เกี่ยวข้องกับการกำหนดหมายเลขหน้าในส่วนหัว/ท้ายกระดาษจะได้รับการอัปเดต
- เมื่อคุณดำเนินการ mail merge ฟิลด์ทั้งหมดจะได้รับการอัปเดตโดยอัตโนมัติ

### อัปเดตฟิลด์โดยทางโปรแกรม

หากต้องการอัปเดตช่องในเอกสารทั้งหมดอย่างชัดเจน เพียงโทรไปที่ [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) หากต้องการอัปเดตฟิลด์ที่มีอยู่ในส่วนหนึ่งของเอกสาร ให้รับออบเจ็กต์ [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) และเรียกใช้เมธอด [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/) ใน Aspose.Words คุณสามารถรับ **Range** สำหรับโหนดใดๆ ในแผนผังเอกสาร เช่น [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) เป็นต้น โดยใช้คุณสมบัติ [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) คุณสามารถอัปเดตผลลัพธ์ของฟิลด์เดียวได้โดยการเรียกเมธอด [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/)

### การอัปเดตฟิลด์ที่เกี่ยวข้องกับเพจโดยอัตโนมัติระหว่างการเรนเดอร์

เมื่อคุณดำเนินการแปลงเอกสารเป็นรูปแบบหน้าคงที่ เช่น PDF หรือ XPS แล้ว Aspose.Words จะอัปเดตฟิลด์ที่เกี่ยวข้องกับเค้าโครงหน้า `PAGE`, `PAGEREF` ที่พบในส่วนหัว/ส่วนท้ายของเอกสารโดยอัตโนมัติ ลักษณะการทำงานนี้เลียนแบบพฤติกรรมของ Microsoft Word เมื่อพิมพ์เอกสาร

หากคุณต้องการอัปเดตช่องอื่นๆ ทั้งหมดในเอกสาร คุณต้องเรียก [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) ก่อนที่จะเรนเดอร์เอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีอัปเดตฟิลด์ทั้งหมดก่อนแสดงผลเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)

{{% /alert %}}

### อัปเดตฟิลด์อัตโนมัติระหว่าง Mail Merge

เมื่อคุณดำเนินการ mail merge ช่องทั้งหมดในเอกสารจะได้รับการอัปเดตโดยอัตโนมัติ เนื่องจาก mail merge เป็นกรณีของการอัปเดตช่อง โปรแกรมพบฟิลด์ mail merge และจำเป็นต้องอัปเดตผลลัพธ์ ซึ่งเกี่ยวข้องกับการดึงค่าจากแหล่งข้อมูลแล้วแทรกลงในฟิลด์ แน่นอนว่าตรรกะนั้นซับซ้อนกว่า เช่น เมื่อถึงจุดสิ้นสุดของเอกสาร/ขอบเขต mail merge แต่ยังมีข้อมูลเพิ่มเติมที่จะรวมเข้าด้วยกัน จำเป็นต้องทำซ้ำขอบเขตและอัปเดตชุดฟิลด์ใหม่

## อัปเดตฟิลด์ที่มีแอตทริบิวต์สกปรก

w:dirty เป็นแอตทริบิวต์ระดับฟิลด์ที่จะรีเฟรชเฉพาะฟิลด์ที่คุณระบุเมื่อเปิดเอกสาร โดยจะแจ้งให้ MS Word รีเฟรชฟิลด์นี้ในครั้งถัดไปที่เปิดเอกสารเท่านั้น คุณสามารถใช้คุณสมบัติ [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) เพื่อระบุว่าจะอัปเดตฟิลด์ด้วยแอตทริบิวต์ Dirt หรือไม่ เมื่อตั้งค่าของ **update_dirty_fields** เป็น `True` ฟิลด์ทั้งหมดที่มีค่า `True` สำหรับคุณสมบัติ [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) หรือ [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) จะได้รับการอัปเดตในการโหลดเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการอัปเดตฟิลด์ที่มีแอตทริบิวต์ Dirt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## อัปเดตคุณสมบัติ LastSavedTime ก่อนบันทึก

คุณสามารถใช้คุณสมบัติ [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) ว่าจะอัปเดตคุณสมบัติเอกสารในตัวที่สอดคล้องกัน [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) หรือไม่เมื่อบันทึกเอกสาร

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปรับปรุงคุณสมบัตินี้:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

