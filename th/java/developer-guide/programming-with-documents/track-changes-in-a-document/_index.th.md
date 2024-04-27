---
title: เปลี่ยนแทร็กในเอกสาร Java
second_title: Aspose.Words สําหรับ Java
articleTitle: การเปลี่ยนแปลงของแทร็กในเอกสาร
linktitle: การเปลี่ยนแปลงของแทร็กในเอกสาร
description: "แทร็กเสียงมีการเปลี่ยนแปลงเนื้อหาและรูปแบบที่คุณหรือคนอื่นทํา เข้าถึงการปรับปรุงโปรแกรมแต่ละตัวในเอกสาร และปรับใช้คุณสมบัติต่าง ๆ กับเอกสารเหล่านั้น Java."
type: docs
weight: 270
url: /th/java/track-changes-in-a-document/
---

คุณสมบัติของการเปลี่ยนแปลงแทร็กเสียง หรือที่รู้จักในชื่อ การเรียกดู อนุญาตให้คุณติดตามการเปลี่ยนแปลงของเนื้อหาและรูปแบบต่าง ๆ ที่ทําโดยคุณหรือผู้ใช้อื่น ๆ คุณสมบัติการเปลี่ยนแปลงของแทร็กเสียงนี้ Aspose.Words รองรับการเปลี่ยนแปลงของแทร็ก Microsoft Word. ด้วยความสามารถนี้ คุณจะสามารถเข้าถึงการแก้ไขเพิ่มเติมได้ด้วยตนเอง ในเอกสารของคุณ และใช้คุณสมบัติที่แตกต่างกันไปกับมัน

เมื่อคุณเปิดใช้งานคุณสมบัติการเปลี่ยนแปลงของแทร็กเสียงได้ ทั้งหมดจะถูกแทรก, ลบ, และแก้ไของค์ประกอบต่าง ๆ ของเอกสารจะถูกเน้นด้วยภาพด้วยข้อมูลเกี่ยวกับผู้ส่ง, เมื่อไหร่, และอะไรถูกเปลี่ยนแปลง วัตถุ ที่ มี ข้อมูล เกี่ยว กับ สิ่ง ที่ เปลี่ยน ไป ถูก เรียก ว่า "การ ติด ตาม การ เปลี่ยน แปลง. " ตัว อย่าง เช่น สมมุติ ว่า คุณ ต้องการ ตรวจ สอบ เอกสาร และ ทํา การ เปลี่ยน แปลง ที่ สําคัญ ๆ นั่น อาจ หมาย ความ ว่า คุณ จําเป็น ต้อง แก้ไข แก้ไข. นอก จาก นั้น คุณ อาจ ต้อง ใส่ ความ คิด เห็น เพื่อ พิจารณา การ เปลี่ยน แปลง บาง อย่าง. นั่นคือที่ที่การเปลี่ยนการติดตาม เอกสารเข้ามา

บทความ นี้ อธิบาย วิธี จัด การ และ ติดตาม การ เปลี่ยน แปลง ที่ เกิด ขึ้น โดย นัก วิจารณ์ หลาย คน ใน เอกสาร เดียว กัน รวม ทั้ง คุณสมบัติ ใน การ ติด ตาม การ เปลี่ยน แปลง.

{{% alert color="primary" %}}

หมายเหตุที่คุณสมบัติหมายเหตุใน Aspose.Words, รวมทั้ง Microsoft Word, สามารถเชื่อมต่อกับการเปลี่ยนแปลงของการติดตาม อย่าง ไร ก็ ตาม จํา ไว้ ว่า ความ เห็น ไม่ ขึ้น กับ การ ติด ตาม ที่ เปลี่ยน แปลง อย่าง สิ้น เชิง.

{{% /alert %}}

## อะไร คือ การ ทบทวน

