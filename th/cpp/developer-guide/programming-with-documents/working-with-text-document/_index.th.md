---
title: การทำงานกับเอกสารข้อความในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับเอกสารข้อความ
linktitle: การทำงานกับเอกสารข้อความ
description: "ขั้นสูงTXTการประมวลผลเอกสาร,รายการ,BiDi,ส่วนหัว/ส่วนท้าย,โดยใช้C++."
type: docs
weight: 430
url: /th/cpp/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

ในบทความนี้เราจะเรียนรู้ว่าตัวเลือกใดจะมีประโยชน์สำหรับการทำงานกับเอกสารข้อความผ่านAspose.Words โปรดทราบว่านี้ไม่ได้เป็นรายการที่สมบูรณ์ของตัวเลือกที่มีอยู่แต่เพียงตัวอย่างของการทำง.

## เพิ่มเครื่องหมายสองทิศทาง

คุณสามารถใช้คุณสมบัติ[AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/)เพื่อระบุว่าจะเพิ่มเครื่องหมายสองทิศทางก่อนที่แต่ละรายการBiDiรัน Aspose.Wordsแทรกอักขระยูนิโค้ด'RIGHT-TO-LEFT MARK' (200)ก่อนที่จะทำงานในแต่ละสองทิศทางในข้อความ ตัวเลือกนี้สอดคล้องกับตัวเลือก"เพิ่มเครื่องหมายสองทิศทาง"ในกล่องโต้ตอบการแปลงไฟล์MSคำเมื่อคุณส่งออกไปยังรูปแบบข้อความธรรมดา โปรดทราบว่าปรากฏในกล่องโต้ตอบก็ต่อเมื่อมีการเพิ่มภาษาการแก้ไขภาษาอาหรับหรือภาษาฮิบรูในคำMS.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้คุณสมบัติ**AddBidiMarks** ค่าดีฟอลต์ของคุณสมบัตินี้คือ*false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## รู้จักรายการในระหว่างการโหลดTXT

Aspose.Wordsสามารถนำเข้ารายการของไฟล์ข้อความเป็นหมายเลขรายการหรือข้อความธรรมดาใน คุณสมบัติ[DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/)อนุญาตให้ระบุวิธีการจดจำรายการที่มีหมายเลขเมื่อเอกสารถูกนำเข้าจากรูปแบบข้อความธรรมดา:

* หากตั้งค่าตัวเลือกนี้เป็น*true* ช่องว่างจะถูกใช้เป็นตัวคั่นหมายเลขรายการด้วย:อัลกอริทึมการรู้จำรายการสำหรับหมายเลขสไตล์อาหรับ(1, 1.1.2.)ใช้ทั้งช่องว่างและจุด(".")สัญลักษณ์.
* หากตั้งค่าตัวเลือกนี้เป็น*false*อัลกอริทึมการจดจำจะตรวจจับย่อหน้าของรายการเมื่อหมายเลขรายการจบลงด้วยจุดใดจุดวงเล็บด้านขวาหรือสัญลักษณ์แสดงหัวข้อย่อย(เช่น"•", "*", "-" หรือ"o").

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้คุณสมบัตินี้:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## วิธีการจัดการช่องว่างชั้นนำและต่อท้ายระหว่างการโหลดTXT

คุณสามารถควบคุมวิธีการจัดการช่องว่างชั้นนำและต่อท้ายระหว่างการโหลดไฟล์TXT พื้นที่ชั้นนำสามารถตัด,เก็บรักษาหรือแปลงเป็นเยื้องและช่องว่างต่อท้ายสามารถตัดหรือเก็บรักษาไว้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตัดแต่งช่องว่างชั้นนำและต่อท้ายขณะนำเข้าไฟล์TXT:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## ส่งออกส่วนหัวและส่วนท้ายในการส่งออกTXT

ถ้าคุณต้องการส่งออกส่วนหัวและส่วนท้ายในเอกสารออกTXTคุณสามารถใช้คุณสมบัติ[ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/) คุณสมบัตินี้ระบุวิธีเอ็กซ์พอร์ตส่วนหัวและท้ายกระดาษไปยังรูปแบบข้อความธรรมดา.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการส่งออกส่วนหัวและท้ายกระดาษไปยังรูปแบบข้อความล้วน:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## การเยื้องรายการส่งออกในผลลัพธ์TXT

Aspose.Wordsแนะนำ[TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/)คลาสที่อนุญาตให้ระบุว่าระดับรายการจะเยื้องในขณะที่ส่งออกไปยังรูปแบบข้อค ขณะทำงานกับ[TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/)คุณสมบัติ[ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/)จะถูกจัดเตรียมไว้เพื่อระบุอักขระที่จะใช้สำหรับการเยื้องระดับร.

ค่าดีฟอลต์สำหรับคุณสมบัติอักขระคือ'\0'แสดงว่าไม่มีการเยื้อง สำหรับคุณสมบัติการนับค่าดีฟอลต์คือ0ซึ่งหมายความว่าไม่มีการเยื้อง.

### ใช้อักขระแท็บ

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการส่งออกระดับรายการโดยใช้อักขระแท็บ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### ใช้อักขระพื้นที่

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการส่งออกระดับรายการโดยใช้อักขระพื้นที่:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### การใช้การเยื้องปริยาย

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการส่งออกระดับรายการโดยใช้การเยื้องเริ่มต้น:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
