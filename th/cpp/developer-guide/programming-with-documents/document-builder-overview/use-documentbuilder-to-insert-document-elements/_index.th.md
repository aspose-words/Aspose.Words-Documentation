---
title: ใช้`DocumentBuilder`เพื่อแทรกองค์ประกอบของเอกสาร
second_title: Aspose.WordsสำหรับC++
articleTitle: ใช้`DocumentBuilder`เพื่อแทรกองค์ประกอบของเอกสาร
linktitle: ใช้`DocumentBuilder`เพื่อแทรกองค์ประกอบของเอกสาร
type: docs
description: "แทรกอิลิเมนต์เอกสารโดยใช้ตัวสร้างเอกสารในC++."
weight: 80
url: /th/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

`DocumentBuilder`ถูกใช้เพื่อแก้ไขเอกสาร บทความนี้อธิบายและอธิบายวิธีการดำเนินการจำนวนของงาน:

## การแทรกสตริงข้อความ

เพียงแค่ส่งผ่านสตริงข้อความที่คุณต้องแทรกลงในเอกสารไปยังวิธีการ`DocumentBuilder.Write` การจัดรูปแบบข้อความจะถูกกำหนดโดยคุณสมบัติ`Font` วัตถุนี้มีแอตทริบิวต์แบบอักษรที่แตกต่างกัน(ชื่อแบบอักษรขนาดตัวอักษรสีและอื่นๆ) คุณลักษณะแบบอักษรที่สำคัญบางอย่างจะแสดงด้วยคุณสมบัติDocumentBuilderเพื่อให้คุณสามารถเข้าถึงได้โ เหล่านี้เป็นคุณสมบัติบูลีน`Font.Bold`,`Font.Italic`และ`Font.Underline`.

โปรดทราบว่าการจัดรูปแบบอักขระที่คุณตั้งค่าจะมีผลกับข้อความทั้งหมดที่แทรกจากตำแหน่.

ตัวอย่างด้านล่างแทรกข้อความที่จัดรูปแบบโดยใช้DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## การแทรกย่อหน้า

 `DocumentBuilder.Writeln`แทรกสตริงของข้อความลงในเอกสารเช่นกันแต่นอกจากนี้ยังเพิ่มการแบ่งย่อหน้า การจัดรูปแบบแบบอักษรปัจจุบันจะถูกระบุโดยคุณสมบัติ`DocumentBuilder.Font`และการจัดรูปแบบย่อหน้าปัจจุบันจะถูกกำหนดโดยคุณสมบัติ`DocumentBuilder.ParagraphFormat` ตัวอย่างด้านล่างแสดงวิธีการแทรกย่อหน้าลงในเอกสาร.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## การใส่ตาราง

อัลกอริทึมพื้นฐานสำหรับการสร้างตารางโดยใช้DocumentBuilderเป็นเรื่องง่าย:

1. เริ่มต้นตารางด้วย`DocumentBuilder.StartTable`.
1. แทรกเซลล์โดยใช้`DocumentBuilder.InsertCell` นี้จะเริ่มต้นแถวใหม่โดยอัตโนมัติ ถ้าจำเป็นให้ใช้คุณสมบัติ`DocumentBuilder.CellFormat`เพื่อระบุการจัดรูปแบบเซลล์.
1. แทรกเนื้อหาของเซลล์โดยใช้วิธีการ`DocumentBuilder`.
1. ทำซ้ำขั้นตอน2และ3จนกว่าแถวจะเสร็จสมบูรณ์.
1. โทร`DocumentBuilder.EndRow`เพื่อสิ้นสุดแถวปัจจุบัน หากจำเป็นให้ใช้คุณสมบัติ`DocumentBuilder.RowFormat`เพื่อระบุการจัดรูปแบบแถว.
1. ทำซ้ำขั้นตอน2-5จนกว่าตารางจะเสร็จสมบูรณ์.
1. โทร`DocumentBuilder.EndTable`เพื่อเสร็จสิ้นการสร้างโต๊ะ วิธีการสร้างตารางDocumentBuilderที่เหมาะสมอธิบายไว้ด้านล่าง.

### การเริ่มต้นตาราง

การโทร`DocumentBuilder.StartTable`เป็นขั้นตอนแรกในการสร้างโต๊ะ มารถเรียกภายในเซลล์ซึ่งในกรณีนี้จะเริ่มต้นตารางที่ซ้อนกัน วิธีต่อไปในการโทรคือ`DocumentBuilder.InsertCell`.

