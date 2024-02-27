---
title: วิธีสร้างตารางใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: สร้างตาราง
linktitle: สร้างตาราง
description: "คำแนะนำเกี่ยวกับวิธีสร้างตารางใน C# ในรูปแบบต่างๆ สร้างตารางใน C# สำหรับเอกสารของคุณ"
type: docs
weight: 20
url: /th/net/create-a-table/
---

Aspose.Words อนุญาตให้ผู้ใช้สร้างตารางในเอกสารตั้งแต่ต้นและมีวิธีการต่างๆ มากมายในการดำเนินการดังกล่าว บทความนี้นำเสนอรายละเอียดเกี่ยวกับวิธีเพิ่มตารางที่จัดรูปแบบลงในเอกสารของคุณโดยใช้แต่ละวิธี รวมถึงการเปรียบเทียบแต่ละวิธีในตอนท้ายของบทความ

## สไตล์ตารางเริ่มต้น

ตารางที่สร้างขึ้นใหม่จะได้รับค่าเริ่มต้นที่คล้ายกับที่ใช้ใน Microsoft Word:

|  คุณสมบัติตาราง |  ค่าเริ่มต้นใน Aspose.Words |
|  :---------------------  |  :----------------------  |
|  `Border Style`            |  `Single`  |
|  `Border Width`            |  `1/2 pt`                   |
|  `Border Color`            |  `Black`  |
|  `Left and Right Padding`  |  `5.4 pts`                  |
|  `AutoFit Mode`            |  `AutoFit to Window`        |
|  `Allow AutoFit`           |  `True`  |

{{% alert color="primary" %}}

ตารางสามารถเป็นแบบอินไลน์ได้หากอยู่ในตำแหน่งที่แน่นหนา หรือเป็นแบบลอยตัวหากสามารถวางตำแหน่งไว้ที่ใดก็ได้บนหน้าได้ ตามค่าเริ่มต้น Aspose.Words จะสร้างตารางแบบอินไลน์เสมอ

{{% /alert %}}

## สร้างตารางด้วย DocumentBuilder

ใน Aspose.Words ผู้ใช้จะสร้างตารางในเอกสารโดยใช้ [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) ได้ อัลกอริธึมพื้นฐานสำหรับการสร้างตารางมีดังนี้:

1. เริ่มตารางด้วย [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/)
2. เพิ่มเซลล์ลงในตารางโดยใช้ [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) ซึ่งจะเป็นการเริ่มต้นแถวใหม่โดยอัตโนมัติ
3. หรือใช้คุณสมบัติ [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) เพื่อระบุการจัดรูปแบบเซลล์
4. แทรกเนื้อหาเซลล์โดยใช้วิธี **DocumentBuilder** ที่เหมาะสม เช่น [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) และอื่นๆ
5. ทำซ้ำขั้นตอนที่ 2-4 จนกระทั่งแถวเสร็จสมบูรณ์
6. โทร [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) เพื่อสิ้นสุดแถวปัจจุบัน
7. เลือกใช้คุณสมบัติ [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) เพื่อระบุการจัดรูปแบบแถว
8. ทำซ้ำขั้นตอนที่ 2-7 จนกว่าตารางจะเสร็จสมบูรณ์
9. โทร [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) เพื่อสร้างตารางให้เสร็จ

{{% alert color="primary" %}}

รายละเอียดที่สำคัญ:

* [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) สามารถเรียกภายในเซลล์ได้ ซึ่งในกรณีนี้ [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) จะเริ่มสร้างตารางที่ซ้อนกันภายในเซลล์
* หลังจากเรียก [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) เซลล์ใหม่จะถูกสร้างขึ้น และเนื้อหาใดๆ ที่คุณเพิ่มโดยใช้วิธีอื่นของคลาส [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) จะถูกเพิ่มลงในเซลล์ปัจจุบัน หากต้องการสร้างเซลล์ใหม่ในแถวเดียวกัน ให้เรียก **InsertCell** อีกครั้ง
* ถ้า **InsertCell** ถูกเรียกทันทีหลังจาก [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) และสิ้นสุดแถว ตารางจะดำเนินต่อไปในแถวใหม่
* วิธีการ [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) เพื่อสิ้นสุดตารางควรถูกเรียกเพียงครั้งเดียวหลังจากการเรียก **EndRow** การเรียก **EndTable** จะเลื่อนเคอร์เซอร์จากเซลล์ปัจจุบันไปยังตำแหน่งหลังตารางทันที

{{% /alert %}}

ขั้นตอนการสร้างตารางสามารถเห็นได้ชัดเจนในภาพต่อไปนี้:

![creating-table-process](/words/net/create-a-table/creating-table-process.jpg)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีสร้างตารางอย่างง่ายโดยใช้ **DocumentBuilder** พร้อมการจัดรูปแบบเริ่มต้น:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "create-simple-table.cs" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างตารางที่จัดรูปแบบโดยใช้ DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "formatted-table.cs" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกตารางที่ซ้อนกันโดยใช้ DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "nested-table.cs" >}}

## สร้างตารางผ่าน DOM (Document Object Model)

