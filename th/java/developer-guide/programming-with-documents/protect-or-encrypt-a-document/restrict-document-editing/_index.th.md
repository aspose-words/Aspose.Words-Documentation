---
title: จำกัดการแก้ไขเอกสารในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: จำกัดการแก้ไขเอกสาร
linktitle: จำกัดการแก้ไขเอกสาร
description: "จำกัดการแก้ไขเอกสารโดยการตั้งค่าชนิดข้อจำกัด นอกจากนี้คุณยังสามารถลบการป้องกันและทำให้พื้นที่ที่สามารถแก้ไขได้โดยไม่จำกัดโดยใช้Java."
type: docs
weight: 30
url: /th/java/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

บางครั้งคุณอาจต้องจำกัดความสามารถในการแก้ไขเอกสารและอนุญาตให้มีการกระทำบ ะเป็นประโยชน์ในการป้องกันไม่ให้ผู้อื่นแก้ไขข้อมูลที่สำคัญและเป็นความลับในเอกสารข.

Aspose.Wordsอนุญาตให้คุณจำกัดการแก้ไขเอกสารโดยการตั้งค่าประเภทการจำกัด นอกจากนี้Aspose.Wordsยังช่วยให้คุณสามารถระบุการตั้งค่าการป้องกันการเขียนสำหรับเอกสาร.

บทความนี้อธิบายถึงวิธีใช้Aspose.Wordsเพื่อเลือกประเภทข้อจำกัดวิธีเพิ่มหรือเอาการการป้องกันและวิ.

## เลือกประเภทการจำกัดการแก้ไข

Aspose.Wordsช่วยให้คุณสามารถควบคุมวิธีที่คุณจำกัดเนื้อหาโดยใช้พารามิเตอร์การแจงนับ[ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) นี้จะช่วยให้คุณสามารถเลือกชนิดของการป้องกันที่แน่นอนเช่นต่อไปนี้:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

ทุกประเภทมีการรักษาความปลอดภัยด้วยรหัสผ่านและถ้ารหัสผ่านนี้ไม่ได้ป้อนอย่างถูกต้องผู้ใช้จะไม่สามารถเปลี่ยนเนื้อหาของเอกสารของคุณได้อย่างถูกต้องตามกฎหมาย ดังนั้นหากเอกสารของคุณจะถูกส่งกลับไปยังคุณโดยไม่จำเป็นต้องให้รหัสผ่านที่จำเป็นนี้เป็.

ถ้าคุณไม่ได้ตั้งรหัสผ่านเมื่อเลือกชนิดความปลอดภัยผู้ใช้อื่นสามารถละเว้นการป้องกันเอก.

{{% alert color="primary" %}}

โปรดทราบว่ารหัสผ่านที่ถูกตั้งเป็นเพียงคุณสมบัติในเอกสารที่สามารถเอาออกได้ถ้าคุณ รรักษาความปลอดภัยของเอกสาร วิธี[Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect)แสดงเพียงแค่นั้น.

{{% /alert %}}

## เพิ่มการป้องกันเอกสาร

การเพิ่มการป้องกันเอกสารของคุณเป็นกระบวนการที่ง่าย,เป็นสิ่งที่คุณต้องทำคือการใช้หนึ่.

Aspose.Wordsช่วยให้คุณปกป้องเอกสารของคุณจากการเปลี่ยนแปลงโดยใช้วิธีการ[Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int) วิธีนี้ไม่ใช่คุณลักษณะด้านความปลอดภัยและไม่เข้ารหัสเอกสาร.

{{% alert color="primary" %}}

ในMicrosoft Wordคุณสามารถจำกัดการแก้ไขในลักษณะที่คล้ายกันโดยใช้ทั้งสอง:

* จำกัดการแก้ไข(แฟ้ม→ข้อมูล Protect Protect ปกป้องเอกสาร)
* คุณลักษณะทางเลือก–"จำกัดการแก้ไข"(ตรวจสอบ Protect ป้องกัน Restric จำกัดการแก้ไข)

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มการป้องกันรหัสผ่านในเอกสารของคุณ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการจำกัดการแก้ไขในเอกสารดังนั้นการแก้ไขเฉพาะในเขตข้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## ลบการป้องกันเอกสาร

Aspose.Wordsช่วยให้คุณสามารถลบการป้องกันจากเอกสารที่มีการปรับเปลี่ยนเอกสารที่ง่ายและตรงไ คุณสามารถลบการป้องกันเอกสารออกได้โดยไม่ทราบรหัสผ่านจริงหรือให้รหัสผ่านที่ถูกต้องเพื่อปลดล็อกเอกสารโดยใช้วิธีการ[Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) ทั้งสองวิธีลบมีความแตกต่างไม่.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเอาการป้องกันออกจากเอกสารของคุณ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## ระบุพื้นที่ที่แก้ไขได้ไม่จำกัด

คุณสามารถจำกัดการแก้ไขเอกสารของคุณและในเวลาเดียวกันอนุญาตให้มีการเปลี่ยนแ ดังนั้นทุกคนที่เปิดเอกสารของคุณจะสามารถเข้าถึงส่วนที่ไม่จำกัดเหล่านี้และทำการเปลี่ย.

Aspose.Wordsช่วยให้คุณสามารถทำเครื่องหมายชิ้นส่วนที่สามารถเปลี่ยนแปลงได้ในเอกสารของคุณโดยใช้วิธีการ[StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange)และ[EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำเครื่องหมายเอกสารทั้งหมดเป็นแบบอ่านอย่างเดียว:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

คุณยังสามารถเลือกข้อจำกัดในการแก้ไขเอกสารต่างๆสำหรับส่วนต่างๆได้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มข้อจำกัดสำหรับเอกสารทั้งหมดและเอาข้อจำกัดสำ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
