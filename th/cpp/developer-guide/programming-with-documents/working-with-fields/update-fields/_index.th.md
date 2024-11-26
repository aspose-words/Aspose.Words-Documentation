---
title: ปรับปรุงฟิลด์ในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: อัปเดตฟิลด์
linktitle: อัปเดตฟิลด์
description: "เรียนรู้วิธีอัปเดตฟิลด์ในC++ อัปเดตฟิลด์ตามโปรแกรมหรือใช้การอัปเดตฟิลด์อัตโนมัติโดยใช้C++API."
type: docs
weight: 30
url: /th/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

โดยทั่วไปฟิลด์ที่แทรกลงในMicrosoft Wordมีค่าที่เป็นปัจจุบันอยู่แล้ว ตัวอย่างเช่นถ้าฟิลด์เป็นสูตรหรือหมายเลขหน้ามันจะมีค่าคำนวณที่ถูกต้องสำหรับรุ่นที่กำหน แต่ถ้าคุณมีโปรแกรมประยุกต์ที่สร้างหรือปรับเปลี่ยนเอกสารที่มีเขตข้อมูลเช่นการรวมเอก.

## วิธีการอัปเดตฟิลด์

เมื่อเอกสารถูกโหลดAspose.WordsเลียนแบบพฤติกรรมของMicrosoft Wordด้วยตัวเลือกในการอัปเดตฟิลด์โดยอัตโนมัติ ลักษณะการทำงานสามารถสรุปได้ดังนี้:

- เมื่อคุณเปิด/บันทึกเอกสารฟิลด์ยังคงเหมือนเดิม
- คุณสามารถอัพเดตฟิลด์ทั้งหมดในเอกสารได้อย่างชัดเจนตัวอย่างเช่นสร้าง`TOC`เมื่อคุณต้องการ
- เมื่อคุณแสดงผลเป็นPDFหรือXPSฟิลด์ที่เกี่ยวข้องกับการระบุหมายเลขหน้าในส่วนหัว/ท้ายกระดาษ
- เมื่อคุณประมวลผลmail mergeทุกฟิลด์จะถูกอัปเดตโดยอัตโนมัติ

### ปรับปรุงฟิลด์ทางโปรแกรม

หากต้องการอัปเดตฟิลด์ในเอกสารทั้งหมดอย่างชัดเจนเพียงแค่เรียกวิธีการ[UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) เมื่อต้องการปรับปรุงเขตข้อมูลที่มีอยู่ในส่วนของเอกสารขอรับวัตถุ[Range](https://reference.aspose.com/words/cpp/aspose.words/range/)และเรียกวิธีการ[UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/) ในAspose.Wordsคุณสามารถขอรับ**Range**สำหรับโหนดใดๆในแผนผังเอกสารเช่น[Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), ฯลฯ การใช้คุณสมบัติ[Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/)คุณสามารถอัปเดตผลลัพธ์ของฟิลด์เดียวโดยการเรียกวิธีการ[Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/).

### การปรับปรุงอัตโนมัติของเขตข้อมูลที่เกี่ยวข้องกับหน้าในระหว่างการแสดงผล

เมื่อคุณดำเนินการแปลงเอกสารเป็นรูปแบบหน้าถาวรเช่นPDFหรือXPSแล้วAspose.Wordsจะอัปเดตฟิลด์ที่เกี่ยวข้องกับเค้าโครงหน้าเว็บโดยอัตโนมัติ`PAGE`,`PAGEREF`ที่พบในส่วนหัว/ท้ายกระดาษของเอกสาร ลักษณะการทำงานนี้เลียนแบบลักษณะการทำงานของMicrosoft Wordเมื่อพิมพ์เอกสาร.

ถ้าคุณต้องการอัปเดตฟิลด์อื่นๆทั้งหมดในเอกสารคุณต้องโทร[UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/)ก่อนแสดงผลเอกสาร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการอัพเดตฟิลด์ทั้งหมดก่อนการแสดงผลเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### อัพเดตฟิลด์อัตโนมัติระหว่างMail Merge

เมื่อคุณรันmail mergeทุกฟิลด์ในเอกสารจะได้รับการอัปเดตโดยอัตโนมัติ งจากmail mergeเป็นกรณีของการอัพเดตฟิลด์ โปรแกรมพบฟิลด์mail mergeและต้องปรับปรุงผลลัพธ์ของมันซึ่งเกี่ยวข้องกับการโลภค่าจากแหล่งข้อมู ตรรกะเป็นของหลักสูตรที่ซับซ้อนมากขึ้นเช่นเมื่อจุดสิ้นสุดของเอกสาร/mail mergeภูมิภาคจะถึงแต่ยังมี.

## อัพเดทLastSavedTimeก่อนที่จะบันทึก

คุณสามารถใช้คุณสมบัติ[UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/)ว่าจะอัปเดตคุณสมบัติเอกสารในตัวที่สอดคล้องกันหรือไม่[LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/)เมื่อบันทึ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปรับปรุงคุณสมบัตินี้:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