ก่อน จะ ตรวจ สอบ ฉบับ ปรับ ปรุง ให้ ดี ขึ้น ให้ เรา มา อธิบาย ความ หมาย ของ ฉบับ ปรับ ปรุง. A [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) เป็นการเปลี่ยนแปลงที่เกิดขึ้นในหนึ่งโหนดของเอกสารในขณะที่กลุ่มแก้ไขที่แสดงโดย [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) คลาสคือกลุ่มของการแก้ไขเพิ่มเติมที่เกิดขึ้นในหลายโหนดของเอกสาร Review เป็นเครื่องมือสําหรับการติดตามการเปลี่ยนแปลง

มี การ ใช้ การ ปรับ ปรุง ใน ลักษณะ การ ติด ตาม และ ภาย ใน เอกสาร ที่ เทียบ กัน ซึ่ง การ ปรับ ปรุง ดู เหมือน เป็น ผล มา จาก การ เปรียบ เทียบ. ดัง นั้น การ ปรับ ปรุง แก้ไข ภาย ใน ลักษณะ การ ติด ตาม ที่ เปลี่ยน แปลง แสดง ให้ เห็น ว่า ใคร และ อะไร ถูก เปลี่ยน.

{{% alert color="primary" %}}

สังเกตว่า Microsoft Word ไม่อนุญาตให้คุณมองการแก้ไขแบบปัจเจก, มันจะอนุญาตให้คุณมองการแก้ไขแบบ squantial as a an example. แต่ Aspose.Words แก้ลิมิตนี้กับ **RevisionGroup** ชั้นเรียน.

{{% /alert %}}

Aspose.Words รองรับการแก้ไขประเภทต่าง ๆ รวมถึงใน Microsoft Word, เช่น การแทรก, การลบ, รูปแบบ เปลี่ยน, การลบรูปแบบ เปลี่ยน ย้าย ชนิดของการแก้ไขทั้งหมดแสดงด้วย [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) การเผาศพ

{{% alert color="primary" %}}

หมายเหตุว่าการปรับปรุงเพิ่มเติมมีผลคล้ายกับ Microsoft Word แต่ Aspose.Words ไม่สามารถตรวจสอบการฟอร์แมตระหว่างการเปลี่ยนการติดตาม

{{% /alert %}}

## เริ่มและหยุดการติดตามการเปลี่ยนแปลง

การแก้ไขเอกสารปกติจะไม่นับเป็นการแก้ไข จนกว่าคุณจะเริ่มตามรอยมัน Aspose.Words ให้คุณได้ติดตามการเปลี่ยนแปลงทั้งหมด ในเอกสารของคุณโดยอัตโนมัติ คุณสามารถเริ่มกระบวนการติดตามการเปลี่ยนแปลงได้โดยง่ายโดยใช้ [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) วิธี หากคุณต้องการที่จะหยุดการประมวลผลของการเปลี่ยนแปลงการติดตาม เพื่อให้ในอนาคตใด ๆ ที่ไม่ได้พิจารณาปรับปรุง คุณจําเป็นต้องใช้ [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) วิธี

{{% alert color="primary" %}}

สังเกตว่า `StartTrackingRevisions` วิธีการไม่ได้เปลี่ยนสถานะของ [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) ทรัพย์สินและไม่ได้ใช้ค่าของมัน เพื่อใช้ในการติดตามย้อนหลัง นอกจากนี้ หากมีการย้ายโหนดจากตําแหน่งหนึ่งไปยังอีกตําแหน่งหนึ่งภายในเอกสารที่ติดตามมา แล้วย้ายรุ่นเพิ่มเติมจะถูกสร้าง รวมถึงย้ายจากและย้ายไปยังเรนจ์ด้วย

{{% /alert %}}

เมื่อจบการติดตามการเปลี่ยนแปลงของโพรเซสในเอกสารของคุณ คุณจะสามารถยอมรับการแก้ไขทั้งหมด หรือปฏิเสธการส่งเอกสารกลับไปในรูปแบบเดิมได้ นี้สามารถประสบความสําเร็จโดยทั้งการใช้ [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) หรือ [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) วิธี นอกจากนี้คุณยังสามารถยอมรับหรือปฏิเสธ การแก้ไขแต่ละแยกโดยการใช้ [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) หรือ [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) วิธี

