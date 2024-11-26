---
title: ปรับปรุงฟิลด์ในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: อัปเดตฟิลด์
linktitle: อัปเดตฟิลด์
description: "เรียนรู้วิธีการอัปเดตฟิลด์ในJava อัปเดตฟิลด์ตามโปรแกรมหรือใช้การอัปเดตฟิลด์อัตโนมัติโดยใช้JavaAPI"
type: docs
weight: 30
url: /th/java/update-field/
timestamp: 2024-01-27-14-07-04
---

โดยทั่วไปฟิลด์ที่แทรกลงในMicrosoft Wordมีค่าที่เป็นปัจจุบันอยู่แล้ว ตัวอย่างเช่นถ้าฟิลด์เป็นสูตรหรือหมายเลขหน้ามันจะมีค่าคำนวณที่ถูกต้องสำหรับรุ่นที่กำหน แต่ถ้าคุณมีโปรแกรมประยุกต์ที่สร้างหรือปรับเปลี่ยนเอกสารที่มีเขตข้อมูลเช่นการรวมเอก.

## วิธีการอัปเดตฟิลด์

เมื่อเอกสารถูกโหลดAspose.WordsเลียนแบบพฤติกรรมของMicrosoft Wordด้วยตัวเลือกในการอัปเดตฟิลด์โดยอัตโนมัติ ลักษณะการทำงานสามารถสรุปได้ดังนี้:

- เมื่อคุณเปิด/บันทึกเอกสารฟิลด์ยังคงเหมือนเดิม
- คุณสามารถอัพเดตฟิลด์ทั้งหมดในเอกสารได้อย่างชัดเจนตัวอย่างเช่นสร้าง`TOC`เมื่อคุณต้องการ
- เมื่อคุณพิมพ์/แสดงผลเป็นPDFหรือXPSฟิลด์ที่เกี่ยวข้องกับการระบุหมายเลขหน้าในส่วนหัว/ท้ายกระดาษ
- เมื่อคุณประมวลผลMail Mergeทุกฟิลด์จะถูกอัปเดตโดยอัตโนมัติ

### ปรับปรุงฟิลด์ทางโปรแกรม

หากต้องการอัปเดตฟิลด์ในเอกสารทั้งหมดอย่างชัดเจนเพียงแค่เรียกวิธีการ[UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) เมื่อต้องการปรับปรุงเขตข้อมูลที่มีอยู่ในส่วนของเอกสารขอรับวัตถุ[Range](https://reference.aspose.com/words/java/com.aspose.words/range/)และเรียกวิธีการ[UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) ในAspose.Wordsคุณสามารถขอรับ**Range**สำหรับโหนดใดๆในแผนผังเอกสารเช่น[Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), ฯลฯ การใช้คุณสมบัติ[GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) คุณสามารถอัปเดตผลลัพธ์ของฟิลด์เดียวโดยการเรียกวิธีการ[Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update).

### การปรับปรุงอัตโนมัติของเขตข้อมูลที่เกี่ยวข้องกับหน้าในระหว่างการแสดงผล

เมื่อคุณดำเนินการแปลงเอกสารเป็นรูปแบบหน้าถาวรเช่นPDFหรือXPSแล้วAspose.Wordsจะอัปเดตฟิลด์ที่เกี่ยวข้องกับเค้าโครงหน้าโดยอัตโนมัติ`PAGE`,`PAGEREF`ที่พบในส่วนหัว/ท้ายกระดาษของเอกสาร ลักษณะการทำงานนี้เลียนแบบลักษณะการทำงานของMicrosoft Wordเมื่อพิมพ์เอกสาร.

ถ้าคุณต้องการอัปเดตฟิลด์อื่นๆทั้งหมดในเอกสารคุณต้องโทร[UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields)ก่อนแสดงผลเอกสาร.

ตัวอย่างต่อไปนี้แสดงวิธีการอัพเดตฟิลด์ทั้งหมดก่อนการแสดงผลเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### อัพเดตฟิลด์อัตโนมัติระหว่างMail Merge

เมื่อคุณรันmail mergeทุกฟิลด์ในเอกสารจะได้รับการอัปเดตโดยอัตโนมัติ เนื่องจากMail Mergeเป็นกรณีของการปรับปรุงฟิลด์ โปรแกรมพบฟิลด์Mail Mergeและต้องปรับปรุงผลลัพธ์ของมันซึ่งเกี่ยวข้องกับการโลภค่าจากแหล่งข้อมู ตรรกะเป็นของหลักสูตรที่ซับซ้อนมากขึ้นเช่นเมื่อจุดสิ้นสุดของเอกสาร/mail mergeภูมิภาคจะถึงแต่ยังมี.

## ปรับปรุงเขตข้อมูลที่มีแอตทริบิวต์สกปรก

การเปลี่ยนแปลงใดๆในโรงงานซึ่งจะนำไปสู่คุณลักษณะใหม่โชคดีหรือโชคร้ายนี้สามารถจะ มันบอกคำMSให้รีเฟรชเฉพาะฟิลด์นี้ในครั้งถัดไปเปิดเอกสาร คุณสามารถใช้LoadOptionssetUpdateDirtyFields()คุณสมบัติเพื่อระบุว่าจะอัพเดตฟิลด์ด้วยแอ็ตทริบิวต์สกปรก เมื่อค่าของLoadOptionssetUpdateDirtyFields()ตั้งค่าเป็น*true*ทุกฟิลด์ที่มีค่า*true*สำหรับ`Field.IsDirty`หรือ`FieldChar.IsDirty`คุณสมบัติจะถูกอัปเดตเมื่อโหลดเอกสาร

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปรับปรุงเขตข้อมูลที่มีแอตทริบิวต์สกปรก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## อัพเดทLastSavedTimeก่อนที่จะบันทึก

คุณสามารถใช้คุณสมบัติ[UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty)ว่าจะอัปเดตคุณสมบัติเอกสารในตัวที่สอดคล้องกันหรือไม่[LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime)เมื่อบันทึ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปรับปรุงคุณสมบัตินี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