คุณสามารถแทรกตารางลงใน DOM ได้โดยตรงโดยการเพิ่มโหนด [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) ใหม่ในตำแหน่งที่ต้องการ

โปรดทราบว่าทันทีหลังจากการสร้างโหนดตาราง ตัวตารางจะว่างเปล่าโดยสิ้นเชิง นั่นคือยังไม่มีแถวและเซลล์ หากต้องการแทรกแถวและเซลล์ลงในตาราง ให้เพิ่มโหนดย่อย [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) และ [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) ที่เหมาะสมลงใน DOM

{{% alert color="primary" %}}

วิธีการสร้างตารางนี้ใช้ค่าเริ่มต้นของตารางเดียวกันกับเมื่อใช้ **DocumentBuilder**

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างตารางใหม่ตั้งแต่ต้นโดยการเพิ่มโหนดย่อยที่เหมาะสมลงในแผนผังเอกสาร:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-directly.cs" >}}

## สร้างตารางจาก HTML

Aspose.Words รองรับการแทรกเนื้อหาลงในเอกสารจากแหล่ง HTML โดยใช้วิธี [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/) อินพุตอาจเป็นหน้า HTML ที่สมบูรณ์หรือเพียงบางส่วนก็ได้

เมื่อใช้วิธีการ **InsertHtml** ผู้ใช้สามารถแทรกตารางลงในเอกสารผ่านแท็กตาราง เช่น `<table>`, `<tr>`, `<td>`

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกตารางลงในเอกสารจากสตริงที่มีแท็ก HTML:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-from-html.cs" >}}

## แทรกสำเนาของตารางที่มีอยู่

บ่อยครั้งคุณจำเป็นต้องสร้างตารางโดยยึดตามตารางที่มีอยู่แล้วในเอกสาร วิธีที่ง่ายที่สุดในการทำซ้ำตารางโดยที่ยังคงการจัดรูปแบบทั้งหมดไว้คือการโคลนโหนดตารางโดยใช้วิธี [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/)

เทคนิคเดียวกันนี้สามารถใช้เพื่อเพิ่มสำเนาของแถวหรือเซลล์ที่มีอยู่ลงในตารางได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำซ้ำตารางโดยใช้ตัวสร้างโหนด:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-complete-table.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโคลนแถวสุดท้ายของตารางและผนวกเข้ากับตาราง:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-last-row.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx)

{{% /alert %}}

หากคุณกำลังมองหาการสร้างตารางในเอกสารที่ขยายแบบไดนามิกตามแต่ละระเบียนจากแหล่งข้อมูลของคุณ ไม่แนะนำให้ใช้วิธีการข้างต้น แต่ผลลัพธ์ที่ต้องการจะทำได้ง่ายกว่าโดยใช้ Mail merge กับขอบเขต คุณสามารถเรียนรู้เพิ่มเติมเกี่ยวกับเทคนิคนี้ได้ในส่วน [Mail Merge พร้อมภูมิภาค](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions)

## เปรียบเทียบวิธีสร้างตาราง

Aspose.Words มีหลายวิธีในการสร้างตารางใหม่ในเอกสาร แต่ละวิธีมีข้อดีและข้อเสียในตัวเอง ดังนั้นการเลือกใช้มักขึ้นอยู่กับสถานการณ์เฉพาะ

มาดูวิธีการสร้างตารางเหล่านี้ให้ละเอียดยิ่งขึ้น และเปรียบเทียบข้อดีและข้อเสีย:

|  วิธี | ข้อดี |  ข้อเสีย |
|  :-  |  :-  |  :-  |
| ผ่านทาง `DocumentBuilder` | วิธีการมาตรฐานสำหรับการแทรกตารางและเนื้อหาเอกสารอื่นๆ | บางครั้งก็เป็นเรื่องยากที่จะสร้างตารางที่หลากหลายในเวลาเดียวกันด้วยอินสแตนซ์ตัวสร้างเดียวกัน |
| ผ่านทาง DOM |  เข้ากันได้ดีกว่าด้วยโค้ดที่อยู่รอบๆ ที่สร้างและแทรกโหนดลงใน DOM โดยตรงโดยไม่ต้องใช้ **DocumentBuilder** | ตารางถูกสร้างขึ้น "ว่างเปล่า": ก่อนที่จะดำเนินการส่วนใหญ่ คุณต้องเรียก [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words.tables/table/ensureminimum/) เพื่อสร้างโหนดลูกที่ขาดหายไป |
| จากภาษา HTML | สามารถสร้างตารางใหม่จากแหล่ง HTML โดยใช้แท็กเช่น `<table>`, `<tr>`, `<td>` | รูปแบบตาราง Microsoft Word ที่เป็นไปได้บางรูปแบบไม่สามารถใช้กับ HTML ได้ |
| การโคลนตารางที่มีอยู่ | คุณสามารถสร้างสำเนาของตารางที่มีอยู่โดยที่ยังคงการจัดรูปแบบแถวและเซลล์ทั้งหมดไว้ | ต้องลบโหนดย่อยที่เหมาะสมออกก่อนที่ตารางจะพร้อมใช้งาน |