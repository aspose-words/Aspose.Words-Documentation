---
title: ทำความสะอาดก่อนหรือระหว่างการดำเนินการMail Merge
second_title: Aspose.WordsสำหรับJava
articleTitle: ทำความสะอาดก่อนหรือระหว่างการดำเนินการMail Merge
linktitle: ทำความสะอาดก่อนหรือระหว่างการดำเนินการMail Merge
type: docs
description: "ใช้ตัวเลือกการทำความสะอาดและการลบที่แตกต่างกันเช่นการลบฟิลด์ผสานก่อนดำเนินการดำเนินการMail Mergeหรือลบพื้นที่ที่ไม่ได้ใช้ระหว่างการดำเนินการMail Mergeโดยใช้Java."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /th/java/clean-up-before-or-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsช่วยให้คุณสามารถใช้ตัวเลือกการทำความสะอาดและการลบที่แตกต่างกันเช่นการลบฟิลด์ผสานก่อนที่จะดำเนินการดำเนินการMail Mergeหรือลบพื้นที่ที่ไม่ได้ใช้งานในระหว่างการดำเนินการMail Merge ส่วนนี้จะอธิบายวิธีการลบฟิลด์ที่รวมและวิธีการตั้งค่าตัวเลือกการเอาออก.

## ลบเขตข้อมูลที่ผสาน

