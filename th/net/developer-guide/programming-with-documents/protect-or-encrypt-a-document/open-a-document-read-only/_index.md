---
title: เปิดเอกสารแบบอ่านอย่างเดียวใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: เปิดเอกสารแบบอ่านอย่างเดียว
linktitle: เปิดเอกสารแบบอ่านอย่างเดียว
description: "ทำให้เอกสารของคุณเป็นแบบอ่านอย่างเดียวเพื่อให้สามารถคัดลอกหรืออ่านเนื้อหาได้ แต่ไม่สามารถแก้ไขได้โดยใช้ C#"
type: docs
weight: 10
url: /th/net/open-a-document-read-only/
---

บางครั้ง คุณอาจมีเอกสารที่จำเป็นต้องตรวจสอบ แต่คุณไม่ต้องการให้ผู้ตรวจสอบสุ่มแก้ไขเนื้อหาของคุณ Aspose.Words อนุญาตให้คุณให้สิทธิ์ในเอกสารของคุณแบบอ่านอย่างเดียว เพื่อให้สามารถคัดลอกหรืออ่านเนื้อหาได้ แต่ไม่สามารถแก้ไขได้ วิธีนี้จะป้องกันไม่ให้เนื้อหาถูกลบหรือเพิ่มลงในเอกสารของคุณ

{{% alert color="primary" %}}

การใช้ตัวเลือกอ่านอย่างเดียวกับเอกสารของคุณไม่ได้ป้องกันผู้อื่นจากการสร้างสำเนาใหม่และบันทึกด้วยชื่ออื่น

{{% /alert %}}

บทความนี้จะอธิบายวิธีการทำให้เอกสารเป็นแบบอ่านอย่างเดียว

## ทำให้เอกสารเป็นแบบอ่านอย่างเดียว

Aspose.Words มี [WriteProtection](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/) คลาสสาธารณะที่ระบุการตั้งค่าการป้องกันการเขียนสำหรับเอกสาร คุณไม่ได้สร้างอินสแตนซ์ของคลาสนี้โดยตรง

การป้องกันการเขียนจะแสดงให้เห็นว่าผู้เขียนแนะนำให้เปิดเอกสารเป็นแบบอ่านอย่างเดียวและ/หรือต้องใช้รหัสผ่านเพื่อแก้ไขเอกสารหรือไม่

Aspose.Words อนุญาตให้คุณสร้างเอกสารแบบอ่านอย่างเดียวเพื่อจำกัดการแก้ไขโดยใช้คุณสมบัติ [ReadOnlyRecommended](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/readonlyrecommended/) และวิธีการ [SetPassword](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/setpassword/)

{{% alert color="primary" %}}

ใน Microsoft Word คุณสามารถสร้างเอกสารแบบอ่านอย่างเดียวได้ในลักษณะเดียวกันโดยใช้ทั้งสองอย่าง:

* "เปิดอ่านอย่างเดียวเสมอ" (ไฟล์ → ข้อมูล → ป้องกันเอกสาร)
* "รหัสผ่านที่จะแก้ไข" (บันทึกเป็น → เครื่องมือ → ตัวเลือกทั่วไป → รหัสผ่าน)

{{% /alert %}}

{{% alert color="primary" %}}

ผู้ใช้ยังสามารถจำกัดการแก้ไขเอกสารโดยเลือก [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) เป็น **ReadOnly** แต่นี่เป็นอีกคุณสมบัติหนึ่งที่ให้ความสามารถในการป้องกันขั้นสูงยิ่งขึ้น มีฟังก์ชันดังกล่าวใน Microsoft Word ตามลำดับและมีการใช้งานใน Aspose.Words

**ProtectionType** จะมีการอธิบายโดยละเอียดในบทความใดบทความหนึ่งต่อไปนี้ – "จำกัดการแก้ไขเอกสาร"

{{% /alert %}}

คุณสมบัติ **ReadOnlyRecommended** มีการรักษาความปลอดภัยด้วยรหัสผ่าน ดังนั้นหากคุณไม่ได้ตั้งรหัสผ่านก่อนที่จะใช้คุณสมบัติ **ReadOnlyRecommended** ผู้ใช้รายอื่นก็สามารถเปิดเอกสารได้เหมือนกับว่าไม่มีการป้องกัน คุณเข้าถึงการตั้งค่าการป้องกันเอกสารและตั้งรหัสผ่านการป้องกันการเขียนผ่านวิธี **SetPassword**

{{% alert color="primary" %}}

โปรดทราบว่ารหัสผ่านที่ตั้งไว้เป็นเพียงคุณสมบัติในเอกสารที่สามารถลบออกได้หากมีการเข้าถึงคุณสมบัติของเอกสาร ดังนั้นรหัสผ่านดังกล่าวจึงไม่รับประกันความปลอดภัยของเอกสาร

{{% /alert %}}

หากคุณต้องการตรวจสอบว่าเอกสารมีรหัสผ่านป้องกันการเขียนที่จำกัดการแก้ไขหรือไม่ คุณสามารถใช้คุณสมบัติ [IsWriteProtected](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/iswriteprotected/) ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำให้เอกสารเป็นแบบอ่านอย่างเดียว:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## ลบข้อจำกัดการอ่านอย่างเดียว

หากคุณไม่ต้องการให้ผู้ใช้เปิดเอกสารของคุณเป็นแบบอ่านอย่างเดียว คุณสามารถตั้งค่าคุณสมบัติ **ReadOnlyRecommened** เป็น *false* หรือเลือก **ProtectionType** เป็น **NoProtection** ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบการเข้าถึงแบบอ่านอย่างเดียวสำหรับเอกสาร:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
