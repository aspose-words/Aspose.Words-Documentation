---
title: การทำงานกับรายการในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับรายการ
linktitle: การทำงานกับรายการ
description: "แนะนำคุณลักษณะการจัดรูปแบบหมายเลขในAspose.WordsสำหรับJava."
type: docs
weight: 200
url: /th/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

รายการในเอกสารMicrosoft Wordคือชุดของคุณสมบัติการจัดรูปแบบรายการ รายการสามารถใช้ในเอกสารของคุณเพื่อจัดรูปแบบจัดเรียงและเน้นข้อความ รายการเป็นวิธีที่ดีในการจัดระเบียบข้อมูลในเอกสารและทำให้ผู้อ่านเข้าใจประเด็นสำคัญ.

แต่ละรายการสามารถมีได้ถึง 9 ระดับและคุณสมบัติการจัดรูปแบบเช่นสไตล์ตัวเลขค่าเริ่มต้น.

บทความนี้อธิบายการทำงานกับรายการโดยใช้Aspose.Words.

## การสร้างรายการโดยใช้การจัดรูปแบบรายการ

Aspose.Wordsช่วยให้การสร้างง่ายของรายการโดยการใช้การจัดรูปแบบรายการ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)ให้คุณ[ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat)ที่ส่งกลับวัตถุ**ListFormat** วัตถุนี้มีหลายวิธีในการเริ่มต้นและสิ้นสุดรายการและการเพิ่ม/ลดการเยื้อง มีสองประเภททั่วไปของรายการในMicrosoft Word:สัญลักษณ์แสดงหัวข้อย่อยและหมายเลข:

- หากต้องการเริ่มรายการที่มีสัญลักษณ์ให้โทร[ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- หากต้องการเริ่มรายการหมายเลขให้โทร[ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

นย่อหน้าปัจจุบันและย่อหน้าต่อไปทั้งหมดที่สร้างขึ้นโดยใช้**DocumentBuilder**จนกระทั่ง[RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers)ถูกเรียกว่าเพื่อหยุดกา.

ในคำเอกสารรายการอาจประกอบด้วยถึงเก้าระดับ การจัดรูปแบบรายการสำหรับแต่ละระดับระบุสิ่งที่กระสุนหรือหมายเลขที่ใช้เยื้องซ้ายช่องว่ เมธอดต่อไปนี้เปลี่ยนระดับรายการและใช้คุณสมบัติการจัดรูปแบบของระดับใหม่:

- หากต้องการเพิ่มระดับรายการของย่อหน้าปัจจุบันโดยหนึ่งระดับให้โทร[ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- หากต้องการลดระดับรายการของย่อหน้าปัจจุบันโดยหนึ่งระดับให้โทร[ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

เมธอดเปลี่ยนระดับรายการและใช้คุณสมบัติการจัดรูปแบบของระดับใหม่.

{{% alert color="primary" %}}

นอกจากนี้คุณยังสามารถใช้คุณสมบัติ[ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber)เพื่อรับหรือตั้งค่าระดับรายการสำหรับย่อหน้า ระดับรายการมีหมายเลข 0 ถึง 8.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างรายการหลายระดับ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## ระบุการจัดรูปแบบสำหรับระดับรายการ

อ็อบเจ็กต์ระดับรายการจะถูกสร้างขึ้นโดยอัตโนมัติเมื่อรายการถูกสร้างขึ้น ใช้คุณสมบัติและเมธอดของคลาสของ[ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/)เพื่อควบคุมการจัดรูปแบบของแต่ละระดับของรายการ.

## รายการรีสตาร์ทสำหรับแต่ละส่วน

คุณสามารถรีสตาร์ทรายการสำหรับแต่ละส่วนโดยใช้คุณสมบัติ[IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) โปรดทราบว่าตัวเลือกนี้ได้รับการสนับสนุนเฉพาะในRTF,DOCและDOCXรูปแบบเอกสาร ตัวเลือกนี้จะถูกเขียนถึงDOCXเฉพาะในกรณีที่OoxmlComplianceสูงกว่าแล้วเอ็กมา 376.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างรายการและเริ่มต้นใหม่สำหรับแต่ละส่วน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

