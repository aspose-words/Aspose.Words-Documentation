---
title: จํากัดเอกสาร กําลังแก้ไขใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: จํากัดการแก้ไขเอกสาร
linktitle: จํากัดการแก้ไขเอกสาร
description: "จํากัดการแก้ไขเอกสารโดยตั้งค่าประเภทของข้อจํากัด คุณยังสามารถลบการป้องกันและทําให้ภูมิภาคที่แก้ไขไม่ได้ง่ายโดยใช้ Java."
type: docs
weight: 30
url: /th/java/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

บาง ครั้ง คุณ อาจ ต้อง จํากัด ความ สามารถ ใน การ แก้ไข เอกสาร และ ยอม ให้ มี การ กระทํา บาง อย่าง เท่า นั้น. อาจ เป็น ประโยชน์ ที่ จะ ป้องกัน คน อื่น ๆ ไม่ ให้ แก้ไข ข้อมูล ที่ ละเอียด อ่อน และ เป็น ความ ลับ ใน เอกสาร ของ คุณ.

Aspose.Words ให้คุณได้จํากัดการแก้ไขเอกสารโดยตั้งค่าประเภทของข้อจํากัด นอกจากนั้น Aspose.Words ให้คุณได้กําหนดการตั้งค่าการป้องกันการเขียนสําหรับเอกสารด้วย

บทความ นี้ อธิบาย วิธี ใช้ Aspose.Words เพื่อเลือกชนิดของข้อจํากัด, วิธีเพิ่มหรือลบการป้องกัน, และวิธีทําภูมิภาคที่แก้ไขได้อย่างไม่จํากัด

## เลือกประเภทของการจํากัดการแก้ไข

Aspose.Words ช่วยให้คุณควบคุมวิธีการจํากัดเนื้อหาโดยใช้ [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) พารามิเตอร์การรวม การ ทํา เช่น นี้ จะ ทํา ให้ คุณ สามารถ เลือก การ ปก ป้อง ที่ ถูก ต้อง ได้ เช่น:

*อนุญาตให้ใช้เฉพาะComment
* อนุญาต ให้ มี แต่ การ ปรับ ปรุง
* อนุญาต ให้ มี การ ทบทวน ได้ เท่า นั้น
* อ่านได้อย่างเดียว
* ไม่ มี การ ขัด ขวาง

ทุกประเภทมีการตรวจสอบรหัสผ่าน และหากรหัสผ่านนี้ไม่ได้ป้อนอย่างถูกต้อง ผู้ใช้จะไม่สามารถเปลี่ยนแปลงเนื้อหาในเอกสารของคุณได้อย่างถูกต้องตามกฎหมาย ดัง นั้น ถ้า เอกสาร ของ คุณ ถูก ส่ง มา ให้ คุณ โดย ไม่ มี ข้อ เรียก ร้อง ใน การ ให้ รหัสผ่าน ที่ จําเป็น นี่ เป็น สัญญาณ ว่า มี อะไร ผิด.

หากคุณไม่ได้ตั้งค่ารหัสผ่านเมื่อเลือกชนิดของความปลอดภัย ผู้ใช้อื่น ๆ จะเพียงแค่ไม่สนใจการป้องกันเอกสารของคุณ

{{% alert color="primary" %}}

โปรดสังเกตว่ารหัสผ่านที่ถูกตั้งค่าไว้ เป็นแค่คุณสมบัติในเอกสารที่สามารถลบได้ หากสามารถเข้าใช้งานคุณสมบัติของเอกสารได้ ดัง นั้น รหัสผ่าน ดัง กล่าว จึง ไม่ ใช่ การ รับ ประกัน ว่า เอกสาร จะ ปลอด ภัย. เดอะ [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) วิธีการแสดงให้เห็นว่า

{{% /alert %}}

## เพิ่มการป้องกันเอกสาร

การ เพิ่ม การ ป้องกัน เอกสาร ของ คุณ เป็น กระบวนการ ง่าย ๆ เพราะ คุณ ต้อง ทํา เพียง วิธี หนึ่ง ใน การ ป้องกัน ที่ ให้ ราย ละเอียด ใน ส่วน นี้.

Aspose.Words ให้คุณได้ปกป้องเอกสารของคุณจากการเปลี่ยนแปลงโดยใช้ [Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int) วิธี วิธีการนี้ไม่ใช่คุณสมบัติความปลอดภัย และไม่ได้เข้ารหัสเอกสาร

{{% alert color="primary" %}}

ใน Microsoft Word, คุณสามารถจํากัดการแก้ไขในลักษณะเดียวกัน โดยใช้ทั้ง:

* จํากัด การ แก้ไข (File → Info) ป้องกัน เอกสาร
*ความสามารถทางเลือก – "ห้ามแก้ไข" (Review → ป้องกันการแก้ไข)

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีเพิ่มการป้องกันรหัสผ่านในเอกสารของคุณ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

ตัวอย่างโค้ดต่อไปนี้ แสดงให้เห็นว่าจะจํากัดการแก้ไขในเอกสารอย่างไร ดังนั้นจะแก้ไขได้เฉพาะในแบบฟอร์มเท่านั้น:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## ลบการป้องกันเอกสาร

Aspose.Words ให้คุณได้ทําการลบการป้องกันจากเอกสารที่มีการแก้ไขเอกสารแบบง่าย ๆ และโดยตรง คุณสามารถลบการป้องกันของเอกสารได้ โดยไม่ทราบรหัสผ่านจริง ๆ หรือจะใช้รหัสผ่านที่ถูกต้องในการปลดล็อคเอกสารด้วย [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) วิธี การกําจัดทั้งสองวิธี ไม่ต่างกัน

ตัวอย่างรหัสต่อไปนี้ แสดงวิธีเอาการป้องกันออกจากเอกสารของคุณ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## ระบุขอบเขตที่แก้ไขไม่ได้

คุณสามารถจํากัดการแก้ไขเอกสารของคุณได้ และในขณะเดียวกันก็อนุญาตให้มีการเปลี่ยนแปลงส่วนต่าง ๆ ของเอกสารได้ ดังนั้น ใครก็ตามที่เปิดเอกสารของคุณ ก็จะสามารถเข้าถึง ชิ้นส่วนที่ไม่สงบเหล่านี้ และเปลี่ยนแปลงเนื้อหา

Aspose.Words ให้คุณได้ทําเครื่องหมายส่วนต่าง ๆ ที่สามารถเปลี่ยนได้ในเอกสารของคุณโดยใช้ [StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange) ถึง [EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange) วิธี

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีทําเครื่องหมายทั้งเอกสารว่าอ่านได้อย่างเดียว และระบุขอบเขตที่แก้ไขได้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

นอกจากนี้คุณยังสามารถเลือกการแก้ไขเอกสารที่แตกต่างกัน สําหรับส่วนต่าง ๆ

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มข้อจํากัดสําหรับเอกสารทั้งหมด แล้วลบข้อห้ามสําหรับหนึ่งส่วน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
