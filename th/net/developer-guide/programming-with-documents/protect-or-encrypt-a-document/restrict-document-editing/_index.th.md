---
title: จำกัดการแก้ไขเอกสารใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: จำกัดการแก้ไขเอกสาร
linktitle: จำกัดการแก้ไขเอกสาร
description: "จำกัดการแก้ไขเอกสารโดยการตั้งค่าประเภทการจำกัดโดยใช้ C# คุณยังสามารถลบการป้องกันและสร้างขอบเขตที่แก้ไขได้ไม่จำกัด"
type: docs
weight: 30
url: /th/net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

บางครั้งคุณอาจต้องจำกัดความสามารถในการแก้ไขเอกสารและอนุญาตการดำเนินการบางอย่างกับเอกสารเท่านั้น สิ่งนี้มีประโยชน์ในการป้องกันไม่ให้ผู้อื่นแก้ไขข้อมูลที่ละเอียดอ่อนและเป็นความลับในเอกสารของคุณ

Aspose.Words อนุญาตให้คุณจำกัดการแก้ไขเอกสารโดยการตั้งค่าประเภทข้อจำกัด นอกจากนี้ Aspose.Words ยังช่วยให้คุณระบุการตั้งค่าการป้องกันการเขียนสำหรับเอกสารได้อีกด้วย

บทความนี้จะอธิบายวิธีใช้ Aspose.Words เพื่อเลือกประเภทข้อจำกัด วิธีเพิ่มหรือลบการป้องกัน และวิธีการสร้างขอบเขตที่แก้ไขได้โดยไม่จำกัด

## เลือกประเภทข้อจำกัดการแก้ไข

Aspose.Words ช่วยให้คุณควบคุมวิธีการจำกัดเนื้อหาโดยใช้พารามิเตอร์การแจงนับ [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) ซึ่งจะช่วยให้คุณสามารถเลือกประเภทการป้องกันที่แน่นอนได้ดังต่อไปนี้:

* อนุญาตเฉพาะความคิดเห็น
* AllowOnlyFormFields
* อนุญาตเฉพาะการแก้ไขเท่านั้น
* อ่านเท่านั้น
*ไม่มีการป้องกัน

ทุกประเภทมีการรักษาความปลอดภัยด้วยรหัสผ่าน และหากป้อนรหัสผ่านไม่ถูกต้อง ผู้ใช้จะไม่สามารถเปลี่ยนแปลงเนื้อหาในเอกสารของคุณได้อย่างถูกกฎหมาย ดังนั้น หากเอกสารของคุณถูกส่งคืนถึงคุณโดยไม่จำเป็นต้องระบุรหัสผ่านที่จำเป็น นี่ถือเป็นสัญญาณว่ามีบางอย่างผิดปกติ

หากคุณไม่ได้ตั้งรหัสผ่านเมื่อเลือกประเภทความปลอดภัย ผู้ใช้รายอื่นสามารถเพิกเฉยต่อการป้องกันเอกสารของคุณได้

{{% alert color="primary" %}}

โปรดทราบว่ารหัสผ่านที่กำลังตั้งค่าเป็นเพียงคุณสมบัติในเอกสารที่สามารถลบออกได้หากมีการเข้าถึงคุณสมบัติของเอกสาร ดังนั้นรหัสผ่านดังกล่าวจึงไม่รับประกันความปลอดภัยของเอกสาร วิธี [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) แสดงให้เห็นเช่นนั้น

{{% /alert %}}

## เพิ่มการป้องกันเอกสาร

การเพิ่มการป้องกันให้กับเอกสารของคุณเป็นกระบวนการง่ายๆ เนื่องจากสิ่งที่คุณต้องทำคือใช้วิธีการป้องกันวิธีใดวิธีหนึ่งที่มีรายละเอียดในส่วนนี้

Aspose.Words ช่วยให้คุณปกป้องเอกสารของคุณจากการเปลี่ยนแปลงโดยใช้วิธี [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/) วิธีการนี้ไม่ใช่คุณลักษณะด้านความปลอดภัยและไม่ได้เข้ารหัสเอกสาร

{{% alert color="primary" %}}

ใน Microsoft Word คุณสามารถจำกัดการแก้ไขในลักษณะเดียวกันได้โดยใช้ทั้งสองอย่าง:

* จำกัดการแก้ไข (ไฟล์ → ข้อมูล → ป้องกันเอกสาร)
* คุณสมบัติทางเลือก – "จำกัดการแก้ไข" (ตรวจสอบ → ป้องกัน → จำกัดการแก้ไข)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเพิ่มการป้องกันรหัสผ่านให้กับเอกสารของคุณ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการจำกัดการแก้ไขในเอกสาร ดังนั้นจึงแก้ไขได้เฉพาะในช่องแบบฟอร์มเท่านั้น:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## ลบการป้องกันเอกสาร

Aspose.Words ช่วยให้คุณสามารถลบการป้องกันออกจากเอกสารด้วยการแก้ไขเอกสารที่ง่ายและโดยตรง คุณสามารถเอาการป้องกันเอกสารออกได้โดยไม่ทราบรหัสผ่านจริง หรือระบุรหัสผ่านที่ถูกต้องเพื่อปลดล็อกเอกสารโดยใช้วิธี [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) วิธีการลบทั้งสองวิธีไม่มีความแตกต่างกัน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเอาการป้องกันออกจากเอกสารของคุณ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## ระบุภูมิภาคที่แก้ไขได้ไม่จำกัด

คุณสามารถจำกัดการแก้ไขเอกสารของคุณและในขณะเดียวกันก็อนุญาตให้เปลี่ยนแปลงส่วนที่เลือกได้ ดังนั้นใครก็ตามที่เปิดเอกสารของคุณจะสามารถเข้าถึงส่วนที่ไม่จำกัดและทำการเปลี่ยนแปลงเนื้อหาได้

Aspose.Words ช่วยให้คุณสามารถทำเครื่องหมายส่วนต่างๆ ที่สามารถเปลี่ยนแปลงได้ในเอกสารของคุณโดยใช้วิธี [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) และ [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำเครื่องหมายทั้งเอกสารเป็นแบบอ่านอย่างเดียวและระบุขอบเขตที่สามารถแก้ไขได้:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

คุณยังสามารถเลือกข้อจำกัดการแก้ไขเอกสารที่แตกต่างกันสำหรับส่วนต่างๆ ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเพิ่มข้อจำกัดสำหรับเอกสารทั้งหมด จากนั้นจึงเอาข้อจำกัดสำหรับส่วนใดส่วนหนึ่งออก:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
