---
title: แทรกและผนวกเอกสารใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: แทรกและผนวกเอกสาร
linktitle: แทรกและผนวกเอกสาร
description: "รวมเอกสารเป็นหนึ่งเดียว: แทรกหรือต่อท้ายเอกสารในเอกสารใหม่หรือที่มีอยู่โดยใช้การค้นหาและแทนที่ ผสานฟิลด์ บุ๊กมาร์ก หรือเพียงแค่ที่ส่วนท้ายของเอกสารใน C#"
type: docs
weight: 80
url: /th/net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

บางครั้งจำเป็นต้องรวมเอกสารหลายฉบับเป็นเอกสารเดียว คุณสามารถดำเนินการนี้ได้ด้วยตนเองหรือใช้คุณลักษณะการแทรกหรือต่อท้าย Aspose.Words

การแทรกช่วยให้คุณสามารถแทรกเนื้อหาของเอกสารที่สร้างไว้ก่อนหน้านี้ลงในเอกสารใหม่หรือที่มีอยู่ได้

ในทางกลับกัน คุณลักษณะการผนวกช่วยให้คุณสามารถเพิ่มเอกสารได้เฉพาะที่ส่วนท้ายของเอกสารอื่นเท่านั้น

บทความนี้จะอธิบายวิธีการแทรกหรือผนวกเอกสารเข้ากับเอกสารอื่นด้วยวิธีต่างๆ และอธิบายคุณสมบัติทั่วไปที่คุณสามารถใช้ได้ในขณะที่แทรกหรือผนวกเอกสาร

## แทรกเอกสาร {#insert-a-document}

ตามที่กล่าวไว้ข้างต้น ใน Aspose.Words เอกสารจะแสดงเป็นแผนผังของโหนด และการดำเนินการแทรกเอกสารหนึ่งไปยังอีกเอกสารหนึ่งคือการคัดลอกโหนดจากแผนผังเอกสารแรกไปยังเอกสารที่สอง

คุณสามารถแทรกเอกสารในตำแหน่งต่างๆ ได้หลายวิธี ตัวอย่างเช่น คุณสามารถแทรกเอกสารผ่านการดำเนินการแทนที่ ฟิลด์ผสานระหว่างการดำเนินการผสาน หรือผ่านทางบุ๊กมาร์ก

คุณยังสามารถใช้วิธี [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) หรือ [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) ซึ่งคล้ายกับการแทรกเอกสารใน Microsoft Word เพื่อแทรกเอกสารทั้งหมดที่ตำแหน่งเคอร์เซอร์ปัจจุบันโดยไม่ต้องนำเข้าก่อนหน้านี้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกเอกสารโดยใช้วิธี **InsertDocument**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกเอกสารโดยใช้วิธี **InsertDocumentInline**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

ส่วนย่อยต่อไปนี้จะอธิบายตัวเลือกต่างๆ ที่คุณสามารถแทรกเอกสารหนึ่งลงในอีกเอกสารหนึ่งได้

### แทรกเอกสารระหว่างการค้นหาและแทนที่การดำเนินการ {#insert-a-document-during-find-and-replace-operation}

คุณสามารถแทรกเอกสารขณะดำเนินการค้นหาและแทนที่ได้ ตัวอย่างเช่น เอกสารสามารถมีย่อหน้าที่มีข้อความ [บทนำ] และ [บทสรุป] แต่ในเอกสารฉบับสุดท้าย คุณจะต้องแทนที่ย่อหน้าเหล่านั้นด้วยเนื้อหาที่ได้รับจากเอกสารภายนอกอื่น เพื่อให้บรรลุเป้าหมายดังกล่าว คุณจะต้องสร้างตัวจัดการสำหรับเหตุการณ์แทนที่

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างตัวจัดการสำหรับเหตุการณ์การแทนที่เพื่อใช้ในภายหลังในกระบวนการแทรก:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกเนื้อหาของเอกสารหนึ่งไปยังอีกเอกสารหนึ่งในระหว่างการค้นหาและแทนที่:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### แทรกเอกสารระหว่างการดำเนินการ Mail Merge {#insert-a-document-during-mail-merge-operation}

คุณสามารถแทรกเอกสารลงในช่องผสานระหว่างการดำเนินการ mail merge ได้ ตัวอย่างเช่น เทมเพลต mail merge สามารถมีช่องผสาน เช่น [สรุป] แต่ในเอกสารขั้นสุดท้าย คุณต้องแทรกเนื้อหาที่ได้รับจากเอกสารภายนอกอื่นลงในช่องผสานนี้ เพื่อให้บรรลุเป้าหมายดังกล่าว คุณจะต้องสร้างตัวจัดการสำหรับเหตุการณ์การรวม

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างตัวจัดการสำหรับเหตุการณ์การรวมเพื่อใช้ในภายหลังในกระบวนการแทรก:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกเอกสารลงในฟิลด์ผสานโดยใช้ตัวจัดการที่สร้างขึ้น:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### แทรกเอกสารที่บุ๊กมาร์ก {#insert-a-document-at-bookmark}

คุณสามารถนำเข้าไฟล์ข้อความลงในเอกสารและแทรกไว้หลังบุ๊กมาร์กที่คุณกำหนดไว้ในเอกสารได้ เมื่อต้องการทำเช่นนี้ ให้สร้างย่อหน้าบุ๊กมาร์กที่คุณต้องการแทรกเอกสาร

ตัวอย่างการเข้ารหัสต่อไปนี้แสดงวิธีการแทรกเนื้อหาของเอกสารหนึ่งไปยังบุ๊กมาร์กในเอกสารอื่น:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

โปรดทราบว่าบุ๊กมาร์กไม่ควรล้อมรอบหลายย่อหน้าหรือข้อความที่คุณต้องการให้ปรากฏในเอกสารผลลัพธ์สุดท้ายของคุณ