### การใส่เซลล์

หลังจากคุณเรียก `DocumentBuilder->InsertCell` แล้ว เซลล์ใหม่จะถูกสร้างขึ้น และเนื้อหาใดๆ ที่คุณเพิ่มโดยใช้เมธอดอื่นของคลาส `DocumentBuilder` จะถูกเพิ่มลงในเซลล์ปัจจุบัน หากต้องการเริ่มเซลล์ใหม่ในแถวเดียวกัน ให้เรียก `DocumentBuilder->InsertCell` อีกครั้ง ใช้คุณสมบัติ `DocumentBuilder.CellFormat` เพื่อระบุการจัดรูปแบบเซลล์ คุณสมบัตินี้จะส่งคืนอ็อบเจ็กต์ `CellFormat` ที่แสดงการจัดรูปแบบทั้งหมดสำหรับเซลล์ตาราง.

### สิ้นสุดแถว

โทร`DocumentBuilder.EndRow`เพื่อจบแถวปัจจุบัน ถ้าคุณโทร`DocumentBuilder->InsertCell`ทันทีหลังจากนั้นตารางจะยังคงอยู่ในแถวใหม่.

ใช้คุณสมบัติ`DocumentBuilder.RowFormat`เพื่อระบุการจัดรูปแบบแถว ออบเจกต์`RowFormat`ที่แสดงการจัดรูปแบบทั้งหมดสำหรับแถวตาราง.

### สิ้นสุดตาราง

โทร`DocumentBuilder.EndTable`เพื่อเสร็จสิ้นตารางปัจจุบัน วิธีนี้ควรจะเรียกว่าเพียงครั้งเดียวหลังจากที่`DocumentBuilder->EndRow`ถูกเรียกว่า เมื่อเรียก`DocumentBuilder.EndTable`เลื่อนเคอร์เซอร์ออกจากเซลล์ปัจจุบันไปยังตำแหน่งหลังจากตาราง ตัวอย่างต่อไปนี้แสดงให้เห็นถึงวิธีการสร้างตารางที่จัดรูปแบบที่มี2แถวและ2คอลัมน์.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## การใส่ตัวหยุดพัก

หากคุณต้องการเริ่มต้นบรรทัดใหม่อย่างชัดเจนย่อหน้าคอลัมน์ส่วนหรือหน้าให้โทร`DocumentBuilder.InsertBreak` ส่งผ่านไปยังวิธีการนี้ชนิดของการหยุดพักที่คุณจำเป็นต้องแทรกที่จะแสดงโดยการแจงนับ`BreakType` ตัวอย่างด้านล่างแสดงวิธีการแทรกตัวแบ่งหน้าในเอกสาร.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## การแทรกรูปภาพ

DocumentBuilderให้การโอเวอร์โหลดหลายวิธีของ`DocumentBuilder->InsertImage`ที่ช่วยให้คุณสามารถแทรกรูปภาพแบบอินไลน์หรือแบบลอ หากรูปภาพเป็นEMFหรือWMFรูปภาพจะถูกแทรกลงในเอกสารในรูปแบบเมไฟล์ รูปภาพอื่นๆทั้งหมดจะถูกเก็บไว้ในรูปแบบPNG วิธีการ`DocumentBuilder->InsertImage`สามารถใช้ภาพจากแหล่งที่มาที่แตกต่างกัน:

- จากแฟ้มหรือ`URL`โดยการส่งผ่านพารามิเตอร์สตริง`DocumentBuilder->InsertImage`.
- จากสตรีมโดยผ่านพารามิเตอร์`Stream``DocumentBuilder->InsertImage`.
- จากอ็อบเจ็กต์รูปภาพโดยการส่งพารามิเตอร์รูปภาพ`DocumentBuilder->InsertImage`.
- จากอาร์เรย์ไบต์โดยผ่านพารามิเตอร์อาร์เรย์ไบต์`DocumentBuilder.InsertImage`สำหรับแต่ละวิธี`DocumentBuilder->InsertImage`มีโอเวอร์โหลดเพิ่มเติมซึ่งช่วยให้คุณสามารถแทรกรูปภาพที่มีตัวเลือกต่อไปนี้:
- อินไลน์หรือลอยตัวในตำแหน่งที่เฉพาะเจาะจงตัวอย่างเช่น`DocumentBuilder->InsertImage`.
- ขนาดเปอร์เซ็นต์หรือขนาดที่กำหนดเองตัวอย่างเช่น`DocumentBuilder.InsertImage` นอกจากนี้วิธีการ`DocumentBuilder->InsertImage`ส่งกลับวัตถุ`Shape`ที่เพิ่งสร้างและแทรกเพื่อให้คุณสามารถปรับเปลี่ยนคุณสมบัติของรูปร่าง.

