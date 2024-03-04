---
title: แยกตารางใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: แยกโต๊ะ
linktitle: แยกโต๊ะ
description: "แยกตารางใน C# วิธีแยกตารางหนึ่งออกเป็นสองตารางแยกกัน C#"
type: docs
weight: 100
url: /th/net/split-table/
---

ตารางที่แสดงใน Aspose.Words Document Object Model ประกอบด้วยแถวและเซลล์ที่เป็นอิสระ ทำให้แยกตารางได้ง่าย

หากต้องการจัดการตารางให้แยกออกเป็นสองตาราง เราเพียงแค่ต้องย้ายแถวบางแถวจากตารางเดิมไปยังตารางใหม่ เมื่อต้องการทำเช่นนี้ เราจำเป็นต้องเลือกแถวที่เราต้องการแยกตาราง

เราสามารถสร้างตารางสองตารางจากตารางต้นฉบับได้โดยทำตามขั้นตอนง่ายๆ เหล่านี้:

1. สร้างโคลนของตารางโดยไม่ต้องโคลนเด็ก ๆ เพื่อเก็บแถวที่ถูกย้ายและแทรกไว้หลังตารางต้นฉบับ
2. เริ่มต้นที่แถวที่ระบุ ย้ายแถวถัดไปทั้งหมดไปยังตารางที่สองนี้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแบ่งตารางออกเป็นสองตารางในแถวที่ระบุ:

{{< gist "aspose-words-gists" "4ab56c5443822fa44f4cac1f45af32b7" "split-table.cs" >}}