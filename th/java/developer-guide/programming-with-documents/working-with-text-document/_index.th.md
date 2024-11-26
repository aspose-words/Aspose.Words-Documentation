---
title: การทำงานกับเอกสารข้อความในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับเอกสารข้อความ
linktitle: การทำงานกับเอกสารข้อความ
description: "ขั้นสูงTXTการประมวลผลเอกสาร,รายการ,BiDi,ส่วนหัว/ส่วนท้าย,โดยใช้Java."
type: docs
weight: 430
url: /th/java/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

ในบทความนี้เราจะเรียนรู้ว่าตัวเลือกใดจะมีประโยชน์สำหรับการทำงานกับเอกสารข้อความผ่านAspose.Words โปรดทราบว่านี้ไม่ได้เป็นรายการที่สมบูรณ์ของตัวเลือกที่มีอยู่แต่เพียงตัวอย่างของการทำง.

## เพิ่มเครื่องหมายสองทิศทาง

คุณสามารถใช้คุณสมบัติ[AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks)เพื่อระบุว่าจะเพิ่มเครื่องหมายสองทิศทางก่อนที่แต่ละรายการBiDiจะรัน Aspose.Wordsแทรกอักขระยูนิโค้ด'RIGHT-TO-LEFT MARK' (ยู+200 ฟุต)ก่อนที่จะทำงานในแต่ละสองทิศทางในข้อความ ตัวเลือกนี้สอดคล้องกับตัวเลือก"เพิ่มเครื่องหมายสองทิศทาง"ในกล่องโต้ตอบการแปลงไฟล์MSคำเมื่อคุณส่งออกไปยังรูปแบบข้อความธรรมดา โปรดทราบว่าปรากฏในกล่องโต้ตอบก็ต่อเมื่อมีการเพิ่มภาษาการแก้ไขภาษาอาหรับหรือภาษาฮิบรูในคำMS.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้คุณสมบัติ`TxtSaveOptions.AddBidiMarks` ค่าดีฟอลต์ของคุณสมบัตินี้คือ*true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## รู้จักรายการในระหว่างการโหลดTXT

Aspose.Wordsสามารถนำเข้ารายการของไฟล์ข้อความเป็นหมายเลขรายการหรือข้อความธรรมดาใน คุณสมบัติ[DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces)อนุญาตให้ระบุวิธีการจดจำรายการที่มีหมายเลขเมื่อเอกสารถูกนำเข้าจากรูปแบบข้อความธรรมดา:

* หากตั้งค่าตัวเลือกนี้เป็น*true*ช่องว่างจะถูกใช้เป็นตัวคั่นหมายเลขรายการด้วย:อัลกอริทึมการรู้จำรายการสำหรับหมายเลขสไตล์อาหรับ(1., 1.1.2.)ใช้ทั้งช่องว่างและจุด(".")สัญลักษณ์.
* หากตั้งค่าตัวเลือกนี้เป็น*false*อัลกอริทึมการรับรู้รายการจะตรวจจับย่อหน้าของรายการเมื่อหมายเลขรายการจบลงด้วยจุดใดจุดวงเล็บด้านขวาหรือสัญลักษณ์แสดงหัวข้อย่อย(เช่น"•", "*", "-" หรือ"o").

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้คุณสมบัตินี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## จัดการช่องว่างชั้นนำและต่อท้ายระหว่างการโหลดTXT

คุณสามารถควบคุมวิธีการจัดการช่องว่างชั้นนำและต่อท้ายระหว่างการโหลดไฟล์TXT พื้นที่ชั้นนำสามารถตัด,เก็บรักษาหรือแปลงเป็นเยื้องและช่องว่างต่อท้ายสามารถตัดหรือเก็บรักษาไว้.

ตัวอย่างโค้ดที่ระบุไว้ด้านล่างจะแสดงวิธีการตัดแต่งช่องว่างชั้นนำและต่อท้ายขณะนำเข้าไฟล์TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## ตรวจสอบทิศทางข้อความเอกสาร

Aspose.Wordsให้[DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection)คุณสมบัติใน[TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/)ชั้นในการตรวจสอบทิศทางข้อความ(RTL/LTR)ในเอกสาร คุณสมบัตินี้ตั้งค่าหรือได้รับทิศทางข้อความเอกสารที่ให้ไว้ในการแจงนับ[DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) ค่าดีฟอลต์อยู่ทางซ้ายไปขวา.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตรวจหาทิศทางข้อความของเอกสารขณะนำเข้าแฟ้มTXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## ส่งออกส่วนหัวและส่วนท้ายในการส่งออกTXTไฟล์

ถ้าคุณต้องการส่งออกส่วนหัวและท้ายกระดาษในเอกสารออกTXTคุณสามารถใช้คุณสมบัติ[ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) คุณสมบัตินี้ระบุวิธีเอ็กซ์พอร์ตส่วนหัวและท้ายกระดาษไปยังรูปแบบข้อความธรรมดา.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการส่งออกส่วนหัวและท้ายกระดาษไปยังรูปแบบข้อความล้วน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## การเยื้องรายการส่งออกในผลลัพธ์TXT

Aspose.Wordsแนะนำ[TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/)ชั้นที่ช่วยให้ระบุว่าระดับรายการจะเยื้องในขณะที่ส่งออกไปยังรูปแบบข้อความล ขณะทำงานกับ[TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/)คุณสมบัติ[ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation)จะถูกจัดเตรียมไว้เพื่อระบุอักขระที่จะใช้สำหรับการเยื้องระดับร.

ค่าดีฟอลต์สำหรับคุณสมบัติอักขระคือ'\0'แสดงว่าไม่มีการเยื้อง สำหรับคุณสมบัติการนับค่าดีฟอลต์คือ 0 ซึ่งหมายความว่าไม่มีการเยื้อง.

### ใช้อักขระแท็บ

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการส่งออกระดับรายการโดยใช้อักขระแท็บ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### ใช้อักขระพื้นที่

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการส่งออกระดับรายการโดยใช้อักขระพื้นที่:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### การใช้การเยื้องปริยาย

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการส่งออกระดับรายการโดยใช้การเยื้องเริ่มต้น:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
