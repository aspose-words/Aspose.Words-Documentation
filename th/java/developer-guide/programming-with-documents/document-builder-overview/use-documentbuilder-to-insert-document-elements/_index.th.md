---
title: ใช้`DocumentBuilder`เพื่อแทรกองค์ประกอบของเอกสาร
second_title: Aspose.WordsสำหรับJava
articleTitle: ใช้`DocumentBuilder`เพื่อแทรกองค์ประกอบของเอกสาร
linktitle: ใช้`DocumentBuilder`เพื่อแทรกองค์ประกอบของเอกสาร
type: docs
description: "แทรกอิลิเมนต์เอกสารโดยใช้ตัวสร้างเอกสารในJava."
weight: 10
url: /th/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)ถูกใช้เพื่อแก้ไขเอกสาร บทความนี้อธิบายและอธิบายวิธีการดำเนินการจำนวนของงาน.

## การแทรกสตริงข้อความ

เพียงแค่ผ่านสตริงข้อความที่คุณต้องแทรกลงในเอกสารไปยังวิธีการ[DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) การจัดรูปแบบข้อความจะถูกกำหนดโดยคุณสมบัติ`Font` วัตถุนี้มีแอตทริบิวต์แบบอักษรที่แตกต่างกัน(ชื่อแบบอักษรขนาดตัวอักษรสีและอื่นๆ) คุณลักษณะฟอนต์ที่สำคัญบางอย่างจะแสดงด้วยคุณสมบัติ[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)เพื่อให้คุณสามารถเข้าถึงได้โดยต เหล่านี้เป็นคุณสมบัติบูลีน[Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold),[Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic)และ[Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

โปรดทราบว่าการจัดรูปแบบอักขระที่คุณตั้งค่าจะมีผลกับข้อความทั้งหมดที่แทรกจากตำแหน่.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้จะแทรกข้อความที่จัดรูปแบบโดยใช้DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## การแทรกย่อหน้า

DocumentBuilder.เขียนแทรกสตริงของข้อความลงในเอกสารเช่นกันแต่นอกจากนี้จะเพิ่มตัวแบ่งย่อหน้า การฟอร์แมตแบบอักษรปัจจุบันจะถูกระบุโดยDocumentBuildergetFontคุณสมบัติและการจัดรูปแบบย่อหน้าปัจจุบันจะถูกกำหนดโดยDocumentBuildergetParagraphFormatทรัพย์สิน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกย่อหน้าลงในเอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## การใส่ตาราง

อัลกอริทึมพื้นฐานในการสร้างตารางโดยใช้`DocumentBuilder`เป็นเรื่องง่าย:

1. เริ่มต้นตารางด้วย[DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. แทรกเซลล์โดยใช้[DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) นี้จะเริ่มต้นแถวใหม่โดยอัตโนมัติ หากจำเป็นให้ใช้คุณสมบัติ[DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat)เพื่อระบุการจัดรูปแบบเซลล์.
1. แทรกเนื้อหาของเซลล์โดยใช้วิธีการ`DocumentBuilder`.
1. ทำซ้ำขั้นตอนที่ 2 และ 3 จนกว่าแถวจะเสร็จสมบูรณ์.
1. โทร[DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)เพื่อสิ้นสุดแถวปัจจุบัน หากจำเป็นให้ใช้คุณสมบัติ[DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat)เพื่อระบุการจัดรูปแบบแถว.
1. ทำซ้ำขั้นตอนที่ 2-5 จนกว่าตารางจะเสร็จสมบูรณ์.
1. โทร[DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)เพื่อเสร็จสิ้นการสร้างโต๊ะ วิธีการสร้างตารางDocumentBuilderที่เหมาะสมอธิบายไว้ด้านล่าง.

### การเริ่มต้นตาราง

โทรDocumentBuilderstartTableเป็นขั้นตอนแรกในการสร้างโต๊ะ มันสามารถเรียกว่าภายในเซลล์ในกรณีนี้มันเริ่มต้นตารางที่ซ้อนกัน วิธีต่อไปในการโทรคือDocumentBuilderinsertCell.

### การใส่เซลล์

หลังจากที่คุณโทรDocumentBuilderinsertCell,เซลล์ใหม่จะถูกสร้างขึ้นและเนื้อหาใดๆที่คุณเพิ่มโดยใช้วิธีการอื่นๆของชั้นเรียน`DocumentBuilder`จะถูกเพิ่มลงในเซลล์ปัจจุบัน ในการเริ่มเซลล์ใหม่ในแถวเดียวกันให้โทรDocumentBuilderinsertCellอีกครั้ง ใช้DocumentBuildergetCellFormatคุณสมบัติเพื่อระบุการจัดรูปแบบเซลล์ ออบเจกต์[getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/)ที่แสดงการจัดรูปแบบทั้งหมดสำหรับเซลล์ตาราง.

### สิ้นสุดแถว

โทรDocumentBuilder.endRowเพื่อจบแถวปัจจุบัน ถ้าคุณโทรDocumentBuilderinsertCellทันทีหลังจากนั้นตารางยังคงอยู่ในแถวใหม่ ใช้คุณสมบัติ`DocumentBuilder.RowFormat`เพื่อระบุการจัดรูปแบบแถว ออบเจกต์[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/)ที่แสดงการจัดรูปแบบทั้งหมดสำหรับแถวตาราง.

### สิ้นสุดตาราง

โทรDocumentBuilderendTableเพื่อจบตารางปัจจุบัน วิธีนี้ควรจะเรียกว่าเพียงครั้งเดียวหลังจากDocumentBuilderendRowถูกเรียก เมื่อเรียกDocumentBuilderendTableเลื่อนเคอร์เซอร์ออกจากเซลล์ปัจจุบันไปยังตำแหน่งหลังตาราง ตัวอย่างต่อไปนี้แสดงให้เห็นถึงวิธีการสร้างตารางที่จัดรูปแบบที่มี 2 แถวและ 2 คอลัมน์.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## การใส่ตัวหยุดพัก

หากคุณต้องการเริ่มต้นบรรทัดใหม่อย่างชัดเจนย่อหน้าคอลัมน์ส่วนหรือหน้าให้โทรDocumentBuilderinsertBreak. ส่งผ่านไปยังวิธีการนี้ชนิดของการหยุดพักที่คุณจำเป็นต้องแทรกที่จะแสดงโดยการแจงนับ`BreakType`
ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกตัวแบ่งหน้าในเอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## การแทรกรูปภาพ

DocumentBuilderให้การโอเวอร์โหลดหลายวิธีของ[DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte)ที่ช่วยให้คุณสามารถแทรกรูปภาพแบบอินไลน์หรือแบบลอ หากรูปภาพเป็นEMFหรือWMFเมตาไฟล์จะถูกแทรกลงในเอกสารในรูปแบบเมตาไฟล์ ภาพอื่นๆทั้งหมดจะถูกเก็บไว้ในรูปแบบPNG DocumentBuilderinsertImageวิธีการสามารถใช้ภาพจากแหล่งที่มาที่แตกต่างกัน:

- จากแฟ้มหรือ`URL`โดยการส่งผ่านพารามิเตอร์สตริง
- จากสตรีมโดยผ่านพารามิเตอร์`Stream`
- จากอ็อบเจ็กต์รูปภาพโดยผ่านพารามิเตอร์รูปภาพ
- จากอาร์เรย์ไบต์โดยผ่านพารามิเตอร์อาร์เรย์ไบต์
- และอื่นๆ

แต่ละDocumentBuilderinsertImageวิธีการ,มีการโอเวอร์โหลดเพิ่มเติมซึ่งช่วยให้คุณสามารถแทรกภาพที่มีตัวเลือกต่อไปนี้:

- อินไลน์หรือลอยตัวในตำแหน่งที่เฉพาะเจาะจง
- ขนาดเปอร์เซ็นต์หรือขนาดที่กำหนดเอง

นอกจากนี้DocumentBuilderinsertImageวิธีส่งกลับวัตถุ[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)ที่เพิ่งสร้างและแทรกเพื่อให้คุณสามารถปรับเปลี่ยนคุณสมบัติของรูปร่าง.

### การแทรกรูปภาพแบบอินไลน์

ส่งสตริงเดียวที่แสดงถึงไฟล์ที่มีรูปภาพเป็นDocumentBuilderinsertImageเพื่อแทรกรูปภาพลงในเอกสารเป็นกราฟิกแบบอินไลน์ ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกรูปภาพอินไลน์ที่ตำแหน่งเคอร์เซอร์ลงในเอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### การแทรกรูปภาพแบบลอยตัว(ตำแหน่งที่แน่นอน)

ตัวอย่างนี้แทรกรูปภาพที่ลอยจากแฟ้มหรือ`URL`ที่ตำแหน่งและขนาดที่ระบุ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## การใส่บุ๊กมาร์ก

เมื่อต้องการแทรกบุ๊กมาร์กลงในเอกสาร,คุณควรทำต่อไปนี้:

1. โทร[DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String)ผ่านชื่อที่ต้องการของบุ๊กมาร์ก.
1. แทรกข้อความที่คั่นหน้าด้วยวิธีการ`DocumentBuilder`.
1. โทร[DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String)ผ่านมันชื่อเดียวกันกับที่คุณใช้กับDocumentBuilderstartBookmark.

ที่คั่นหน้าสามารถทับซ้อนกันและขยายช่วงใดๆ ในการสร้างบุ๊กมาร์กที่ถูกต้องคุณจะต้องเรียกทั้งสองDocumentBuilderstartBookmarkและDocumentBuilderendBookmarkที่มีชื่อบุ๊กมาร์กเดียวกัน.

บุ๊คมาร์คที่เกิดขึ้นไม่ดีหรือบุ๊คมาร์คที่มีชื่อที่ซ้ำกันจะถูกละเว้นเมื่อเอกสารจะถูกบันทึกไว้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกบุ๊กมาร์กลงในเอกสารโดยใช้โปรแกรมสร้างเอกส.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## การใส่ฟิลด์

ฟิลด์ในMicrosoft Wordเอกสารประกอบด้วยรหัสฟิลด์และผลลัพธ์ฟิลด์ รหัสฟิลด์เป็นเหมือนสูตรและผลลัพธ์ฟิลด์คือค่าที่สูตรผลิต รหัสฟิลด์อาจประกอบด้วยสวิตช์ฟิลด์ที่มีคำแนะนำเพิ่มเติมเพื่อดำเนินการดำเนินการเฉพา คุณสามารถสลับไปมาระหว่างการแสดงรหัสฟิลด์และผลลัพธ์ในเอกสารของคุณในMicrosoft Wordโดยใช้แป้นพิมพ์ลัด+F9 รหัสฟิลด์จะปรากฏระหว่างวงเล็บปีกกา(`{ }`)ใช้[DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean)เพื่อสร้างฟิลด์ในเอกสาร คุณต้องระบุชนิดฟิลด์รหัสฟิลด์และค่าฟิลด์ หากคุณไม่แน่ใจเกี่ยวกับไวยากรณ์รหัสฟิลด์เฉพาะ,สร้างฟิลด์ในMicrosoft Wordก่อนและสลับเพื่อดูรหัสฟิลด์.
ตัวอย่างรหัสต่อไปนี้แทรกฟิลด์ผสานลงในเอกสารโดยใช้DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## การแทรกฟิลด์`Form`

เขตข้อมูลฟอร์มเป็นกรณีเฉพาะของเขตข้อมูลคำที่ช่วยให้"โต้ตอบ"กับผู้ใช้ ฟิลด์แบบฟอร์มในMicrosoft Wordรวมถึงกล่องข้อความComboboxและcheckboxDocumentBuilderมีวิธีการพิเศษในการแทรกฟิลด์แบบฟอร์มแต่ละชนิดลงในเอกสาร:[DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int),[DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int)และ[DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int) โปรดทราบว่าถ้าคุณระบุชื่อสำหรับฟิลด์ฟอร์มบุ๊กมาร์กจะถูกสร้างขึ้นโดยอัตโนมัติด้วยชื่อเดีย.

### การใส่การป้อนข้อความ

DocumentBuilder.insertTextInputเพื่อแทรกกล่องข้อความลงในเอกสาร ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกฟิลด์ฟอร์มการป้อนข้อความลงในเอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### การใส่`CheckBox`

โทรDocumentBuilderinsertCheckBoxเพื่อแทรกcheckboxลงในเอกสาร ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกฟิลด์ฟอร์มcheckboxลงในเอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### การใส่กล่องคำสั่งผสม

โทรDocumentBuilderinsertComboBoxเพื่อใส่กล่องคำสั่งผสมลงในเอกสาร ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกฟิลด์ฟอร์มกล่องคำสั่งผสมลงในเอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## การแทรกโลแคลที่ระดับฟิลด์

ลูกค้าสามารถระบุสถานที่ที่ระดับสนามในขณะนี้และสามารถบรรลุการควบคุมที่ดีขึ้น รหัสโลแคลสามารถเชื่อมโยงกับแต่ละฟิลด์ภายในDocumentBuilder ตัวอย่างด้านล่างแสดงให้เห็นถึงวิธีการใช้ตัวเลือกนี้.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## การแทรกHTML

คุณสามารถแทรกสตริงHTMLที่มีส่วนHTMLหรือเอกสารทั้งหมดHTMLลงในเอกสารคำ เพียงแค่ผ่านสตริงนี้ไปDocumentBuilderinsertHtmlวิธี. หนึ่งในการใช้งานที่มีประโยชน์ของวิธีนี้คือการจัดเก็บสตริงของHTMLในฐานข้อมูลและแทรกลงในเอกสารระหว่างMail Mergeเพื่อรับเนื้อหาที่จัดรูปแบบเพิ่มขึ้นแทนที่จะสร้างโดยใช้วิธีการต่างๆของตัวสร้างเอกสาร ตัวอย่างรหัสต่อไปนี้แสดงแทรกHTMLลงในเอกสารโดยใช้DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## การแทรกการเชื่อมโยงหลายมิติ

ใช้DocumentBuilderinsertHyperlinkเพื่อแทรกการเชื่อมโยงหลายมิติในเอกสาร (URLหรือชื่อของบุ๊กมาร์กภายในเอกสาร)และพารามิเตอร์บูลีนที่ควรเป็นจริงถ้า`URL`เป็นชื่อของบุ๊กมDocumentBuilder.insertHyperlinkภายในโทรDocumentBuilder.insertField. วิธีการเพิ่มเครื่องหมายวรรคตอนที่จุดเริ่มต้นและจุดสิ้นสุดของURLเสมอ โปรดทราบว่าคุณต้องระบุการจัดรูปแบบแบบอักษรสำหรับข้อความแสดงการเชื่อมโยงหลายมิติอย่างชัดเจนโดยใช้คุณสมบัติ`Font` ตัวอย่างรหัสต่อไปนี้แทรกการเชื่อมโยงหลายมิติลงในเอกสารโดยใช้DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## การแทรกสารบัญ

คุณสามารถแทรกฟิลด์`TOC`(สารบัญ)ลงในเอกสารที่ตำแหน่งปัจจุบันโดยการเรียกวิธีการ[DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) DocumentBuilderวิธีinsertTableOfContentsจะแทรกช่องข้อมูล`TOC`ลงในเอกสารเท่านั้น เพื่อที่จะสร้างสารบัญและแสดงตามหมายเลขหน้า,ทั้งสองวิธี**Document.UpdateFields**ต้องเรียกว่าหลังจากการแทรกของฟิลด์. ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกตารางของฟิลด์เนื้อหาลงในเอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## การแทรกวัตถุOle

ถ้าคุณต้องการOleโทรวัตถุ[DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## ตั้งชื่อไฟล์และนามสกุลเมื่อใส่วัตถุOle

OLEแพคเกจเป็นมรดกและ"ไม่มีเอกสาร"วิธีการจัดเก็บวัตถุที่ฝังตัวถ้าไม่เป็นที่รู้จักOLEตัวจัดการ ต้นWindowsรุ่นเช่นWindows 3.1,95 และ 98 มีPackager.exeแอพลิเคชันซึ่งสามารถใช้ในการฝังชนิดของข้อมูลใดๆลงในเอกสาร ตอนนี้,โปรแกรมนี้ถูกแยกออกจากWindowsแต่MSคำและโปรแกรมประยุกต์อื่นๆยังคงใช้มันเพื่อฝังข้อมูลหากOLEตัวจัดการหายไปหรือไม่ทราบ. OlePackageชั้นอนุญาตให้เข้าถึงOLE Packageคุณสมบัติตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าชื่อไฟล์ส่วนขยายและชื่อที่แสดงสำหรับOLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## เข้าถึงข้อมูลดิบของวัตถุOLE

ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นถึงวิธีการรับOLEวัตถุข้อมูลดิบโดยใช้วิธีการ`OleFormat.GetRawData`().

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## แทรกกฎแนวนอนลงในเอกสาร

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกรูปร่างกฎแนวนอนลงในเอกสารโดยใช้วิธีการ`DocumentBuilder.InsertHorizontalRule`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## การทำงานกับรูปร่าง

### การใส่รูปร่างแบบอินไลน์และแบบลอยตัวฟรี

คุณสามารถแทรกรูปร่างแบบอินไลน์ที่มีชนิดและขนาดที่ระบุและรูปร่างแบบลอยตัวได้โดยมีตำแหน่งขนาดและชนิดการตัดข้อความที่ระบุลงในเอกสารโดยใช้วิธีการ`DocumentBuilder.InsertShape` วิธีการ`DocumentBuilder.InsertShape`ช่วยให้แทรกรูปร่างDMLลงในรูปแบบเอกสาร เอกสารต้องถูกบันทึกในรูปแบบที่รองรับDMLรูปร่างมิฉะนั้นโหนดดังกล่าวจะถูกแปลงเป็นVMLรูปร่าง ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกรูปร่างชนิดนี้ลงในเอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### สร้างมุมตัดสี่เหลี่ยมผืนผ้า

คุณสามารถสร้างสี่เหลี่ยมมุมตัดด้วยAspose.Words ประเภทรูปร่างคือSingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, และDiagonalCornersRounded รูปร่างDMLถูกสร้างขึ้นโดยใช้วิธีการ`DocumentBuilder.InsertShape`กับประเภทรูปร่างเหล่านี้ ชนิดเหล่านี้ไม่สามารถใช้เพื่อสร้างVMLรูปร่าง พยายามที่จะสร้างรูปร่างโดยใช้ตัวสร้างสาธารณะของชั้นเรียน"รูปร่าง"ยก"NotSupportedException"ข้อยกเว้น ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกรูปร่างชนิดนี้ลงในเอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### นำเข้ารูปร่างด้วยคณิตศาสตร์XMLเป็นรูปร่างเป็นDOM

คุณสามารถใช้คุณสมบัติ`LoadOptions.ConvertShapeToOfficeMath`เพื่อแปลงรูปร่างด้วยEquationXMLไปยังวัตถุทางคณิตศาสตร์สำนักงาน ค่าเริ่มต้นของคุณสมบัตินี้สอดคล้องกับMSลักษณะการทำงานของคำเช่นรูปร่างที่มีสมการXMLจะไม่.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
