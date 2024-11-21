---
title: ตําแหน่งตารางใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ตําแหน่งของตาราง
linktitle: ตําแหน่งของตาราง
description: "ระบุตําแหน่งของตารางใน Java. ได้รับการจัดตําแหน่งตาราง รับและตั้งค่าตําแหน่งตารางลอยโดยใช้ Java."
type: docs
weight: 50
url: /th/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

มีตารางลอยน้ําและตารางบรรทัด:

* **ตารางบรรทัด** จะ วาง บน ชั้น เดียว กัน กับ ข้อ ความ และ จะ ถูก นํา ไป เรียง เป็น แถว ๆ โต๊ะ ข้าง บน และ ข้าง ล่าง. Inline Table จะปรากฏเสมอระหว่างย่อหน้าที่คุณวางมัน
* **เลื่อนตาราง** มี การ เขียน ทับ ข้อ ความ และ ตําแหน่ง ของ โต๊ะ เมื่อ เทียบ กับ วรรค จะ ถูก กําหนด โดย สมอ โต๊ะ. เนื่อง จาก เหตุ นี้ ตําแหน่ง ของ ตาราง ลอย ใน เอกสาร จึง ได้ รับ ผล กระทบ จาก การ ตั้ง ตําแหน่ง ใน แนว ตั้ง ทั้ง ใน แนว ตั้ง และ แนว นอน.

บางครั้งคุณก็ต้องจัดโต๊ะ ในเอกสารในบางรูปแบบ เพื่อ จะ ทํา เช่น นี้ ได้ คุณ ต้อง ใช้ เครื่อง มือ จัด ระเบียบ และ วาง ช่อง ระหว่าง โต๊ะ กับ ข้อ ความ รอบ ๆ.

ใน บทความ นี้ เรา จะ พิจารณา ทาง เลือก อะไร บ้าง Aspose.Words จัดหาตําแหน่ง

## ระบุตําแหน่งตารางในบรรทัด

คุณสามารถกําหนดตําแหน่งของตารางในบรรทัดโดยใช้ Aspose.Words API และ [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) ทรัพย์สิน ด้วย เหตุ นี้ คุณ สามารถ ปรับ การ จัด โต๊ะ ให้ เข้า กับ หน้า เอกสาร ได้.

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการตั้งค่าตําแหน่งของตารางข้อความ:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## ได้รับการจัดวางตารางการลอย

หากตั้งค่าการห่อข้อความของตาราง **Around**, คุณสามารถหาแนวราบของตารางได้ โดยใช้ [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) ถึง [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) คุณสมบัติ

ด้วย **การห่อข้อความชนิดอื่น ๆ**, คุณสามารถหาตําแหน่งตารางบรรทัดได้โดยใช้ **Alignment** ทรัพย์สิน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการจัดตําแหน่งตาราง:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## รับตําแหน่งตารางการลอย

 ตําแหน่งของตารางลอยได้ถูกกําหนดโดยใช้คุณสมบัติต่อไปนี้:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) - วัตถุสําหรับการคํานวณตําแหน่งแนวนอนของตารางลอย
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) - วัตถุสําหรับคํานวณตําแหน่งแนวตั้งของตารางลอย
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) - ตําแหน่งตารางลอยตัวพอดี
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) - ตําแหน่งโต๊ะลอยตัวพอดี
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) ตัวเลือกต่าง ๆ เพื่อเปิดใช้/ แยกแยะความทับซ้อนกันได้กับวัตถุอื่น ๆ ที่ลอยได้
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) - ตารางลอยสัมพันธ์การจัดเรียงแนวนอน
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) - ตารางลอยสัมพัทธ์

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการได้รับตําแหน่งของตารางลอย:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## ตั้งตําแหน่งตารางการลอย

เช่นเดียวกับได้รับคุณสามารถตั้งตําแหน่งของตารางลอยโดยใช้เดียวกัน Aspose.Words API.

สิ่งสําคัญคือต้องรู้ว่า การจัดตําแหน่งและแนวนอน และระยะแนวดิ่งนั้น เป็นคุณสมบัติรวม และหนึ่งสามารถรีเซ็ตอีกตัวได้ ยกตัวอย่างเช่น การตั้ง **RelativeHorizontalAlignment** จะรีเซ็ต **AbsoluteHorizontalDistance** ไปยังค่าปริยายของมัน และในทางกลับกัน เหมือนกัน true สําหรับทําแนวตั้ง

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งตําแหน่งของตารางลอย:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## หาระยะห่างระหว่างตารางกับข้อความล้อมรอบ

Aspose.Words นอก จาก นี้ ยัง เปิด โอกาส ให้ รู้ ระยะ ทาง ระหว่าง โต๊ะ กับ ข้อ ความ โดย รอบ:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) - ค่าของระยะห่างจากด้านบน
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) - ค่าของระยะห่างของการรับรู้
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) - ระยะทางจากทางขวา
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) - ค่าระยะทางทางซ้าย

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ แยก ระยะ ระหว่าง ตาราง กับ ข้อ ความ ที่ อยู่ รอบ ๆ:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
