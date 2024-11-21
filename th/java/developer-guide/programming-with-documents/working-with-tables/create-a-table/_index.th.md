---
title: วิธี สร้าง โต๊ะ ใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: สร้างตาราง
linktitle: สร้างตาราง
description: "วิธีการสร้างตารางในเอกสารที่แตกต่างกันโดยใช้ Java."
type: docs
weight: 20
url: /th/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words อนุญาตให้ผู้ใช้สร้างตารางในเอกสารจากรอยขีดข่วน และให้วิธีการต่างๆ มากมายในการทําเช่นนั้น บทความ นี้ ให้ ราย ละเอียด เกี่ยว กับ วิธี เพิ่ม ตาราง ให้ กับ เอกสาร ของ คุณ โดย ใช้ แต่ ละ วิธี รวม ทั้ง การ เปรียบ เทียบ วิธี การ ต่าง ๆ ใน ตอน ท้าย บทความ.

## รูปแบบตารางปริยาย

ตารางที่ถูกสร้างใหม่ ได้รับการกําหนดค่าปริยายที่คล้ายกับที่ถูกใช้ใน Microsoft Word

| คุณสมบัติของตาราง | ค่าปริยายใน Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| สีกรอบ |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

ตาราง อาจ เข้า ไป เกี่ยว ข้อง ได้ หาก อยู่ ใน ตําแหน่ง ที่ แน่น หนา หรือ ลอย อยู่ ถ้า สามารถ ตั้ง ตําแหน่ง ได้ ไม่ ว่า ที่ ใด ใน หน้า. โดยปริยายแล้ว Aspose.Words มักจะสร้างตารางบรรทัด

{{% /alert %}}

## สร้างตารางด้วยตัวสร้างเอกสาร

ใน Aspose.Words, ผู้ใช้สามารถสร้างตารางในเอกสารโดยใช้ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). อัลกอริทึมพื้นฐานในการสร้างตารางเป็นดังต่อไปนี้:

1 เริ่มตารางด้วย [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2 เพิ่มเซลล์ไปยังตาราง [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) - นี่จะเริ่มใหม่โดยอัตโนมัติ
3 ทาง เลือก ใช้ [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) คุณสมบัติที่จะกําหนดการฟอร์แมตเซลล์
4 แทรกเนื้อหาเซลล์โดยใช้ค่าที่เหมาะสม **DocumentBuilder** วิธีการต่าง ๆ เช่น [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), และคนอื่นๆ
5 ทําซ้ําขั้นตอนที่ 2-4 จนกว่าแถวจะสมบูรณ์
6 เรียก [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) เพื่อจบแถวปัจจุบัน
7 ทาง เลือก ใช้ [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) คุณสมบัติที่จะใช้ระบุการฟอร์แมตแถว
8 ทําซ้ําขั้นตอนที่ 2-7 จนกว่าตารางจะเสร็จสมบูรณ์
9 เรียก [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) เพื่อสร้างโต๊ะให้เสร็จ

{{% alert color="primary" %}}

รายละเอียดสําคัญ:

- [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) อาจ เรียก ได้ ด้วย ว่า เป็น ภาย ใน เซลล์ ซึ่ง หาก เป็น เช่น นั้น ก็ จะ เริ่ม สร้าง โต๊ะ วาง รัง ภาย ใน เซลล์.
- หลังจากโทร [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), สร้างเซลล์ใหม่ และเนื้อหาใดๆ ที่คุณเพิ่มโดยใช้วิธีการอื่น ๆ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) คลาสจะถูกเพิ่มไปยังเซลล์ปัจจุบัน เพื่อสร้างเซลล์ใหม่ในแถวเดียวกัน โทร **InsertCell** อีกครั้ง
- ถ้า **InsertCell** จะเรียกทันทีหลังจาก [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) และตอนจบของแถว ตารางจะต่อเนื่องในแถวใหม่
- [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) วิธีการสิ้นสุดตารางควรจะเรียกครั้งเดียวหลังจากเรียกเท่านั้น **EndRow**. เรียก **EndTable** ย้ายเคอร์เซอร์จากช่องปัจจุบันไปยังตําแหน่งทันทีหลังจากตาราง

{{% /alert %}}

กระบวนการ สร้าง โต๊ะ สามารถ เห็น ได้ ชัดเจน ใน ภาพ ต่อ ไป นี้:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีสร้างตารางง่าย ๆ โดยใช้ **DocumentBuilder** การฟอร์แมตปริยาย:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการสร้างตารางแบบมีระเบียบ โดยใช้ตัวสร้างเอกสาร:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการแทรกตารางทํารังโดยใช้ตัวสร้างเอกสาร:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## สร้างตารางผ่านทาง DOM (Document Object Model)

คุณสามารถใส่ตารางโดยตรงลงใน DOM โดยเพิ่มใหม่ [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) โหนดในตําแหน่งที่แน่นอน

โปรดสังเกตว่า ทันทีหลังจากการสร้างโหนดตาราง, ตารางตัวเองจะว่างเปล่าอย่างสมบูรณ์, การแทรกแถวและเซลล์ลงในตาราง เพิ่มที่เหมาะสม [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) ถึง [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) โหนดเด็ก DOM.

