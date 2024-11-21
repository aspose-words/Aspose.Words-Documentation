---
title: การทำงานกับเอกสารข้อความใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับเอกสารข้อความ
linktitle: การทำงานกับเอกสารข้อความ
description: "การประมวลผลเอกสาร TXT ขั้นสูง รายการ BiDi ส่วนหัว/ส่วนท้าย โดยใช้ C#"
type: docs
weight: 430
url: /th/net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

ในบทความนี้ เราจะเรียนรู้ว่าตัวเลือกใดบ้างที่มีประโยชน์สำหรับการทำงานกับเอกสารข้อความผ่าน Aspose.Words โปรดทราบว่านี่ไม่ใช่รายการตัวเลือกทั้งหมดที่มีอยู่ แต่เป็นเพียงตัวอย่างการทำงานกับตัวเลือกบางส่วนเท่านั้น

## เพิ่มเครื่องหมายสองทิศทาง

คุณสามารถใช้คุณสมบัติ [AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/) เพื่อระบุว่าจะเพิ่มเครื่องหมายสองทิศทางก่อนที่จะรัน BiDi แต่ละรายการหรือไม่ เมื่อส่งออกในรูปแบบข้อความธรรมดา Aspose.Words แทรกอักขระ Unicode 'เครื่องหมายจากขวาไปซ้าย' (U+200F) ก่อนการเรียกใช้แบบสองทิศทางแต่ละครั้งในข้อความ ตัวเลือกนี้สอดคล้องกับตัวเลือก "เพิ่มเครื่องหมายสองทิศทาง" ในกล่องโต้ตอบการแปลงไฟล์ MS Word เมื่อคุณส่งออกเป็นรูปแบบข้อความธรรมดา โปรดทราบว่าจะปรากฏในกล่องโต้ตอบเฉพาะเมื่อมีการเพิ่มภาษาแก้ไขภาษาอาหรับหรือฮีบรูใน MS Word เท่านั้น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้คุณสมบัติ **AddBidiMarks** ค่าเริ่มต้นของคุณสมบัตินี้คือ *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## รับรู้รายการระหว่างการโหลด TXT

Aspose.Words สามารถนำเข้ารายการของไฟล์ข้อความเป็นหมายเลขรายการหรือข้อความธรรมดาในรูปแบบออบเจ็กต์เอกสาร คุณสมบัติ [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) ช่วยให้ระบุวิธีการรับรู้รายการลำดับเลขเมื่อนำเข้าเอกสารจากรูปแบบข้อความธรรมดา:

* หากตั้งค่าตัวเลือกนี้เป็น *true* ช่องว่างจะถูกใช้เป็นตัวคั่นหมายเลขรายการด้วย: อัลกอริธึมการรู้จำรายการสำหรับการกำหนดหมายเลขสไตล์อารบิก (1., 1.1.2.) จะใช้ทั้งสัญลักษณ์ช่องว่างและจุด ("")

* หากตั้งค่าตัวเลือกนี้เป็น *false* อัลกอริธึมการรู้จำรายการจะตรวจจับย่อหน้าของรายการ เมื่อหมายเลขรายการลงท้ายด้วยจุด วงเล็บเหลี่ยมขวา หรือสัญลักษณ์สัญลักษณ์หัวข้อย่อย (เช่น "•", "*", "-" หรือ "o")

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัตินี้:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## จัดการช่องว่างนำหน้าและต่อท้ายระหว่างการโหลด TXT

คุณสามารถควบคุมวิธีการจัดการช่องว่างนำหน้าและต่อท้ายระหว่างการโหลดไฟล์ TXT ช่องว่างนำหน้าสามารถตัดแต่ง เก็บรักษา หรือแปลงเป็นการเยื้อง และช่องว่างต่อท้ายสามารถตัดแต่งหรือเก็บรักษาไว้ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีตัดช่องว่างนำหน้าและต่อท้ายขณะนำเข้าไฟล์ TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## ตรวจจับทิศทางข้อความของเอกสาร

Aspose.Words จัดเตรียมคุณสมบัติ [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) ในคลาส [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) เพื่อตรวจจับทิศทางของข้อความ (RTL / LTR) ในเอกสาร คุณสมบัตินี้ตั้งค่าหรือรับทิศทางข้อความเอกสารที่ระบุในการแจงนับ [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/) ค่าเริ่มต้นจะเหลืออยู่ที่ *right*

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตรวจสอบทิศทางข้อความของเอกสารขณะนำเข้าไฟล์ TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## ส่งออกส่วนหัวและส่วนท้ายในเอาต์พุต TXT

หากคุณต้องการส่งออกส่วนหัวและส่วนท้ายในเอกสาร TXT เอาต์พุต คุณสามารถใช้คุณสมบัติ [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/) ได้ คุณสมบัตินี้ระบุวิธีการส่งออกส่วนหัวและส่วนท้ายเป็นรูปแบบข้อความธรรมดา

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการส่งออกส่วนหัวและส่วนท้ายเป็นรูปแบบข้อความธรรมดา:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## ส่งออกการเยื้องรายการในเอาต์พุต TXT

Aspose.Words เปิดตัวคลาส [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/) ที่ช่วยให้ระบุวิธีการเยื้องระดับรายการขณะส่งออกเป็นรูปแบบข้อความธรรมดา ในขณะที่ทำงานกับ [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/) คุณสมบัติ [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/) มีไว้เพื่อระบุอักขระที่จะใช้สำหรับการเยื้องระดับรายการและการนับโดยระบุจำนวนอักขระที่จะใช้เป็นการเยื้องต่อหนึ่งระดับรายการ

ค่าเริ่มต้นสำหรับคุณสมบัติอักขระคือ '\0' ซึ่งบ่งชี้ว่าไม่มีการเยื้อง สำหรับคุณสมบัติการนับ ค่าเริ่มต้นคือ 0 ซึ่งหมายถึงไม่มีการเยื้อง

### การใช้อักขระแท็บ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการส่งออกระดับรายการโดยใช้อักขระแท็บ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### การใช้อักขระอวกาศ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการส่งออกระดับรายการโดยใช้อักขระเว้นวรรค:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### การใช้การเยื้องเริ่มต้น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการส่งออกระดับรายการโดยใช้การเยื้องเริ่มต้น:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
