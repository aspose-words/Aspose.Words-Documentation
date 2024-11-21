---
title: ทํางานกับส่วนหัวและฟุตเกอร์ใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับส่วนหัวและท้ายกระดาษ
linktitle: ทํางานกับส่วนหัวและท้ายกระดาษ
description: "วิธีจัดการส่วนหัวและท้ายเรือโดยใช้ Java."
type: docs
weight: 150
url: /th/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words อนุญาตให้ผู้ใช้ทํางานกับส่วนหัวและท้ายกระดาษได้ หัวจดหมายคือข้อความ ที่วางอยู่ด้านบนสุดของหน้า และท้ายกระดาษเป็นข้อความด้านล่างของหน้า ตาม ปกติ พื้น ที่ เหล่า นี้ จะ ถูก ใช้ เพื่อ สอด ข้อมูล ที่ ควร จะ เขียน ซ้ํา ใน เอกสาร ทุก หน้า หรือ บาง หน้า เช่น หมาย เลข หน้า, วัน ที่ มี การ สร้าง, ข้อมูล บริษัท, และ อื่น ๆ.

## สร้างส่วนหัวหรือท้ายกระดาษโดยใช้ตัวสร้างเอกสาร

หากคุณต้องการเพิ่มหัวเอกสาร หรือโปรแกรมท้ายกระดาษ วิธีที่ง่ายที่สุดคือใช้ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ชั้นเรียนที่จะทํามัน

ตัวอย่างรหัสต่อไปนี้ แสดงวิธีเพิ่มหัวกระดาษและท้ายกระดาษสําหรับเอกสาร:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## ตัวเลือกของส่วนหัวหรือท้ายกระดาษ

เมื่อคุณเติมหัวกระดาษหรือท้ายกระดาษ คุณสามารถตั้งค่าคุณสมบัติบางอย่างได้ Aspose.Words ให้ผู้ใช้ [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) ถึง [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) ชั้นเรียน รวมถึง [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) การผสมที่ช่วยให้คุณควบคุมมากกว่าหัวและเท้าที่กําหนดเองกระบวนการ

### ระบุหัวจดหมายหรือท้ายกระดาษ

คุณสามารถระบุประเภทหัวกระดาษที่แตกต่างกัน 3 แบบ และท้ายกระดาษ 3 แบบที่แตกต่างกันได้:

1 หัวเรื่องและท้ายกระดาษสําหรับหน้าแรก
2 หัวเรื่องและท้ายกระดาษ
3 หัวกระดาษและ/ หรือท้ายกระดาษสําหรับหน้าคี่

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีเพิ่มหัวกระดาษสําหรับเอกสารคี่:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### กําหนดว่าจะให้แสดงส่วนหัวหรือท้ายกระดาษที่แตกต่างกันสําหรับหน้าแรกหรือไม่

ดัง ที่ กล่าว ข้าง ต้น คุณ อาจ ตั้ง หัว หรือ ท้าย เรือ อีก หน้า หนึ่ง ได้ ด้วย. เพื่อทําสิ่งนี้ คุณต้องตั้ง [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) แฟล็ก `true` แล้วยิ่งทําให้ **HeaderFirst** หรือ **FooterFirst** มูลค่า

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีตั้งค่าหัวจดหมายสําหรับหน้าแรกเท่านั้น:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### กําหนดการแสดงหัวจดหมายหรือท้ายกระดาษแตกต่างกัน

 ถัดไป คุณต้องการจะตั้งค่าหัวจดหมายหรือท้ายกระดาษที่แตกต่างกัน สําหรับคี่และแม้กระทั่งหน้าในเอกสาร เพื่อทําสิ่งนี้ คุณต้องตั้ง [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) แฟล็ก `true` และเปลี่ยนค่า **HeaderPrimary** ถึง **HeaderEven**, หรือ **FooterPrimary** ถึง **FooterEven**.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### แทรกตําแหน่งที่แน่นอน ภาพในส่วนหัว

วางรูปภาพลงในส่วนหัวหรือท้ายกระดาษ ใช้ **HeaderPrimary** ชนิดหัวกระดาษหรือ **FooterPrimary** ประเภทท้ายเรือและ [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) วิธี

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีเพิ่มภาพในส่วนหัว:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### ตั้งค่าคุณสมบัติของแบบอักษรและย่อหน้าสําหรับข้อความส่วนหัวหรือท้ายกระดาษ

ด้วย Aspose.Words คุณสามารถตั้งค่าคุณสมบัติของแบบอักษรและย่อหน้าได้ โดยใช้ **HeaderPrimary** ชนิดหัวกระดาษหรือ **FooterPrimary** แบบท้ายกระดาษ รวมถึงวิธีการและคุณสมบัติในการทํางานกับแบบอักษรและย่อหน้าต่าง ๆ ที่คุณใช้ในการสร้างเอกสาร

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการตั้งค่าข้อความในส่วนหัวของ Arial, ตัวหนา, ขนาด 14 และการจัดตําแหน่งตรงกลาง:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### แทรกหมายเลขหน้าไปยังส่วนหัวหรือท้ายกระดาษ

หากจําเป็น คุณสามารถเพิ่มหมายเลขหน้า บนส่วนหัวหรือท้ายกระดาษได้ เพื่อทําสิ่งนี้ ใช้ **HeaderPrimary** ชนิดหัวกระดาษหรือ **FooterPrimary** ประเภทท้ายเรือและ [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) วิธีการเพิ่มช่องข้อมูลที่ต้องการ

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มหมายเลขหน้า

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### ใช้ส่วนหัวหรือท้ายกระดาษกําหนดในส่วนก่อนหน้า

หากคุณต้องการที่จะคัดลอกหัวหรือท้ายจากส่วนก่อนหน้า คุณสามารถทําเช่นนั้นได้เช่นกัน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีคัดลอกหัวกระดาษหรือท้ายกระดาษจากส่วนก่อนหน้า:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### แจ้งเตือนหัวจดหมายหรือท้ายกระดาษ เมื่อมีการใช้การจัดวางหน้ากระดาษและขนาดหน้าที่แตกต่างกัน

Aspose.Words ให้คุณได้แสดงการแสดงหัวกระดาษหรือท้ายกระดาษ เมื่อมีการใช้ทิศทางและขนาดหน้ากระดาษที่แตกต่างกัน

ตัว อย่าง ต่อ ไป นี้ แสดง ให้ เห็น วิธี ทํา เช่น นี้:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## วิธีเอาส่วนหัวหรือท้ายกระดาษเท่านั้น

แต่ ละ ตอน ใน เอกสาร อาจ มี สาม หัว และ มี ขนาด ถึง สาม ฟุต (สําหรับ หน้า แรก, แม้ แต่ หน้า แปลก ๆ). หากคุณต้องการลบหัวจดหมายทั้งหมด หรือท้ายกระดาษทั้งหมดออกไป คุณต้องวนรอบทุกส่วน และลบโหนดหัวกระดาษหรือโหนดท้ายกระดาษออก

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ เอา หัว เรือ ออก จาก ทุก ส่วน แต่ ยัง คง อยู่. คุณสามารถลบส่วนหัวได้ด้วยวิธีเดียวกัน:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มตัวอย่างของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}