{{% alert color="primary" %}}

วิธีการสร้างตารางนี้จะใช้ค่าปริยายของตารางเช่นเดียวกับเมื่อใช้ **DocumentBuilder**.

{{% /alert %}}

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี สร้าง โต๊ะ ใหม่ จาก รอย ขีด โดย เพิ่ม โหนด เด็ก ที่ เหมาะ สม เข้า กับ ต้น เอกสาร:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## สร้างตารางจาก HTML

Aspose.Words รองรับการแทรกเนื้อหาเข้าไปในเอกสารจากแหล่ง HTML โดยใช้ [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) วิธี ค่าที่ป้อนเข้าไปอาจเป็นหน้า HTML เต็ม หรือแค่ชิ้นส่วนบางส่วน

ใช้นี่ **InsertHtml** วิธีการ, ผู้ใช้สามารถแทรกตารางเข้าไปในเอกสารผ่านทางป้ายกํากับของตารางได้ เช่น `<table>`, `<tr>`, `<td>`.

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการแทรกตารางเข้าไปในเอกสารจากข้อความที่มีป้ายกํากับ HTML:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## แทรกสําเนาของตารางที่มีอยู่

บ่อย ครั้ง มี เวลา ที่ คุณ จําเป็น ต้อง สร้าง ตาราง ซึ่ง อาศัย ตาราง ที่ มี อยู่ แล้ว ใน เอกสาร. วิธีที่ง่ายที่สุดที่จะทําซ้ําตารางในขณะที่การฟอร์แมตทั้งหมดคือการโคลนโหนดตารางโดยใช้ [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) วิธี

เทคนิค เดียว กัน นี้ อาจ ใช้ เพื่อ เพิ่ม สําเนา แถว หรือ เซลล์ ที่ มี อยู่ เข้า ไป ใน โต๊ะ.

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีการจําลองตารางโดยใช้ตัวสร้างโหนด:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มตัวอย่างของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโคลนแถวสุดท้ายของตารางและเพิ่มเข้าไปในตาราง:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มตัวอย่างของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

ถ้า คุณ กําลัง ดู เรื่อง การ สร้าง โต๊ะ ใน เอกสาร ซึ่ง มี ประวัติ บันทึก แต่ ละ แผ่น จาก แหล่ง ข้อมูล ของ คุณ อย่าง ไม่ มี การ ควบคุม ก็ จะ ไม่ มี การ แนะ นํา วิธี การ ดัง กล่าว. แทน ที่ จะ เป็น เช่น นั้น การ ส่ง ออก ที่ ต้องการ นั้น ง่าย กว่า โดย การ ใช้ Mail merge กับภูมิภาค คุณสามารถเรียนรู้เกี่ยวกับเทคนิคนี้มากขึ้นใน [Mail Merge ขอสาบานต่อมะลาอิกะฮฺที่จําแนกระหว่างความจริงกับความเท็จ](/words/java/types-of-mail-merge-operations/) ส่วน

## เทียบ วิธี สร้าง โต๊ะ

Aspose.Words ให้หลายวิธีในการสร้างตารางใหม่ในเอกสาร วิธี การ แต่ ละ อย่าง มี ข้อ ดี และ ข้อ เสีย ของ ตน เอง ดัง นั้น การ เลือก วิธี ที่ จะ ใช้ มัก ขึ้น อยู่ กับ สภาพ การณ์ เฉพาะ อย่าง.

ลองมาดูวิธีการสร้างตาราง และเปรียบเทียบข้อดีข้อเสียของพวกเขา

|  วิธีการ | ข้อ ดี |  ข้อ เสีย |
|  :-  |  :-  |  :-  |
| ผ่าน `DocumentBuilder` | วิธีการมาตรฐานในการใส่ตารางและเนื้อหาเอกสารอื่น ๆ | บางครั้งยากที่จะสร้างหลายชนิดของตารางในเวลาเดียวกันกับตัวอย่างก่อสร้างเดียวกัน |
| ผ่าน DOM |  มันเข้ากับรหัสรอบๆ ที่สร้างและแทรกโหนดเข้าไป DOM โดยไม่ต้องใช้ **DocumentBuilder** | ตารางถูกสร้าง "ว่าง": ก่อนที่จะดําเนินการส่วนใหญ่ คุณต้องโทร [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) เพื่อสร้างโหนดเด็กที่หายไป |
| จาก HTML | สร้างตารางใหม่จากแหล่ง HTML โดยใช้ป้ายกํากับเช่น `<table>`, `<tr>`, `<td>` | ไม่ทั้งหมดหรอก Microsoft Word ฟอร์แมตตารางสามารถใช้กับ HTML ได้ |
| กําลังโคลนตารางที่มีอยู่ | คุณสามารถสร้างสําเนาของตารางที่มีอยู่ได้ ในขณะที่ยังเก็บการฟอร์แมตทั้งแถวและเซลล์ได้ | ต้อง เอา โหนด เด็ก ที่ เหมาะ สม ออก ก่อน จะ ใช้ โต๊ะ |
