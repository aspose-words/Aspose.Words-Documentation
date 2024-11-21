---
title: ตำแหน่งตารางใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: วางตำแหน่งตาราง
linktitle: วางตำแหน่งตาราง
description: "ระบุตำแหน่งตารางใน C# รับการจัดตำแหน่งตาราง รับและตั้งค่าตำแหน่งตารางลอยโดยใช้ C#"
type: docs
weight: 50
url: /th/net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

มีตารางลอยและตารางอินไลน์:

* **ตารางอินไลน์** ถูกวางไว้บนเลเยอร์เดียวกันกับข้อความ และวางไว้ในแนวข้อความที่ล้อมรอบตารางด้านบนและด้านล่างเท่านั้น ตารางแบบอินไลน์จะปรากฏระหว่างย่อหน้าที่คุณวางไว้เสมอ
* **โต๊ะลอยน้ำ** จะถูกซ้อนเลเยอร์ไว้เหนือข้อความ และตำแหน่งของตารางที่สัมพันธ์กับย่อหน้าจะถูกกำหนดโดยจุดยึดตาราง ด้วยเหตุนี้ ตำแหน่งของตารางลอยในเอกสารจึงได้รับผลกระทบจากการตั้งค่าการวางตำแหน่งแนวตั้งและแนวนอน

บางครั้งคุณจำเป็นต้องวางตำแหน่งตารางในเอกสารในลักษณะใดลักษณะหนึ่ง ในการดำเนินการนี้ คุณจะต้องใช้เครื่องมือการจัดตำแหน่งและตั้งค่าการเยื้องระหว่างตารางและข้อความโดยรอบ

ในบทความนี้ เราจะพูดถึงตัวเลือกที่ Aspose.Words มีให้สำหรับการวางตำแหน่ง

## ระบุตำแหน่งตารางแบบอินไลน์

คุณสามารถตั้งค่าตำแหน่งของตารางอินไลน์ได้โดยใช้คุณสมบัติ Aspose.Words API และ [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) ดังนั้นคุณจึงสามารถปรับการจัดตำแหน่งของตารางให้สัมพันธ์กับหน้าเอกสารได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าตำแหน่งของตารางแบบอินไลน์:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## รับการจัดตำแหน่งตารางแบบลอยตัว

หากตั้งค่าการตัดข้อความตารางเป็น **Around** คุณสามารถรับการจัดแนวแนวนอนและแนวตั้งของตารางได้โดยใช้คุณสมบัติ [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) และ [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/)

ด้วย **การตัดข้อความประเภทอื่นๆ** คุณสามารถรับการจัดแนวตารางแบบอินไลน์ได้โดยใช้คุณสมบัติ [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการจัดตำแหน่งของตาราง:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## รับตำแหน่งตารางลอยตัว

 ตำแหน่งของตารางลอยตัวถูกกำหนดโดยใช้คุณสมบัติต่อไปนี้:

* [HorizontalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/horizontalanchor/) – วัตถุสำหรับคำนวณการวางตำแหน่งแนวนอนของตารางลอย
* [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/verticalanchor/) – วัตถุสำหรับคำนวณการวางตำแหน่งแนวตั้งของตารางลอย
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absolutehorizontaldistance/) – ตำแหน่งตารางลอยแนวนอนสัมบูรณ์
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absoluteverticaldistance/) – ตำแหน่งตารางลอยในแนวตั้งสัมบูรณ์
* [AllowOverlap](https://reference.aspose.com/words/net/aspose.words.tables/table/allowoverlap/) - ตัวเลือกในการเปิด/ปิดการทับซ้อนกับวัตถุลอยอื่นๆ
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) - การจัดตำแหน่งแนวนอนแบบสัมพันธ์ของตารางลอย
* [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) - การจัดตำแหน่งแนวตั้งสัมพัทธ์ของตารางลอย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการรับตำแหน่งของตารางลอยตัว:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## ตั้งค่าตำแหน่งตารางลอยตัว

เช่นเดียวกับการรับ คุณสามารถกำหนดตำแหน่งของตารางลอยได้โดยใช้ Aspose.Words API เดียวกัน

สิ่งสำคัญคือต้องรู้ว่าการจัดตำแหน่งและระยะทางแนวนอนและแนวตั้งเป็นคุณสมบัติที่รวมกัน และสามารถรีเซ็ตคุณสมบัติอื่นได้ ตัวอย่างเช่น การตั้งค่า **RelativeHorizontalAlignment** จะรีเซ็ต **AbsoluteHorizontalDistance** เป็นค่าเริ่มต้นและในทางกลับกัน เช่นเดียวกับ true สำหรับการจัดเรียงแนวตั้ง

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าตำแหน่งของตารางลอยตัว:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## รับระยะห่างระหว่างตารางและข้อความโดยรอบ

Aspose.Words ยังให้โอกาสในการค้นหาระยะห่างระหว่างตารางและข้อความโดยรอบ:

- [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) – ค่าระยะห่างจากด้านบน
- [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/) – ค่าของระยะห่างในการรับรู้
- [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/) – ค่าระยะทางทางด้านขวา
- [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/) – ค่าระยะทางทางด้านซ้าย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีรับระยะห่างระหว่างตารางและข้อความโดยรอบ:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}
