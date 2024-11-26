---
title: จำกัดการแก้ไขเอกสารใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: จำกัดการแก้ไขเอกสาร
linktitle: จำกัดการแก้ไขเอกสาร
description: "จำกัดการแก้ไขเอกสารโดยการตั้งค่าประเภทการจำกัดโดยใช้ Python คุณยังสามารถลบการป้องกันและสร้างขอบเขตที่แก้ไขได้ไม่จำกัด"
type: docs
weight: 30
url: /th/python-net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

บางครั้งคุณอาจต้องจำกัดความสามารถในการแก้ไขเอกสารและอนุญาตการดำเนินการบางอย่างกับเอกสารเท่านั้น สิ่งนี้มีประโยชน์ในการป้องกันไม่ให้ผู้อื่นแก้ไขข้อมูลที่ละเอียดอ่อนและเป็นความลับในเอกสารของคุณ

Aspose.Words อนุญาตให้คุณจำกัดการแก้ไขเอกสารโดยการตั้งค่าประเภทข้อจำกัด นอกจากนี้ Aspose.Words ยังช่วยให้คุณระบุการตั้งค่าการป้องกันการเขียนสำหรับเอกสารได้อีกด้วย

บทความนี้จะอธิบายวิธีใช้ Aspose.Words เพื่อเลือกประเภทข้อจำกัด วิธีเพิ่มหรือลบการป้องกัน และวิธีการสร้างขอบเขตที่แก้ไขได้โดยไม่จำกัด

## เลือกประเภทข้อจำกัดการแก้ไข

Aspose.Words ช่วยให้คุณควบคุมวิธีการจำกัดเนื้อหาโดยใช้พารามิเตอร์การแจงนับ [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) ซึ่งจะช่วยให้คุณสามารถเลือกประเภทการป้องกันที่แน่นอนได้ดังต่อไปนี้:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

ทุกประเภทมีการรักษาความปลอดภัยด้วยรหัสผ่าน และหากป้อนรหัสผ่านไม่ถูกต้อง ผู้ใช้จะไม่สามารถเปลี่ยนแปลงเนื้อหาในเอกสารของคุณได้อย่างถูกกฎหมาย ดังนั้น หากเอกสารของคุณถูกส่งคืนถึงคุณโดยไม่จำเป็นต้องระบุรหัสผ่านที่จำเป็น นี่ถือเป็นสัญญาณว่ามีบางอย่างผิดปกติ

หากคุณไม่ได้ตั้งรหัสผ่านเมื่อเลือกประเภทความปลอดภัย ผู้ใช้รายอื่นสามารถเพิกเฉยต่อการปกป้องเอกสารของคุณได้

{{% alert color="primary" %}}

โปรดทราบว่ารหัสผ่านที่ตั้งไว้เป็นเพียงคุณสมบัติในเอกสารที่สามารถลบออกได้หากมีการเข้าถึงคุณสมบัติของเอกสาร ดังนั้นรหัสผ่านดังกล่าวจึงไม่รับประกันความปลอดภัยของเอกสาร วิธี [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) แสดงให้เห็นเช่นนั้น

{{% /alert %}}

## เพิ่มการป้องกันเอกสาร

การเพิ่มการป้องกันให้กับเอกสารของคุณเป็นกระบวนการง่ายๆ เนื่องจากสิ่งที่คุณต้องทำคือใช้วิธีการป้องกันวิธีใดวิธีหนึ่งที่มีรายละเอียดในส่วนนี้

Aspose.Words ช่วยให้คุณปกป้องเอกสารของคุณจากการเปลี่ยนแปลงโดยใช้วิธี [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/) วิธีการนี้ไม่ใช่คุณลักษณะด้านความปลอดภัยและไม่ได้เข้ารหัสเอกสาร

{{% alert color="primary" %}}

ใน Microsoft Word คุณสามารถจำกัดการแก้ไขในลักษณะเดียวกันได้โดยใช้ทั้งสองอย่าง:

