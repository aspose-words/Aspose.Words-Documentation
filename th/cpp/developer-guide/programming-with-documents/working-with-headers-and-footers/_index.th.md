---
title: การทำงานกับส่วนหัวและท้ายกระดาษในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับส่วนหัวและท้ายกระดาษ
linktitle: การทำงานกับส่วนหัวและท้ายกระดาษ
description: "วิธีการจัดการส่วนหัวและท้ายกระดาษโดยใช้C++."
type: docs
weight: 150
url: /th/cpp/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsอนุญาตให้ผู้ใช้ทำงานกับส่วนหัวและท้ายกระดาษในเอกสาร ส่วนหัวคือข้อความที่วางไว้ที่ด้านบนของหน้าและส่วนท้ายเป็นข้อความที่ด้านล่างของหน้า โดยปกติแล้วพื้นที่เหล่านี้จะใช้ในการแทรกข้อมูลที่ควรจะทำซ้ำในทั้งหมดหรือบางหน้าของ.

## สร้างส่วนหัวหรือท้ายกระดาษโดยใช้DocumentBuilder

หากคุณต้องการเพิ่มส่วนหัวหรือส่วนท้ายของเอกสารโดยใช้โปรแกรม วิธีที่ง่ายที่สุดคือใช้คลาส [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) ในการดำเนินการ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มส่วนหัวและท้ายกระดาษสำหรับหน้าเอกสาร:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "create-header-footer.h" >}}

## ระบุตัวเลือกส่วนหัวหรือส่วนท้าย

เมื่อคุณเพิ่มส่วนหัวหรือท้ายกระดาษลงในเอกสารคุณสามารถตั้งค่าคุณสมบัติขั้นสูงบางอย่า Aspose.Wordsให้ผู้ใช้ที่มี[HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/)และ[HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/)ชั้นเรียน,เช่นเดียวกับ[HeaderFooterType](https://reference.aspose.com/words/cpp/aspose.words/headerfootertype/)นับที่ให้คุณควบคุมมากขึ้นกว่าส่วนหัวและส่วนท้าย.

### ระบุประเภทส่วนหัวหรือส่วนท้าย

คุณสามารถระบุสามประเภทส่วนหัวที่แตกต่างกันและสามชนิดส่วนท้ายที่แตกต่างกันสำหรั:

1. ส่วนหัวและ/หรือส่วนท้ายสำหรับหน้าแรก
2. ส่วนหัวและ/หรือส่วนท้ายสำหรับหน้าแม้แต่
3. ส่วนหัวและ/หรือส่วนท้ายสำหรับหน้าคี่

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มส่วนหัวสำหรับหน้าเอกสารคี่:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "header-footer-type.h" >}}

### ระบุว่าจะแสดงส่วนหัวหรือท้ายกระดาษที่แตกต่างกันสำหรับหน้าแรก

ดังกล่าวข้างต้นคุณยังสามารถตั้งค่าส่วนหัวที่แตกต่างกันหรือส่วนท้ายสำหรับหน้าแรก งค่า[DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_differentfirstpageheaderfooter/)เป็น`true`แล้วระบุค่า**HeaderFirst**หรือ**FooterFirst**.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าส่วนหัวสำหรับหน้าแรกเท่านั้น:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "different-first-page.h" >}}

### ระบุว่าจะแสดงส่วนหัวหรือท้ายกระดาษที่แตกต่างกันสำหรับหน้าคี่หรือคู่

 ถัดไปคุณจะต้องการตั้งค่าส่วนหัวหรือส่วนท้ายที่แตกต่างกันสำหรับหน้าคี่และแม้ในเอกสาร งค่า[OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_oddandevenpagesheaderfooter/)เป็น`true`แล้วระบุค่า**HeaderPrimary**และ**HeaderEven**หรือ**FooterPrimary**และ**FooterEven**.

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "odd-even-pages.h" >}}

### แทรกภาพตำแหน่งอย่างลงในส่วนหัว

ในการวางรูปภาพในส่วนหัวหรือส่วนท้ายให้ใช้**HeaderPrimary**ชนิดส่วนหัวหรือ**FooterPrimary**ชนิดส่วนท้ายและวิธีการ`InsertImage`.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มรูปภาพไปยังส่วนหัว:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "insert-image.h" >}}

### ตั้งค่าคุณสมบัติแบบอักษรและย่อหน้าสำหรับข้อความส่วนหัวหรือส่วนท้าย

ด้วยAspose.Wordsคุณสามารถตั้งค่าคุณสมบัติแบบอักษรและย่อหน้า,ใช้**HeaderPrimary**ชนิดส่วนหัวหรือ**FooterPrimary**ชนิดส่วนท้าย,เช่นเดี.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าข้อความในส่วนหัวไปยังทางอากาศ,ตัวหนา,ขนาด 14,แล:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "font-props.h" >}}

### แทรกหมายเลขหน้าลงในส่วนหัวหรือส่วนท้าย

หากจำเป็นคุณสามารถเพิ่มหมายเลขหน้าไปยังส่วนหัวหรือส่วนท้าย เมื่อต้องการทำเช่นนี้ให้ใช้**HeaderPrimary**ชนิดส่วนหัวหรือ**FooterPrimary**ชนิดส่วนท้ายและวิธีการ[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/)เพื่อเพิ่มฟิลด์ที่ต้องการ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มหมายเลขหน้าไปยังส่วนท้ายด้านขวา:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "page-numbers.h" >}}

### ใช้ส่วนหัวหรือท้ายกระดาษที่กำหนดไว้ในส่วนก่อนหน้า

ถ้าคุณต้องการคัดลอกส่วนหัวหรือส่วนท้ายจากส่วนก่อนหน้านี้,คุณสามารถทำเช่นนั้นมากเกิน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการคัดลอกส่วนหัวหรือส่วนท้ายจากส่วนก่อนหน้า:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "copy-headers-footers-from-previous-section.h" >}}

### ให้แน่ใจว่าลักษณะส่วนหัวหรือส่วนท้ายเมื่อใช้ทิศทางหน้าแตกต่างกันและขนาดหน้า

Aspose.Wordsช่วยให้คุณสามารถให้ลักษณะที่ปรากฏของส่วนหัวหรือส่วนท้ายเมื่อใช้ทิศทางที่แตกต่างกันแ.

ตัวอย่างต่อไปนี้แสดงวิธีการทำเช่นนี้:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

## วิธีการลบเฉพาะส่วนหัวหรือส่วนท้ายเท่านั้น

แต่ละส่วนในเอกสารสามารถมีได้ถึงสามส่วนหัวและถึงสามส่วนท้าย(สำหรับหน้าแรกแม้และ ถ้าคุณต้องการลบส่วนหัวทั้งหมดหรือท้ายกระดาษทั้งหมดในเอกสารคุณต้องวนรอบผ่านทุกส่.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลบส่วนท้ายกระดาษทั้งหมดจากทุกส่วนแต่ปล่อยส่วนหัวเห คุณสามารถลบเฉพาะส่วนหัวในลักษณะที่คล้ายกัน:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "remove-footers.h" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