เมื่อคุณใช้เทมเพลตที่ยาวบางส่วนที่สร้างขึ้นโดยผู้อื่นคุณอาจต้องการลบฟิลด์ผสานทั้งหมดที่มีอยู่แล้วในเทมเพลตนั้นก่อนดำเนินการดำเนินการMail Merge คุณสามารถใช้วิธีการ[DeleteFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#deleteFields)ถ้าคุณต้องการลบฟิลด์ผสานทั้งหมดออกจากเอกสารโดยไม่ต้องดำเนินการMail Merge เมธอดนี้จะไม่ได้รับผลกระทบจากการลบตัวเลือกใดๆของคุณสมบัติ[CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getCleanupOptions)และดำเนินการดังกล่า.

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีลบฟิลด์ผสานทั้งหมดจากเทมเพลตของคุณโดยไม่ต้องดำเนินการMail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-DeleteFields.java" >}}

## ตั้งค่าตัวเลือก`Removing`

Aspose.Wordsช่วยให้คุณลบฟิลด์ภูมิภาคและย่อหน้าที่ไม่รวมออกจากเทมเพลตระหว่างการดำเนินการMail Mergeโดยใช้ตัวเลือกการลบ.

ใช้คุณสมบัติ**CleanupOptions**พร้อมกับการแจงนับ[MailMergeCleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmergecleanupoptions/)เพื่อตั้งค่าตัวเลือกการลบ ระบุรายการที่คุณต้องการลบโดยการเลือกตัวเลือกต่อไปนี้(คุณสามารถรวมมากกว่าหนึ่ง):

* ลบย่อหน้าว่าง
* ลบพื้นที่ที่ไม่ได้ใช้
* ลบเขตข้อมูลที่ไม่ได้ใช้
* ลบเขตข้อมูลที่มี
* ลบเขตข้อมูลแบบคงที่
* ลบแถวตารางที่ว่างเปล่า

คุณสามารถพิจารณาฟิลด์รวมเป็นไม่รวมในเงื่อนไขใดเงื่อนไขหนึ่งต่อไปนี้:

1. ถ้าฟิลด์ผสานในแหล่งข้อมูลไม่มีคอลัมน์หรือฟิลด์การแม็พ.
2. ถ้าฟิลด์ผสานในแหล่งข้อมูลประกอบด้วยฟิลด์การแม็พแต่ข้อมูลเป็นโมฆะ.

{{% alert color="primary" %}}

ถ้าคุณกำลังรวมข้อมูลโดยใช้แหล่งข้อมูลที่แยกต่างหากแล้วตัวเลือกการลบเหล่านั้นจะถูกเปิดใช้งานเฉพาะกับสายสุดท้ายของMail Mergeดำเนินการวิธี.

{{% /alert %}}

### ลบย่อหน้าว่าง

ย่อหน้าที่มีเฉพาะฟิลด์ผสานจะว่างเปล่าเมื่อกระบวนการMail Mergeนำฟิลด์ผสานทั้งหมดออกเป็นไม่ผ ย่อหน้าว่างเหล่านั้นสามารถเพิ่มพื้นที่ที่ไม่ต้องการและเปลี่ยนวิธีการสร้างรายงานจะมีลักษ คุณอาจเผชิญกับสองสถานการณ์ที่มีย่อหน้าในระหว่างการดำเนินการMail Merge:

1. ฟิลด์Mail Mergeจะถูกรวมเข้ากับข้อมูลที่ว่างเปล่า.
2. ฟิลด์ผสานไม่ได้ใช้และจะถูกลบออก.

ในทั้งสองสถานการณ์ตัวเลือก**RemoveEmptyParagraphs**จะลบย่อหน้าว่างออกจากเอกสารโดยอัตโนมัติ นอกจากนี้ยังจะลบฟิลด์`TableStart`และTableEndผสานถ้าส่วนที่เหลือของย่อหน้าว่างเปล่า.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเอาย่อหน้าว่าง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyParagraphs.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### ลบพื้นที่ที่ไม่ได้ใช้

ในรุ่นก่อนหน้าของAspose.Wordsพื้นที่ว่างMail Mergeจะถูกลบออกจากเอกสารโดยอัตโนมัติในระหว่างการดำเนินการMail Merge กับรุ่นล่าสุดของแอสโปสคำว่างเปล่าMail Mergeภูมิภาคยังคงอยู่หลังจากการดำเนินการMail Mergeโดยค่าเริ่มต้น อย่างไรก็ตามคุณสามารถใช้ตัวเลือก**RemoveUnusedRegions**เพื่อลบพื้นที่Mail Mergeที่ไม่ได้ใช้ระหว่างการดำเนินการMail Merge ตัวอย่างเช่นคุณสามารถผสานเอกสารกับแหล่งข้อมูลที่ว่างเปล่าที่ประกอบด้วยตารางข้อมู.

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเอาพื้นที่ผสานที่ไม่ได้ใช้ออก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnmergedRegions.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**หมายเหตุ**

### ลบเขตข้อมูลที่ไม่ได้ใช้

Aspose.Wordsช่วยให้คุณลบฟิลด์ใดๆที่ไม่ได้ใช้Mail Mergeโดยกำหนด**RemoveUnusedFields**แฟล็กไปยัง**CleanupOptions** ตัวเลือกนี้จะลบฟิลด์ผสานที่ไม่มีข้อมูลที่สอดคล้องกันในแหล่งข้อมูล.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเอาเขตข้อมูลที่ไม่ได้ใช้ผสานออกจากเอกสารโดยอัตโนมัติในระหว่างการดำเนินการMail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnusedFields.java" >}}

### การลบเขตข้อมูลที่มี

ฟิลด์ผสานสามารถมีอยู่ภายในฟิลด์อื่นเช่นฟิลด์**IF**หรือฟิลด์สูตร ลบฟิลด์นี้ด้านนอกเมื่อรวมฟิลด์ผสานหรือลบออกจากเอกสาร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเอาเขตข้อมูลที่ประกอบด้วยเขตข้อมูลผสานจากเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveContainingFields.java" >}}

**หมายเหตุ**

### ลบแถวตารางที่ว่างเปล่า

Aspose.Wordsช่วยให้คุณลบแถวตารางที่ว่างเปล่าโดยการกำหนด**RemoveEmptyTableRows**ธง**CleanupOptions** ตัวเลือกนี้จะลบแถวตารางที่มีเขตข้อมูลผสานที่ว่างเปล่า.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเอาแถวตารางว่างที่มีพื้นที่Mail Mergeออกจากเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyTableRows.java" >}}