### การแทรกรูปภาพแบบอินไลน์

ส่งสตริงเดียวที่แสดงถึงไฟล์ที่มีรูปภาพเป็น`DocumentBuilder->InsertImage`เพื่อแทรกรูปภาพลงในเอกสารเป็นกราฟิกแบบอิน ตัวอย่างด้านล่างแสดงวิธีการแทรกรูปภาพแบบอินไลน์ที่ตำแหน่งเคอร์เซอร์ลงในเอกสาร.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### การแทรกรูปภาพแบบลอยตัว(ตำแหน่งที่แน่นอน)

ตัวอย่างนี้แทรกรูปภาพที่ลอยจากแฟ้มหรือ`URL`ที่ตำแหน่งและขนาดที่ระบุ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## การใส่บุ๊กมาร์ก

เมื่อต้องการแทรกบุ๊กมาร์กลงในเอกสาร,คุณควรทำต่อไปนี้:

1. โทร`DocumentBuilder->StartBookmark`ผ่านชื่อที่ต้องการของบุ๊กมาร์ก.
1. แทรกข้อความที่คั่นหน้าด้วยวิธีการDocumentBuilder.
1. โทร`DocumentBuilder.EndBookmark`ผ่านมันชื่อเดียวกันกับที่คุณใช้กับ**DocumentBuilder->StartBookmark**.
1. ที่คั่นหน้าสามารถทับซ้อนกันและขยายช่วงใดๆ ในการสร้างบุ๊กมาร์กที่ถูกต้องคุณต้องโทรหาทั้ง`DocumentBuilder->StartBookmark`และ`DocumentBuilder->EndBookmark`ด้วยชื่อบุ๊กมาร์กเดียวกัน.

{{% alert color="primary" %}}

บุ๊คมาร์คที่เกิดขึ้นไม่ดีหรือบุ๊คมาร์คที่มีชื่อที่ซ้ำกันจะถูกละเว้นเมื่อเอกสารจะถูกบันทึกไว้.

{{% /alert %}}

ตัวอย่างด้านล่างแสดงวิธีการแทรกบุ๊กมาร์กลงในเอกสารโดยใช้ตัวสร้างเอกสาร.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## การแทรกฟิลด์`Form`

เขตข้อมูลฟอร์มเป็นกรณีเฉพาะของเขตข้อมูลคำที่ช่วยให้"โต้ตอบ"กับผู้ใช้ เขตข้อมูลแบบฟอร์มในMicrosoft Wordรวมถึงกล่องกล่องคำสั่งผสมและช่องทำเครื่องหมายDocumentBuilderมีวิธีการพิเศษในการแทรกฟิลด์แบบฟอร์มแต่ละชนิดลงในเอกสาร:`DocumentBuilder.InsertTextInput`,`DocumentBuilder->InsertCheckBox`และ`DocumentBuilder.InsertComboBox` โปรดทราบว่าถ้าคุณระบุชื่อสำหรับฟิลด์ฟอร์มบุ๊กมาร์กจะถูกสร้างขึ้นโดยอัตโนมัติด้วยชื่อเดีย.

### การใส่การป้อนข้อความ

 `DocumentBuilder.InsertTextInput`เพื่อแทรกกล่องข้อความลงในเอกสาร ตัวอย่างด้านล่างแสดงวิธีการแทรกฟิลด์แบบฟอร์มการป้อนข้อความลงในเอกสาร.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### การใส่กล่องกาเครื่องหมาย

โทร`DocumentBuilder.InsertCheckBox`เพื่อแทรกกล่องกาเครื่องหมายลงในเอกสาร ตัวอย่างด้านล่างแสดงวิธีการแทรกช่องฟิลด์แบบฟอร์มลงในเอกสาร.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### การใส่กล่องคำสั่งผสม