* จำกัดการแก้ไข (ไฟล์ → ข้อมูล → ป้องกันเอกสาร)
* คุณสมบัติทางเลือก – "จำกัดการแก้ไข" (ตรวจสอบ → ป้องกัน → จำกัดการแก้ไข)

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มการป้องกันรหัสผ่านให้กับเอกสารของคุณ:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการจำกัดการแก้ไขในเอกสาร ดังนั้นจึงแก้ไขได้เฉพาะในช่องแบบฟอร์มเท่านั้น:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Text added to a document.")

# A document protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# Save the protected document.
doc.save(docs_base.artifacts_dir + "DocumentProtection.AllowOnlyFormFieldsProtect.docx");
{{< /highlight >}}

## ลบการป้องกันเอกสาร

Aspose.Words ช่วยให้คุณสามารถลบการป้องกันออกจากเอกสารด้วยการแก้ไขเอกสารที่ง่ายและโดยตรง คุณสามารถเอาการป้องกันเอกสารออกได้โดยไม่ทราบรหัสผ่านจริง หรือระบุรหัสผ่านที่ถูกต้องเพื่อปลดล็อกเอกสารโดยใช้วิธี [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) วิธีการลบทั้งสองวิธีไม่มีความแตกต่างกัน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเอาการป้องกันออกจากเอกสารของคุณ:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Text added to a document.")

# Documents can have protection removed either with no password, or with the correct password.
doc.unprotect()
doc.protect(aw.ProtectionType.READ_ONLY, "newPassword")
doc.unprotect("newPassword")

doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveDocumentProtection.docx");
{{< /highlight >}}

## ระบุภูมิภาคที่แก้ไขได้ไม่จำกัด

คุณสามารถจำกัดการแก้ไขเอกสารของคุณและในขณะเดียวกันก็อนุญาตให้เปลี่ยนแปลงส่วนที่เลือกได้ ดังนั้นใครก็ตามที่เปิดเอกสารของคุณจะสามารถเข้าถึงส่วนที่ไม่จำกัดและทำการเปลี่ยนแปลงเนื้อหาได้

Aspose.Words ช่วยให้คุณสามารถทำเครื่องหมายส่วนต่างๆ ที่สามารถเปลี่ยนแปลงได้ในเอกสารของคุณโดยใช้วิธี [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) และ [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำเครื่องหมายทั้งเอกสารเป็นแบบอ่านอย่างเดียวและระบุขอบเขตที่สามารถแก้ไขได้:

{{< highlight python >}}
import aspose.words as aw

# Upload a document and make it as read-only.
doc = aw.Document(docs_base.my_dir + "Document.docx")
builder = aw.DocumentBuilder(doc)

doc.protect(aw.ProtectionType.READ_ONLY, "MyPassword")

builder.writeln("Hello world! Since we have set the document's protection level to read-only, we cannot edit this paragraph without the password.")

# Start an editable range.
edRangeStart = builder.start_editable_range()
# An EditableRange object is created for the EditableRangeStart that we just made.
editableRange = edRangeStart.editable_range

# Put something inside the editable range.
builder.writeln("Paragraph inside first editable range")

# An editable range is well-formed if it has a start and an end.
edRangeEnd = builder.end_editable_range()

builder.writeln("This paragraph is outside any editable ranges, and cannot be edited.");

doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedEditableRegions.docx");
{{< /highlight >}}

คุณยังสามารถเลือกข้อจำกัดการแก้ไขเอกสารที่แตกต่างกันสำหรับส่วนต่างๆ ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเพิ่มข้อจำกัดสำหรับเอกสารทั้งหมด จากนั้นจึงเอาข้อจำกัดสำหรับส่วนใดส่วนหนึ่งออก:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Section 1. Unprotected.")
builder.insert_break(aw.BreakType.SECTION_BREAK_CONTINUOUS)
builder.writeln("Section 2. Protected.")

# Section protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# By default, all sections are protected, but we can selectively turn protection off.
doc.sections[0].protected_for_forms = False
doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");

doc = aw.Document(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");
self.assertFalse(doc.sections[0].protected_for_forms)
self.assertTrue(doc.sections[1].protected_for_forms);
{{< /highlight >}}
