---
title: เปิดเอกสารอ่านได้อย่างเดียว Java
second_title: Aspose.Words สําหรับ Java
articleTitle: เปิดเอกสารอ่านได้อย่างเดียว
linktitle: เปิดเอกสารอ่านได้อย่างเดียว
description: "ทําให้เอกสารของคุณอ่านได้อย่างเดียว เพื่อให้สามารถคัดลอกหรืออ่านเนื้อหาได้ แต่ไม่ได้แก้ไขโดยใช้ Java."
type: docs
weight: 10
url: /th/java/open-a-document-read-only/
---

บาง ครั้ง คุณ อาจ มี เอกสาร ที่ จําเป็น ต้อง มี การ ทบทวน แต่ คุณ ไม่ ต้องการ ให้ นัก วิจารณ์ แก้ไข เนื้อหา ของ คุณ อย่าง สุ่ม. Aspose.Words ให้คุณได้อนุญาตให้อ่านได้อย่างเดียวกับเอกสารของคุณ เพื่อให้สามารถคัดลอกหรืออ่านเนื้อหาได้ แต่ไม่แก้ไข จะป้องกันไม่ให้มีการลบเนื้อหาหรือเพิ่มเข้าไปในเอกสารของคุณ

{{% alert color="primary" %}}

การปรับใช้ตัวเลือกอ่านได้อย่างเดียวกับเอกสารของคุณ ไม่ได้ป้องกันไม่ให้ใครบางคนสร้างสําเนาใหม่ และบันทึกมันด้วยชื่ออื่น

{{% /alert %}}

บทความนี้อธิบายวิธีทําเอกสารเท่านั้นที่อ่านได้

## สร้างเอกสารอ่านได้อย่างเดียว

Aspose.Words มีชั้นเรียนประชาชน [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) กําหนดการตั้งค่าการป้องกันการเขียนสําหรับเอกสาร คุณ ไม่ ได้ สร้าง ตัว อย่าง ของ ชั้น เรียน นี้ โดย ตรง.

การป้องกันการเขียน แสดงว่าจะให้ผู้เขียนมีการเปิดเอกสารเป็นการอ่านอย่างเดียวหรือไม่ และ/ หรือต้องการรหัสผ่านในการแก้ไขเอกสาร

Aspose.Words ให้คุณได้อ่านเอกสารอย่างเดียว เพื่อจํากัดการแก้ไขโดยใช้ [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) ทรัพย์สินและ [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) วิธี

{{% alert color="primary" %}}

ใน Microsoft Word, คุณสามารถสร้างเอกสารแบบอ่านได้อย่างเดียว โดยใช้ทั้งสองฉบับ

* "เปิดอ่านได้อย่างเดียวเสมอ* (แฟ้ม → ข้อมูล ป้องกัน เอกสาร)
* "คําค้นที่จะแก้ไข" (บันทึกเป็นเครื่องมือ) ตัวเลือกทั่วไป ○ รหัสผ่าน)

{{% /alert %}}

{{% alert color="primary" %}}

ผู้ใช้ยังสามารถจํากัดการแก้ไขเอกสารได้โดยการเลือก [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) เป็น **ReadOnly**, แต่นี้เป็นอีกคุณสมบัติหนึ่ง ที่ให้ความสามารถในการคุ้มครองขั้นสูง มันมีฟังก์ชันอยู่ Microsoft Word, ตามขั้นตอนแล้ว มันถูกนําไปใช้ใน Aspose.Words.

**ProtectionType** จะ มี การ พรรณนา อย่าง ละเอียด ใน บทความ ต่อ ไป นี้ เรื่อง "การ แก้ไข เอกสาร ห้าม.

{{% /alert %}}

เดอะ **ReadOnlyRecommended** คุณสมบัติมีความปลอดภัยในรหัสผ่าน ถ้าคุณไม่ตั้งรหัสผ่านก่อนจะปรับใช้ **ReadOnlyRecommended** คุณสมบัตินี้ ผู้ใช้อื่น ๆ จะสามารถเปิดเอกสารได้ ราวกับว่าไม่มีการป้องกัน คุณเข้าถึงการตั้งค่าการป้องกันของเอกสาร และตั้งค่ารหัสผ่านการป้องกันการเขียนผ่านทาง **SetPassword** วิธี

{{% alert color="primary" %}}

โปรดสังเกตว่ารหัสผ่านที่ถูกตั้งค่าไว้ เป็นแค่คุณสมบัติในเอกสารที่สามารถลบได้ หากสามารถเข้าใช้งานคุณสมบัติของเอกสารได้ ดัง นั้น รหัสผ่าน ดัง กล่าว จึง ไม่ ใช่ การ รับ ประกัน ว่า เอกสาร จะ ปลอด ภัย.

{{% /alert %}}

หากคุณต้องการที่จะตรวจสอบว่าเอกสารมีรหัสผ่านการป้องกันการเขียนที่จํากัดไว้ในการแก้ไขหรือไม่ คุณสามารถใช้ [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) ทรัพย์สิน

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีทําเอกสารที่อ่านได้อย่างเดียว:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## ลบข้อจํากัดการอ่านอย่างเดียว

หากคุณไม่ต้องการให้ผู้ใช้เปิดเอกสารของคุณแบบอ่านอย่างเดียว คุณสามารถตั้งค่า **ReadOnlyRecommened** คุณสมบัติไปยัง *false* หรือเลือก **ProtectionType** เป็น **NoProtection**.

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีเอาสิทธิ์ในการอ่านเฉพาะเอกสารออก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