โทร`DocumentBuilder.InsertComboBox`เพื่อใส่กล่องคำสั่งผสมลงในเอกสาร ตัวอย่างด้านล่างแสดงวิธีการแทรกกล่องคำสั่งผสมฟิลด์แบบฟอร์มลงในเอกสาร.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## การแทรกโลแคลที่ระดับฟิลด์

ลูกค้าสามารถระบุสถานที่ที่ระดับสนามในขณะนี้และสามารถบรรลุการควบคุมที่ดีขึ้น รหัสโลแคลสามารถเชื่อมโยงกับแต่ละฟิลด์ภายในDocumentBuilder ตัวอย่างด้านล่างแสดงให้เห็นถึงวิธีการใช้ตัวเลือกนี้.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## การแทรกการเชื่อมโยงหลายมิติ

ใช้`DocumentBuilder.InsertHyperlink`เพื่อแทรกการเชื่อมโยงหลายมิติในเอกสาร (URLหรือชื่อของบุ๊กมาร์กภายในเอกสาร)และพารามิเตอร์บูลีนที่ควรเป็นจริงถ้า`URL`เป็นชื่อของบุ๊กมDocumentBuilder.InsertHyperlinkโทรภายใน`DocumentBuilder.InsertField`.วิธีการเพิ่มเครื่องหมายวรรคตอนที่จุดเริ่มต้นและจุดสิ้นสุดของURLเสมอ โปรดทราบว่าคุณต้องระบุการจัดรูปแบบแบบอักษรสำหรับข้อความแสดงการเชื่อมโยงหลายมิติอย่างชัดเจนโดยใช้คุณสมบัติ`Font` ตัวอย่างด้านล่างแทรกการเชื่อมโยงหลายมิติลงในเอกสารโดยใช้DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## การแทรกวัตถุโอเล

ถ้าคุณต้องการเรียกวัตถุโอลิ`DocumentBuilder.InsertOleObject` ส่งผ่านไปยังเมธอดนี้`ProgId`อย่างชัดเจนกับพารามิเตอร์อื่นๆ ตัวอย่างด้านล่างแสดงวิธีการแทรกวัตถุโอเลต์ลงในเอกสาร.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## ตั้งชื่อไฟล์และนามสกุลเมื่อแทรกวัตถุโอเล

OLEแพคเกจเป็นมรดกและ"ไม่มีเอกสาร"วิธีการจัดเก็บวัตถุที่ฝังตัวถ้าOLEตัวจัดการไม่เป็นที่รู้จัก ต้นWindowsรุ่นเช่นWindows3.1,95 และ 98 มีห่อ.การประมวลผลข้อมูล,คีย์ข้อมูล,การพิมพ์ดีดคัดลอก ตอนนี้โปรแกรมนี้ได้รับการยกเว้นจากWindowsแต่MSคำและโปรแกรมอื่นๆยังคงใช้ในการฝังข้อมูลถ้าOLEตัวจัดการหายไปหรือไม่ทราบ OlePackageชั้นช่วยให้สามารถเข้าถึงOLEคุณสมบัติแพคเกจ. ตัวอย่างด้านล่างแสดงวิธีการตั้งค่าชื่อไฟล์นามสกุลและชื่อที่แสดงสำหรับแพคเกจOLE.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## การแทรกHTML

คุณสามารถแทรกสตริงHTMLที่มีส่วนHTMLหรือเอกสารทั้งหมดHTMLลงในเอกสารคำ เพียงแค่ผ่านสตริงนี้ไปยังวิธีการ`DocumentBuilder->InsertHtml` หนึ่งในการใช้งานที่มีประโยชน์ของวิธีนี้คือการจัดเก็บสตริงของHTMLในฐานข้อมูลและแทรกลงในเอกสารระหว่างmail mergeเพื่อรับเนื้อหาที่จัดรูปแบบเพิ่มขึ้นแทนที่จะสร้างโดยใช้วิธีการต่างๆของตัวสร้างเอกสาร ตัวอย่างด้านล่างแสดงแทรกHTMLลงในเอกสารโดยใช้DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## แทรกกฎแนวนอนลงในเอกสาร

เป็นlow codeตัวอย่างแสดงวิธีการแทรกรูปร่างกฎแนวนอนลงในเอกสารโดยใช้วิธีการ`DocumentBuilder->InsertHorizontalRule`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
