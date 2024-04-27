---
title: ปรับปรุงช่องข้อมูลใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ปรับปรุงช่องข้อมูล
linktitle: ปรับปรุงช่องข้อมูล
description: "เรียน รู้ วิธี ปรับ ปรุง สนาม ใน Java. ปรับปรุงช่องข้อมูลอัตโนมัติ หรือใช้การปรับปรุงสนามอัตโนมัติโดยใช้ Java API"
type: docs
weight: 30
url: /th/java/update-field/
---

โดยทั่วไป สนามถูกแทรกเข้าไป Microsoft Word มีลําดับวันที่อยู่แล้ว ตัวอย่างเช่น หากสนามเป็นสูตรหรือหมายเลขหน้า มันจะบรรจุค่าคํานวณที่ถูกต้องสําหรับรุ่นที่กําหนดของเอกสาร แต่ถ้าคุณมีโปรแกรมที่สร้างหรือขยายเอกสารด้วยสนามอย่างการรวมเอกสาร 2 เอกสาร หรือการเพิ่มข้อมูลเข้าด้วยกัน

## วิธี ปรับ ปรุง สนาม

เมื่อมีการโหลดเอกสาร Aspose.Words เลียนแบบพฤติกรรมของ Microsoft Word ใช้ตัวเลือกปิดการปรับปรุงช่องข้อมูลโดยอัตโนมัติ พฤติกรรม อาจ สรุป ได้ ดัง ต่อ ไป นี้:

- เมื่อคุณเปิด/บันทึกเอกสาร สนามยังคงเหมือนเดิม
- คุณสามารถปรับปรุงทุกสาขาได้อย่างชัดเจน ในเอกสาร เช่น สร้างใหม่ `TOC` เมื่อคุณต้องการ
- เมื่อคุณพิมพ์/ เขียนคําสั่งไปยัง PDF หรือ XPS ช่องข้อมูลที่สัมพันธ์กับจํานวนหน้า ในส่วนหัว/เท้ามีการอัปเดต
- เมื่อคุณดําเนินการ mail merge ช่องข้อมูลทั้งหมดถูกปรับปรุงโดยอัตโนมัติ

### ปรับปรุงช่องข้อมูล

เพื่อความทันสมัยโดยตรงในเอกสารทั้งหมด เพียงแค่เรียก [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) วิธี เพื่อปรับปรุงช่องข้อมูลที่อยู่ในส่วนของเอกสาร ให้ได้รับ [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) และเรียกวัตถุ [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) วิธี ใน Aspose.Words, คุณสามารถหา **Range** สําหรับโหนดใด ๆ ในต้นไม้เอกสารเช่น [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), ฯลฯ ใช้ [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) ทรัพย์สิน คุณสามารถปรับปรุงผลของสนามเดียว โดยโทร [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) วิธี

### ปรับปรุงช่องข้อมูลของหน้าเว็บใหม่อัตโนมัติระหว่างการแสดงผล

เมื่อคุณทําการแปลงเอกสารไปเป็นรูปแบบหน้าคงที่ เช่น ไปยัง PDF หรือ XPS, งั้น Aspose.Words จะทําการปรับปรุงช่องข้อมูลเกี่ยวกับการจัดวางหน้ากระดาษให้อัตโนมัติ `PAGE`, `PAGEREF` พบในส่วนหัวจดหมาย พฤติกรรมนี้เลียนแบบพฤติกรรม Microsoft Word เมื่อมีการพิมพ์เอกสาร

หากคุณต้องการปรับปรุงช่องข้อมูลอื่น ๆ ทั้งหมดในเอกสาร แล้วคุณจะต้องโทร [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) ก่อนที่จะแสดงเอกสาร

ตัวอย่างต่อไปนี้แสดงวิธีปรับปรุงช่องข้อมูลทั้งหมด ก่อนที่จะแสดงเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### ปรับปรุงช่องข้อมูลอัตโนมัติระหว่าง Mail Merge

เมื่อคุณประมวลผล <span notrans="<span notrans=" mail merge"=""></span>'"> ทุกช่องข้อมูลในเอกสารจะถูกปรับปรุงให้อัตโนมัติ เพราะว่า mail merge เป็นคดีความคืบหน้า โปรแกรมพบกับ mail merge การ ออก กําลัง กาย และ จําเป็น ต้อง ปรับ ปรุง ให้ ดี ขึ้น ซึ่ง เกี่ยว ข้อง กับ การ รับ เอา คุณค่า จาก แหล่ง ข้อมูล แล้ว สอด เข้า ไป ใน สนาม. ตรรกะก็คือ แน่นอน ซับซ้อนมากขึ้น ตัวอย่างเช่น เมื่อจบเอกสาร /mail merge ถึงพื้นที่แล้ว แต่ยังมีข้อมูลเพิ่มเติมให้รวมอยู่ จากนั้นพื้นที่ต้องคัดลอก และปรับปรุงสนามใหม่

## ปรับปรุงช่องข้อมูลต่าง ๆ ที่มีแอททริบิวต์ของ December

แอตทริบิวต์ของ w: dirty เป็นแอททริบิวต์ระดับพื้นที่ที่จะรีเฟรชเฉพาะช่องที่คุณกําหนดเมื่อเปิดเอกสาร มันบอกMS Word ให้รีเฟรชช่องนี้เท่านั้น เมื่อเริ่มเปิดเอกสารครั้งต่อไป คุณสามารถใช้การโหลด Options. setUpdatedateDirtyFilds () เพื่อระบุว่าจะปรับปรุงช่องข้อมูลด้วยแอตทริบิวต์ที่สกปรกหรือไม่ เมื่อค่าของโหลด Options. setUpdatedateDirtyFilids () ถูกตั้งค่าเป็น <span notrans="<span notrans=" *true*"=""></span>'"> ทุกช่องข้อมูล *true* ค่าสําหรับ `Field.IsDirty` หรือ `FieldChar.IsDirty` คุณสมบัติมีการอัปเดตเมื่อเอกสารโหลด

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ปรับ ปรุง สนาม ให้ มี ลักษณะ นิสัย ที่ ไม่ สะอาด:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## ปรับปรุงคุณสมบัติการบันทึกเวลาล่าสุดก่อนที่จะบันทึก

คุณสามารถใช้ [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) คุณสมบัติที่จะใช้ปรับปรุงคุณสมบัติของเอกสาร [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) ตอนที่บันทึกเอกสาร

ตัวอย่างรหัสต่อไปนี้ แสดงวิธีปรับปรุงคุณสมบัตินี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
