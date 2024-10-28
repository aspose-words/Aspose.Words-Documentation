---
title: ตำแหน่งตารางในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: ตำแหน่งตาราง
linktitle: ตำแหน่งตาราง
description: "ระบุตำแหน่งตารางในC++ รับการจัดตำแหน่งตารางรับและตั้งค่าตำแหน่งตารางลอยโดยใช้C++."
type: docs
weight: 50
url: /th/cpp/position-a-table/
---

มีตารางลอยและตารางแบบอินไลน์:

* **Inline tables**ถูกวางไว้บนชั้นเดียวกับข้อความและถูกวางไว้ในโฟลว์ของข้อความที่ล้อมรอบตารางด้านบนและด้านล่างเท่านั้น ตารางแบบอินไลน์จะปรากฏระหว่างย่อหน้าที่คุณวางไว้เสมอ.
* **Floating tables**จะถูกเลเยอร์เหนือข้อความและตำแหน่งของตารางสัมพันธ์กับย่อหน้าจะถูกกำหนดโดยสมอต ด้วยเหตุนี้ตำแหน่งของตารางลอยในเอกสารจึงได้รับผลกระทบจากการตั้งค่าการวางตำ.

บางครั้งคุณจำเป็นต้องวางตำแหน่งตารางในเอกสารในลักษณะบางอย่าง การทำเช่นนี้คุณจะต้องใช้เครื่องมือการจัดตำแหน่งและการตั้งค่าการเยื้องระหว่างตาร.

ในบทความนี้,เราจะหารือเกี่ยวกับสิ่งที่ตัวเลือกAspose.Wordsให้สำหรับการวางตำแหน่ง.

## ระบุตำแหน่งตารางแบบอินไลน์

คุณสามารถตั้งค่าตำแหน่งของตารางอินไลน์โดยใช้คุณสมบัติAspose.WordsAPIและ[Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/) ดังนั้นคุณสามารถปรับการจัดตำแหน่งของตารางเมื่อเทียบกับหน้าเอกสาร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าตำแหน่งของตารางแบบอินไลน์:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## รับการจัดตำแหน่งตารางลอย

ถ้าการกำหนดการห่อข้อความในตารางถูกตั้งค่าเป็น **Around** คุณสามารถจัดตำแหน่งแนวนอนและแนวตั้งของตารางได้โดยใช้คุณสมบัติ [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) และ [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/).

ด้วย**other types of text wrapping**คุณจะได้รับการจัดตำแหน่งตารางแบบอินไลน์โดยใช้คุณสมบัติ[Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการจัดตำแหน่งของตาราง:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## รับตำแหน่งตารางลอย

 ตำแหน่งของตารางลอยจะถูกกำหนดโดยใช้คุณสมบัติต่อไปนี้:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/)–วัตถุสำหรับการคำนวณตำแหน่งแนวนอนของตารางลอย
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/)–วัตถุสำหรับการคำนวณตำแหน่งในแนวตั้งของตารางลอย
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/)–ตำแหน่งตารางลอยแนวนอนสัมบูรณ์
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/)–ตำแหน่งตารางลอยแนวตั้งสัมบูรณ์
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/)-ตัวเลือกเพื่อเปิด/ปิดการทับซ้อนกับวัตถุอื่นๆลอย
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/)–ตารางลอยสัมพันธ์แนวนอน.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/)–ตารางลอยแนวตั้งญาติ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการรับตำแหน่งของตารางลอย:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## ตั้งตำแหน่งตารางลอยตัว

เช่นเดียวกับการได้รับ,คุณสามารถตั้งค่าตำแหน่งของตารางลอยโดยใช้เดียวกันAspose.WordsAPI.

มันเป็นสิ่งสำคัญที่จะรู้ว่าการจัดตำแหน่งและระยะทางแนวนอนและแนวตั้งจะรวมกันคุณสมบั ตัวอย่างเช่นการตั้งค่า**RelativeHorizontalAlignment**จะรีเซ็ต**AbsoluteHorizontalDistance**เป็นค่าเริ่มต้นและในทางกลับกัน ก็เหมือนกันสำหรับการจัดเรียงแนวดิ่ง.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าตำแหน่งของตารางลอย:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## รับระยะห่างระหว่างตารางและข้อความโดยรอบ

Aspose.Wordsนอกจากนี้ยังมีโอกาสที่จะหาระยะห่างระหว่างตารางและข้อความโดยรอบ:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/)–ค่าของระยะทางจากด้านบน
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/)-ค่าของระยะทางของการรับรู้
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/)–ค่าระยะทางทางด้านขวา
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/)–ค่าระยะทางทางซ้าย

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการรับระยะห่างระหว่างตารางและข้อความโดยรอบ:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
