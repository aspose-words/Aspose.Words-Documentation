---
title: วิธีการสร้างตารางในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: สร้างตาราง
linktitle: สร้างตาราง
description: "วิธีต่างๆในการสร้างตารางในเอกสารของคุณโดยใช้Java."
type: docs
weight: 20
url: /th/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Wordsอนุญาตให้ผู้ใช้สร้างตารางในเอกสารจากรอยขีดข่วนและมีวิธีการที่แตกต่างกันหลายอย่า บทความนี้แสดงรายละเอียดเกี่ยวกับวิธีการเพิ่มตารางที่จัดรูปแบบเอกสารของคุณโดยใช้.

## รูปแบบตารางเริ่มต้น

ตารางที่สร้างขึ้นใหม่จะได้รับค่าดีฟอลต์คล้ายกับที่ใช้ในMicrosoft Word:

| คุณสมบัติตาราง | ค่าปริยายในAspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | `1/2 pt` |
| สีเส้นขอบ | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |
{{% alert color="primary" %}}

ตารางสามารถเป็นแบบอินไลน์ถ้ามันอยู่ในตำแหน่งแน่น,หรือลอยถ้ามันสามารถวางตำแหน่งที่ใดก็ได้บนหน้าเว็บ. โดยค่าเริ่มต้นAspose.Wordsจะสร้างตารางแบบอินไลน์เสมอ.

{{% /alert %}}

## สร้างตารางด้วยDocumentBuilder