{{% /alert %}}

## ผนวกเอกสาร {#append-a-document}

คุณอาจมีกรณีการใช้งานที่คุณต้องรวมหน้าเพิ่มเติมจากเอกสารต่อท้ายเอกสารที่มีอยู่ ในการดำเนินการนี้คุณเพียงแค่ต้องเรียกใช้เมธอด [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) เพื่อเพิ่มเอกสารต่อท้ายเอกสารอื่น

{{% alert color="primary" %}}

โปรดทราบว่า [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) เป็นวิธีการระดับโหนดภายในเอกสาร ตัวอย่างเช่น คุณสามารถสร้างย่อหน้า ตั้งค่าคุณสมบัติการจัดรูปแบบ แล้วผนวกเป็นย่อหน้าเข้ากับเนื้อหาโดยใช้วิธี **AppendChild**

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการผนวกเอกสารต่อท้ายเอกสารอื่น:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## นำเข้าและแทรกโหนดด้วยตนเอง {#import-and-insert-nodes-manually}

Aspose.Words ช่วยให้คุณสามารถแทรกและต่อท้ายเอกสารโดยอัตโนมัติ โดยไม่ต้องมีข้อกำหนดการนำเข้าใดๆ ก่อนหน้านี้ อย่างไรก็ตาม หากคุณต้องการแทรกหรือต่อท้ายโหนดเฉพาะของเอกสารของคุณ เช่น ส่วนหรือย่อหน้า คุณต้องนำเข้าโหนดนี้ด้วยตนเองก่อน

เมื่อคุณต้องการแทรกหรือต่อท้ายส่วนหรือย่อหน้าหนึ่งเข้ากับอีกส่วนหนึ่ง คุณจะต้องนำเข้าโหนดของโครงสร้างโหนดเอกสารแรกไปยังส่วนที่สองโดยใช้วิธี [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) หลังจากนำเข้าโหนดของคุณแล้ว คุณต้องใช้วิธี [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/) / [InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/) เพื่อแทรกโหนดใหม่หลัง/ก่อนโหนดอ้างอิง สิ่งนี้ช่วยให้คุณปรับแต่งกระบวนการแทรกได้โดยการนำเข้าโหนดจากเอกสารและแทรกในตำแหน่งที่กำหนด

คุณยังสามารถใช้วิธี [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) เพื่อเพิ่มโหนดที่ระบุใหม่ไปที่ส่วนท้ายของรายการโหนดย่อยได้ เช่น หากคุณต้องการต่อท้ายเนื้อหาในระดับย่อหน้า แทนที่จะเป็นระดับส่วน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการนำเข้าโหนดด้วยตนเองและแทรกไว้หลังโหนดเฉพาะโดยใช้วิธี **InsertAfter**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

การนำเข้าจะสร้างโหนดใหม่ที่เป็นสำเนาของโหนดเดิมและเหมาะสำหรับการแทรกลงในเอกสารปลายทาง

{{% /alert %}}

เนื้อหาจะถูกนำเข้าไปยังส่วนเอกสารปลายทางทีละส่วน ซึ่งหมายความว่าการตั้งค่า เช่น การตั้งค่าหน้าและส่วนหัวหรือส่วนท้าย จะถูกรักษาไว้ในระหว่างการนำเข้า นอกจากนี้ โปรดทราบว่าคุณสามารถกำหนดการตั้งค่าการจัดรูปแบบได้เมื่อคุณแทรกหรือต่อท้ายเอกสารเพื่อระบุวิธีการรวมเอกสารทั้งสองเข้าด้วยกัน

## คุณสมบัติทั่วไปสำหรับการแทรกและผนวกเอกสาร {#common-properties-for-insert-and-append-documents}

ทั้งวิธี [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) และ [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) ยอมรับ [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) และ [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) เป็นพารามิเตอร์อินพุต **ImportFormatMode** ช่วยให้คุณควบคุมวิธีการผสานการจัดรูปแบบเอกสารเมื่อคุณนำเข้าเนื้อหาจากเอกสารหนึ่งไปยังอีกเอกสารหนึ่งโดยการเลือกโหมดรูปแบบที่แตกต่างกัน เช่น [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/) และ [KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/) **ImportFormatOptions** ให้คุณเลือกตัวเลือกการนำเข้าต่างๆ เช่น [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/) และ [SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/)

Aspose.Words ช่วยให้คุณปรับการแสดงภาพของเอกสารผลลัพธ์เมื่อมีการเพิ่มเอกสารสองฉบับเข้าด้วยกันในการแทรกหรือผนวกโดยใช้คุณสมบัติ [Section](https://reference.aspose.com/words/net/aspose.words/section/) และ [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/) คุณสมบัติ **PageSetup** มีแอตทริบิวต์ทั้งหมดของส่วน เช่น [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/) และอื่นๆ กรณีการใช้งานที่พบบ่อยที่สุดคือการตั้งค่าคุณสมบัติ **SectionStart** เพื่อกำหนดว่าเนื้อหาที่เพิ่มจะปรากฏในหน้าเดียวกันหรือแยกเป็นเนื้อหาใหม่

{{% alert color="primary" %}}

โปรดทราบว่าคุณสมบัติ **Section** และ **PageSetup** ไม่ได้ควบคุมวิธีการแทรก/ผนวกเอกสารสองฉบับเข้าด้วยกัน อนุญาตให้คุณเปลี่ยนรูปลักษณ์ของเอกสารผลลัพธ์เท่านั้น

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการผนวกเอกสารหนึ่งไปยังอีกเอกสารหนึ่งโดยป้องกันไม่ให้เนื้อหาแยกเป็นสองหน้า:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