ทุกการเปลี่ยนแปลงจะถูกติดตาม เพื่อทําการประมวลผลเพียงครั้งเดียว จากช่วงเวลาที่คุณเริ่มกระบวนการนี้ ไปยังวินาทีที่คุณหยุดมัน การเชื่อมต่อระหว่างการทําซ้ําต่าง ๆ แสดงเป็นสถานการณ์ดังต่อไปนี้ คุณเสร็จสิ้นกระบวนการติดตาม แล้วทําการเปลี่ยนแปลงบางอย่าง ด้วยสถานการณ์เช่นนี้ การเปลี่ยนแปลงต่าง ๆ ที่คุณไม่ยอมรับหรือปฏิเสธจะถูกแสดงอีกครั้ง

{{% alert color="primary" %}}

สังเกตว่า `AcceptAllRevisions` วิธีการนี้คล้ายกับการ "บันทึกการเปลี่ยนแปลงทั้งหมด" ใน Microsoft Word.

{{% /alert %}}

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ ทํา งาน กับ การ เปลี่ยน แปลง ของ ร่อง รอย:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีทําการแก้ไขเมื่อโหนดถูกย้ายภายในเอกสารที่ติดตาม:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## จัดการและจัดเก็บการเปลี่ยนแปลงเป็นการปรับปรุงใหม่

ด้วยคุณสมบัติการตามรอยก่อนหน้านี้ คุณจะเข้าใจได้ว่าการเปลี่ยนแปลงใด ที่เกิดขึ้นในเอกสารของคุณ และใครทําการเปลี่ยนแปลงเหล่านั้น ในขณะที่ [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) คุณสมบัติ, คุณบังคับให้การเปลี่ยนแปลงใด ๆ ภายในเอกสารของคุณ ถูกจัดเก็บเป็นฉบับแก้ไข

Aspose.Words ให้คุณได้ตรวจสอบว่าเอกสารมีการแก้ไขหรือไม่ใช้ [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) ทรัพย์สิน หากคุณไม่จําเป็นต้องทําการติดตามการเปลี่ยนแปลงในเอกสารของคุณโดยอัตโนมัติ ผ่านเมนูเริ่มแท็บ และหยุดการเปลี่ยนภาพ คุณสามารถใช้ `TrackRevisions` คุณสมบัติที่จะตรวจสอบว่ามีการเปลี่ยนแปลงถูกติดตามขณะแก้ไขเอกสารหรือไม่ Microsoft Word และเก็บไว้เป็นฉบับแก้ไข

เดอะ `TrackRevisions` คุณสมบัติทําให้การปรับปรุงใหม่แทนความเป็นจริง DOM เปลี่ยน แต่ การ ปรับ ปรุง ใหม่ นั้น แยก ต่าง หาก. ยกตัวอย่างเช่น ถ้าคุณลบวรรคใด ๆ Aspose.Words ทําให้เป็นการแก้ไข ทําเครื่องหมายว่าเป็นการลบทิ้ง แทนที่จะลบทิ้ง

นอกจากนั้น Aspose.Words ให้คุณได้ตรวจสอบว่ามีวัตถุถูกแทรก, ลบ, หรือเปลี่ยนรูปแบบโดยใช้ [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), ถึง [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) คุณสมบัติ

{{% alert color="primary" %}}

หมายเหตุว่ามีการเชื่อมต่อระหว่างการปรับปรุงตัวเองกับ `TrackRevisions` ทรัพย์สิน นอก จาก นี้ คุณ สามารถ ยอม รับ หรือ แก้ไข แก้ไข ได้ ไม่ ว่า จะ มี การ เปลี่ยน แปลง อะไร ก็ ตาม.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้ แสดงวิธีใช้คุณสมบัติต่าง ๆ กับการแก้ไข:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