ในAspose.Wordsผู้ใช้สามารถสร้างตารางในเอกสารโดยใช้[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ขั้นตอนวิธีการพื้นฐานสำหรับการสร้างตารางมีดังนี้:

1. เริ่มต้นตารางด้วย[StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. เพิ่มเซลล์ลงในตารางโดยใช้[InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell)ซึ่งจะเริ่มแถวใหม่โดยอัตโนมัติ
3. คุณสามารถเลือกใช้คุณสมบัติ[CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat)เพื่อระบุการจัดรูปแบบเซลล์
4. แทรกเนื้อหาของเซลล์โดยใช้วิธีการที่เหมาะสม**DocumentBuilder**เช่น[Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln),[InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte)และอื่นๆ
5. ทำซ้ำขั้นตอนที่ 2-4 จนกว่าแถวจะเสร็จสมบูรณ์
6. โทร[EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)เพื่อสิ้นสุดแถวปัจจุบัน
7. คุณสามารถเลือกใช้คุณสมบัติ[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat)เพื่อระบุการจัดรูปแบบแถว
8. ทำซ้ำขั้นตอนที่ 2-7 จนกว่าตารางจะเสร็จสมบูรณ์
9. โทร[EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)เพื่อเสร็จสิ้นการสร้างตาราง

{{% alert color="primary" %}}

รายละเอียดที่สำคัญ:

- [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)ยังสามารถเรียกภายในเซลล์,ซึ่งในกรณีนี้จะเริ่มต้นการสร้างตารางที่ซ้อนกันภายในเซลล์.
- หลังจากโทร[InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell)เซลล์ใหม่จะถูกสร้างขึ้นและเนื้อหาใดๆที่คุณเพิ่มโดยใช้วิธีการอื่นๆของชั้นเรียน[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)จะถูกเพิ่มเข้าไปในเซลล์ปัจจุบัน เมื่อต้องการสร้างเซลล์ใหม่ในแถวเดียวกันให้โทร**InsertCell**อีกครั้ง.
- ถ้า**InsertCell**ถูกเรียกทันทีหลังจาก[EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)และจุดสิ้นสุดของแถวตารางจะดำเนินการต่อในแถวใหม่.
- วิธีการ[EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)เพื่อสิ้นสุดตารางควรจะเรียกเพียงครั้งเดียวหลังจากโทร**EndRow** การโทร**EndTable**ย้ายเคอร์เซอร์จากเซลล์ปัจจุบันไปยังตำแหน่งหลังจากตาราง.

{{% /alert %}}

กระบวนการของการสร้างตารางสามารถมองเห็นได้อย่างชัดเจนในภาพต่อไปนี้:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างตารางอย่างง่ายโดยใช้**DocumentBuilder**ด้วยการจัดรูปแบบเริ่มต้น:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีสร้างตารางที่จัดรูปแบบโดยใช้DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกตารางที่ซ้อนกันโดยใช้DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## สร้างตารางผ่านDOM(รูปแบบวัตถุเอกสาร)

คุณสามารถแทรกตารางลงในDOMโดยตรงโดยการเพิ่มโหนดใหม่[Table](https://reference.aspose.com/words/java/com.aspose.words/table/)ในตำแหน่งที่เฉพาะเจาะจง.

โปรดทราบว่าทันทีหลังจากการสร้างโหนดตารางตารางตัวเองจะว่างเปล่าอย่างสมบูรณ์ เมื่อต้องการแทรกแถวและเซลล์ลงในตารางให้เพิ่มโหนดลูกที่เหมาะสม[Row](https://reference.aspose.com/words/java/com.aspose.words/run/)และ[Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/)ลงในDOM.

{{% alert color="primary" %}}

วิธีการสร้างตารางนี้ใช้ค่าดีฟอลต์ตารางเดียวกับเมื่อใช้**DocumentBuilder**.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างตารางใหม่จากรอยขีดข่วนโดยการเพิ่มโหนดลูกที่เ:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## สร้างตารางจากHTML

Aspose.Wordsรองรับการแทรกเนื้อหาลงในเอกสารจากแหล่งที่มาHTMLโดยใช้วิธีการ[InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) การป้อนข้อมูลอาจเป็นหน้าเต็มHTMLหรือเพียงแค่ตัวอย่างบางส่วน.

โดยใช้วิธีการนี้**InsertHtml**ผู้ใช้สามารถแทรกตารางลงในเอกสารผ่านแท็กตารางเช่น`<table>`, `<tr>`, `<td>`.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกตารางลงในเอกสารจากสตริงที่มีแท็กHTML:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## แทรกสำเนาของตารางที่มีอยู่

บ่อยครั้งที่คุณจำเป็นต้องสร้างตารางตามตารางที่มีอยู่แล้วในเอกสาร วิธีที่ง่ายที่สุดในการทำซ้ำตารางขณะที่ยังคงการจัดรูปแบบทั้งหมดคือการโคลนโหนดตารางโดยใช้วิธีการ[deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean).

เทคนิคเดียวกันสามารถใช้ในการเพิ่มสำเนาของแถวที่มีอยู่หรือเซลล์ในตาราง.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำซ้ำตารางโดยใช้ตัวสร้างโหนด:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโคลนแถวสุดท้ายของตารางและผนวกเข้ากับตาราง:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

หากคุณกำลังมองที่การสร้างตารางในเอกสารที่เติบโตแบบไดนามิกกับแต่ละระเบียนจาก แต่ผลลัพธ์ที่ต้องการทำได้ง่ายขึ้นโดยใช้Mail mergeกับภูมิภาค คุณสามารถเรียนรู้เพิ่มเติมเกี่ยวกับเทคนิคนี้ใน [Mail Mergeกับภูมิภาค](/words/java/types-of-mail-merge-operations/) มาตรา.

## เปรียบเทียบวิธีการสร้างตาราง

Aspose.Wordsมีหลายวิธีในการสร้างตารางใหม่ในเอกสาร แต่ละวิธีมีข้อดีของตัวเองและข้อเสียดังนั้นทางเลือกของการที่จะใช้มักจะขึ้นอยู่กับสถานกา.

ลองมาดูที่วิธีการเหล่านี้ในการสร้างตารางและเปรียบเทียบข้อดีและข้อเสียของพวกเขา:

| วิธีการ | ข้อดี | ข้อเสีย |
| :- | :- | :- |
| ผ่าน`DocumentBuilder` | วิธีการมาตรฐานสำหรับการแทรกตารางและเนื้อหาเอกสารอื่นๆ | บางครั้งยากที่จะสร้างหลายพันธุ์ของตารางในเวลาเดียวกันกับอินสแตนซ์สร้างเดียวกัน |
| ผ่านDOM | เหมาะกับโค้ดโดยรอบที่สร้างและแทรกโหนดลงในDOMโดยไม่ต้องใช้**DocumentBuilder** | ตารางถูกสร้างขึ้น"ว่างเปล่า":ก่อนดำเนินการส่วนใหญ่คุณต้องโทร[EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum)เพื่อสร้างโหนดเด็กที่ขาด |
| จากHTML | สามารถสร้างตารางใหม่จากHTMLแหล่งที่มาโดยใช้แท็กเช่น`<table>`, `<tr>`, `<td>` | ไม่สามารถใช้รูปแบบตารางMicrosoft Wordได้กับHTML |
| การโคลนตารางที่มีอยู่ | คุณสามารถสร้างสำเนาของตารางที่มีอยู่ขณะที่ยังคงจัดรูปแบบแถวและเซลล์ทั้งหมด | โหนดลูกที่เหมาะสมต้องถูกลบออกก่อนที่ตารางจะพร้อมสำหรับการใช้งาน |
