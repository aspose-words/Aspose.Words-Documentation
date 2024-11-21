---
title: อัปเดตช่อง C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: อัปเดตฟิลด์
linktitle: อัปเดตฟิลด์
description: "ดูวิธีอัปเดตช่องใน C# อัปเดตฟิลด์โดยทางโปรแกรมหรือใช้การอัปเดตฟิลด์อัตโนมัติโดยใช้ .NET API"
type: docs
weight: 30
url: /th/net/update-fields/
timestamp: 2024-01-27-14-07-04
---

โดยทั่วไปแล้ว ช่องที่แทรกลงใน Microsoft Word จะมีค่าล่าสุดอยู่แล้ว ตัวอย่างเช่น หากฟิลด์นั้นเป็นสูตรหรือหมายเลขหน้า ฟิลด์นั้นก็จะมีค่าที่คำนวณได้ถูกต้องสำหรับเวอร์ชันของเอกสารที่กำหนด แต่ถ้าคุณมีแอปพลิเคชันที่สร้างหรือแก้ไขเอกสารที่มีฟิลด์ต่างๆ เช่น การรวมเอกสารสองฉบับหรือเติมข้อมูลลงในเอกสาร ตามหลักการแล้ว ฟิลด์ทั้งหมดจะต้องได้รับการอัปเดตเพื่อให้เอกสารมีประโยชน์

## วิธีอัปเดตฟิลด์

เมื่อโหลดเอกสาร Aspose.Words จะเลียนแบบลักษณะการทำงานของ Microsoft Word พร้อมกับปิดตัวเลือกในการอัปเดตช่องโดยอัตโนมัติ พฤติกรรมสามารถสรุปได้ดังนี้:

- เมื่อคุณเปิด/บันทึกเอกสาร ช่องต่างๆ จะยังคงเหมือนเดิม
- คุณสามารถอัปเดตช่องทั้งหมดในเอกสารได้อย่างชัดเจน เช่น สร้าง `TOC` ใหม่ เมื่อคุณต้องการ
- เมื่อคุณพิมพ์/เรนเดอร์เป็น PDF หรือ XPS ฟิลด์ที่เกี่ยวข้องกับการกำหนดหมายเลขหน้าในส่วนหัว/ท้ายกระดาษจะได้รับการอัปเดต
- เมื่อคุณดำเนินการ mail merge ฟิลด์ทั้งหมดจะได้รับการอัปเดตโดยอัตโนมัติ

### อัปเดตฟิลด์โดยทางโปรแกรม

หากต้องการอัปเดตฟิลด์ในเอกสารทั้งหมดอย่างชัดเจน เพียงเรียกเมธอด [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) หากต้องการอัปเดตฟิลด์ที่มีอยู่ในส่วนหนึ่งของเอกสาร ให้รับออบเจ็กต์ [Range](https://reference.aspose.com/words/net/aspose.words/range/) และเรียกใช้เมธอด [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/) ใน Aspose.Words คุณสามารถรับ **Range** สำหรับโหนดใดๆ ในแผนผังเอกสาร เช่น [Section](https://reference.aspose.com/words/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) เป็นต้น โดยใช้คุณสมบัติ [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) คุณสามารถอัปเดตผลลัพธ์ของฟิลด์เดียวได้โดยการเรียกเมธอด [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/)

### การอัปเดตฟิลด์ที่เกี่ยวข้องกับเพจโดยอัตโนมัติระหว่างการเรนเดอร์

เมื่อคุณดำเนินการแปลงเอกสารเป็นรูปแบบหน้าคงที่ เช่น PDF หรือ XPS แล้ว Aspose.Words จะอัปเดตฟิลด์ที่เกี่ยวข้องกับเค้าโครงหน้า `PAGE`, `PAGEREF` ที่พบในส่วนหัว/ส่วนท้ายของเอกสารโดยอัตโนมัติ ลักษณะการทำงานนี้เลียนแบบพฤติกรรมของ Microsoft Word เมื่อพิมพ์เอกสาร

หากคุณต้องการอัปเดตช่องอื่นๆ ทั้งหมดในเอกสาร คุณต้องเรียก [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) ก่อนที่จะเรนเดอร์เอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีอัปเดตฟิลด์ทั้งหมดก่อนแสดงผลเอกสาร:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)

{{% /alert %}}

### อัปเดตฟิลด์อัตโนมัติระหว่าง Mail Merge

เมื่อคุณดำเนินการ mail merge ช่องทั้งหมดในเอกสารจะได้รับการอัปเดตโดยอัตโนมัติ เนื่องจาก mail merge เป็นกรณีของการอัปเดตช่อง โปรแกรมพบฟิลด์ mail merge และจำเป็นต้องอัปเดตผลลัพธ์ ซึ่งเกี่ยวข้องกับการดึงค่าจากแหล่งข้อมูลแล้วแทรกลงในฟิลด์ แน่นอนว่าตรรกะนั้นซับซ้อนกว่า เช่น เมื่อถึงจุดสิ้นสุดของเอกสาร/ขอบเขต mail merge แต่ยังมีข้อมูลเพิ่มเติมที่จะรวมเข้าด้วยกัน จำเป็นต้องทำซ้ำขอบเขตและอัปเดตชุดฟิลด์ใหม่

## อัปเดตฟิลด์ที่มีแอตทริบิวต์สกปรก

w:dirty เป็นแอตทริบิวต์ระดับฟิลด์ที่จะรีเฟรชเฉพาะฟิลด์ที่คุณระบุเมื่อเปิดเอกสาร โดยจะแจ้งให้ MS Word รีเฟรชฟิลด์นี้ในครั้งถัดไปที่เปิดเอกสารเท่านั้น คุณสามารถใช้คุณสมบัติ [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) เพื่อระบุว่าจะอัปเดตฟิลด์ด้วยแอตทริบิวต์ Dirt หรือไม่ เมื่อตั้งค่าของ **UpdateDirtyFields** เป็น *true* ฟิลด์ทั้งหมดที่มีค่า *true* สำหรับคุณสมบัติ [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) หรือ [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) จะได้รับการอัปเดตในการโหลดเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการอัปเดตฟิลด์ที่มีแอตทริบิวต์ Dirt:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## อัปเดตคุณสมบัติ LastSavedTime ก่อนบันทึก

คุณสามารถใช้คุณสมบัติ [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) ว่าจะอัปเดตคุณสมบัติเอกสารในตัว [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) ที่สอดคล้องกันเมื่อบันทึกเอกสารหรือไม่

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปรับปรุงคุณสมบัตินี้:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
