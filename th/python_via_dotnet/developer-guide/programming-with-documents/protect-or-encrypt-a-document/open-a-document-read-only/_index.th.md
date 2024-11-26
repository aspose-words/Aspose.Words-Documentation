---
title: เปิดเอกสารแบบอ่านอย่างเดียวใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: เปิดเอกสารแบบอ่านอย่างเดียว
linktitle: เปิดเอกสารแบบอ่านอย่างเดียว
description: "ทำให้เอกสารของคุณเป็นแบบอ่านอย่างเดียวเพื่อให้สามารถคัดลอกหรืออ่านเนื้อหาได้ แต่ไม่สามารถแก้ไขได้โดยใช้ Python"
type: docs
weight: 10
url: /th/python-net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

บางครั้ง คุณอาจมีเอกสารที่จำเป็นต้องตรวจสอบ แต่คุณไม่ต้องการให้ผู้ตรวจสอบสุ่มแก้ไขเนื้อหาของคุณ Aspose.Words อนุญาตให้คุณให้สิทธิ์ในเอกสารของคุณแบบอ่านอย่างเดียว เพื่อให้สามารถคัดลอกหรืออ่านเนื้อหาได้ แต่ไม่สามารถแก้ไขได้ วิธีนี้จะป้องกันไม่ให้เนื้อหาถูกลบหรือเพิ่มลงในเอกสารของคุณ

{{% alert color="primary" %}}

การใช้ตัวเลือกอ่านอย่างเดียวกับเอกสารของคุณไม่ได้ป้องกันผู้อื่นจากการสร้างสำเนาใหม่และบันทึกด้วยชื่ออื่น

{{% /alert %}}

บทความนี้จะอธิบายวิธีการทำให้เอกสารเป็นแบบอ่านอย่างเดียว

## ทำให้เอกสารเป็นแบบอ่านอย่างเดียว

Aspose.Words มี [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) คลาสสาธารณะที่ระบุการตั้งค่าการป้องกันการเขียนสำหรับเอกสาร คุณไม่ได้สร้างอินสแตนซ์ของคลาสนี้โดยตรง

การป้องกันการเขียนจะแสดงให้เห็นว่าผู้เขียนแนะนำให้เปิดเอกสารเป็นแบบอ่านอย่างเดียวและ/หรือต้องใช้รหัสผ่านเพื่อแก้ไขเอกสารหรือไม่

Aspose.Words อนุญาตให้คุณสร้างเอกสารแบบอ่านอย่างเดียวเพื่อจำกัดการแก้ไขโดยใช้คุณสมบัติ [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) และวิธีการ [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/)

{{% alert color="primary" %}}

ใน Microsoft Word คุณสามารถสร้างเอกสารแบบอ่านอย่างเดียวได้ในลักษณะเดียวกันโดยใช้ทั้งสองอย่าง:

* "เปิดอ่านอย่างเดียวเสมอ" (ไฟล์ → ข้อมูล → ป้องกันเอกสาร)
* "รหัสผ่านที่จะแก้ไข" (บันทึกเป็น → เครื่องมือ → ตัวเลือกทั่วไป → รหัสผ่าน)

{{% /alert %}}

{{% alert color="primary" %}}

ผู้ใช้ยังสามารถจำกัดการแก้ไขเอกสารโดยเลือก [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) เป็น [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only) แต่นี่เป็นอีกคุณสมบัติหนึ่งที่ให้ความสามารถในการป้องกันขั้นสูงยิ่งขึ้น มีฟังก์ชันดังกล่าวใน Microsoft Word ตามลำดับและมีการใช้งานใน Aspose.Words

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) จะมีการอธิบายโดยละเอียดในบทความใดบทความหนึ่งต่อไปนี้ – "จำกัดการแก้ไขเอกสาร"

{{% /alert %}}

คุณสมบัติ [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) มีการรักษาความปลอดภัยด้วยรหัสผ่าน ดังนั้นหากคุณไม่ได้ตั้งรหัสผ่านก่อนที่จะใช้คุณสมบัติ [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) ผู้ใช้รายอื่นก็สามารถเปิดเอกสารได้เหมือนกับว่าไม่มีการป้องกัน คุณเข้าถึงการตั้งค่าการป้องกันเอกสารและตั้งรหัสผ่านการป้องกันการเขียนผ่านวิธี [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/)

{{% alert color="primary" %}}

โปรดทราบว่ารหัสผ่านที่ตั้งไว้เป็นเพียงคุณสมบัติในเอกสารที่สามารถลบออกได้หากมีการเข้าถึงคุณสมบัติของเอกสาร ดังนั้นรหัสผ่านดังกล่าวจึงไม่รับประกันความปลอดภัยของเอกสาร

{{% /alert %}}

หากคุณต้องการตรวจสอบว่าเอกสารมีรหัสผ่านป้องกันการเขียนที่จำกัดการแก้ไขหรือไม่ คุณสามารถใช้คุณสมบัติ [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/) ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำให้เอกสารเป็นแบบอ่านอย่างเดียว:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## ลบข้อจำกัดการอ่านอย่างเดียว

หากคุณไม่ต้องการให้ผู้ใช้เปิดเอกสารของคุณเป็นแบบอ่านอย่างเดียว คุณสามารถตั้งค่าคุณสมบัติ [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) เป็น `False` หรือเลือก [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) เป็น [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection) ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบการเข้าถึงแบบอ่านอย่างเดียวสำหรับเอกสาร:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}
