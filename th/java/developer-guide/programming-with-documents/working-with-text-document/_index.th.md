---
title: ทํางานกับเอกสารข้อความใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับเอกสารข้อความ
linktitle: ทํางานกับเอกสารข้อความ
description: "การประมวลผลเอกสารแบบ TXT ขั้นสูง, รายการ, Bidi, header/footer, โดยใช้ Java."
type: docs
weight: 430
url: /th/java/working-with-text-document/
---

ใน บทความ นี้ เรา จะ เรียน รู้ ว่า จะ มี ทาง เลือก อะไร บ้าง ที่ เป็น ประโยชน์ ใน การ ทํา งาน กับ เอกสาร ต่าง ๆ โดย ทาง Aspose.Words. โปรด สังเกต ว่า นี่ ไม่ ใช่ รายการ ทาง เลือก ที่ สมบูรณ์ แบบ แต่ เป็น เพียง ตัว อย่าง ของ การ ทํา งาน ร่วม กับ บาง ทาง.

## เพิ่มการเลือก เครื่องหมาย

คุณสามารถใช้ [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) คุณสมบัติที่จะใช้กําหนดว่าจะให้ทําการเพิ่มจุดสองทิศทางก่อนที่บิดิฟแต่ละตัวจะเรียกใช้ เมื่อมีการส่งออกในรูปแบบข้อความธรรมดาหรือไม่ Aspose.Words แทรกอักขระยูนิโค้ด 'REVE-TO-LEF MAC' (U+2200F) ก่อนที่แต่ละทิศทางจะทํางานเป็นข้อความ ตัวเลือกนี้จะตรงกับตัวเลือก "ทําเครื่องหมายสองทิศทาง" ในกล่องการแปลงแฟ้มแบบ MSS Word เมื่อคุณส่งออกเป็นรูปแบบข้อความธรรมดา โปรด สังเกต ว่า คํา นี้ ปรากฏ ใน กรอบ เฉพาะ ถ้า มี การ เพิ่ม ภาษา อาหรับ หรือ ฮีบรู ใด ๆ ใน ภาษา เอ็ม เอส ดับเบิล ยู.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้ `TxtSaveOptions.AddBidiMarks` ทรัพย์สิน ค่าปริยายของคุณสมบัตินี้ คือ *true*

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## จดจํารายการระหว่างทําการโหลด TXT

Aspose.Words สามารถนําเข้ารายการของแฟ้มข้อความ เป็นหมายเลขรายการ หรือข้อความธรรมดาในโมเดลออบเจกต์ของมัน เดอะ [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) ให้ระบุจํานวนรายการของรายการได้ อย่างไร เมื่อมีการนําเข้าเอกสารจากรูปแบบข้อความธรรมดา:

* หากตั้งค่าตัวเลือกนี้เป็น *true*, ช่องว่างต่าง ๆ ยังถูกใช้เป็นชุดหมายเลขรายการเดลิมิเตอร์: อัลกอริทึมการจดจํารายการสําหรับรูปแบบภาษาอาหรับ (1. 1, 1. 2. 2) ใช้ทั้งช่องว่างและจุด (") สัญลักษณ์
* หากตั้งค่าตัวเลือกนี้เป็น *false*, รายการอัลกอริทึมจดจําตรวจสอบ parts list, เมื่อจํานวนรายการจบด้วย จุด, วงเล็บขวา, หรือสัญลักษณ์กระสุน (เช่น "•", "*", "-" หรือ "o").

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัตินี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## การจัดการตะกั่วและเส้นทางพื้นที่ระหว่างการโหลด TXT

คุณสามารถควบคุมวิธีการจัดการการนําและปฏิบัติตามช่องว่าง ระหว่างการโหลดแฟ้ม TXT พื้น ที่ ส่วน นํา อาจ ถูก ตัด, เก็บ รักษา ไว้, หรือ เปลี่ยน เป็น ที่ ว่าง ที่ ไม่ แน่นอน และ ตรง ต่อ เวลา อาจ ตัด หรือ เก็บ รักษา ไว้ ได้.

ตัวอย่างโค้ดที่ให้ด้านล่างนี้ แสดงวิธีตัดส่วนนําและต่อท้ายช่องว่างระหว่างการนําเข้าแฟ้ม TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## ตรวจหาเอกสาร ทิศทางข้อความ

Aspose.Words ให้ [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) คุณสมบัติใน [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) คลาสตรวจสอบทิศทางข้อความ (RTL / LTR) ในเอกสาร ชุดคุณสมบัตินี้ หรือได้รับข้อความเอกสารที่แสดงใน [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) การเผาศพ ค่าปริยายที่เหลืออยู่ทางด้านขวา

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการตรวจสอบข้อความของเอกสาร ขณะนําเข้าแฟ้ม TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## ส่งออกส่วนหัวและท้ายกระดาษในรูปแบบแฟ้ม TXT ออกทางอีเมล

หากคุณต้องการส่งออกส่วนหัวและท้ายกระดาษในเอกสาร TXT ที่ส่งออก คุณสามารถใช้ [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) ทรัพย์สิน คุณสมบัตินี้ใช้กําหนดวิธีส่งส่วนหัวและท้ายกระดาษไปยังรูปแบบข้อความธรรมดา

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีส่งออกหัวจดหมายและท้ายกระดาษเป็นรูปแบบข้อความธรรมดา:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## ส่งออกรายการการเยื้องระยะในการส่งออก TXT

Aspose.Words แนะนํา [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) คลาสที่อนุญาตให้ระบุระดับรายการได้ โดยมีการส่งออกเป็นรูปแบบข้อความธรรมดา ในขณะที่ทํางานกับ [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), คือ [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) ให้กําหนดอักขระที่จะใช้สําหรับระดับการเยื้องของรายการ และนับจํานวนจํานวนตัวอักษรที่จะใช้เป็นระยะเยื้องต่อระดับ 1 รายการ

ค่าปริยายสําหรับคุณสมบัติของอักขระคือ '/ 0' แสดงให้เห็นว่าไม่มีระยะเยื้อง สําหรับคุณสมบัติการนับ ค่าปริยายจะเป็น 0 ซึ่งหมายความว่าไม่มีระยะเยื้อง

### ใช้อักขระแท็บ

ตัวอย่างรหัสต่อไปนี้ จะแสดงถึงวิธีส่งออกระดับรายการโดยใช้อักขระแท็บ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### ใช้อักขระอวกาศ

ตัวอย่างรหัสต่อไปนี้ จะแสดงถึงวิธีส่งออกระดับรายการโดยใช้อักขระ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### ใช้การเยื้องระยะปริยาย

ตัวอย่างโค้ดต่อไปนี้ จะแสดงถึงวิธีส่งออกระดับรายการโดยใช้ระยะเยื้องปริยาย:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
