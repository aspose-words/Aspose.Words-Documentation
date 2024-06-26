---
title: ภาพรวมของตาราง
second_title: Aspose.Words สําหรับ Java
articleTitle: ภาพรวมของตาราง
linktitle: ภาพรวมของตาราง
description: "ทํางานกับตารางและส่วนประกอบ เช่น เซลล์, แถว, เสาใน Aspose.Words สําหรับ Java. วิธีใช้ตารางใน Java."
type: docs
weight: 10
url: /th/java/table-overview/
---

Aspose.Words เป็นไลบรารีคลาสที่ออกแบบสําหรับการประมวลผลเอกสารในรูปแบบต่าง ๆ – PDF, HTML, ที่แตกต่างกัน Microsoft Word รูปแบบและอื่น ๆ - และรองรับตารางในรูปแบบต่อไปนี้:

* ตารางในเอกสารถูกเก็บไว้ระหว่างการเปิด/ บันทึกและการแปลง
* เป็น ไป ได้ ที่ จะ แก้ไข ตาราง, เนื้อหา, และ รูป แบบ ของ มัน แล้ว ส่ง ออก ไป เป็น แฟ้ม รูป แบบ ที่ สนับสนุน ตาราง

ใน บทความ นี้ เรา จะ เรียน รู้ มาก ขึ้น เกี่ยว กับ โครง สร้าง ของ ตาราง, เซลล์, แถว, และ เสา ที่ ได้ รับ การ สนับสนุน จาก Aspose.Words, และรายละเอียดของการทํางานกับตารางดังกล่าว

## โครงสร้างตาราง

ดัง ที่ กล่าว ไป แล้ว โต๊ะ นี้ ประกอบ ด้วย ธาตุ ต่าง ๆ เช่น **Cell**, **Row** ถึง **Column**. แนว คิด เหล่า นี้ เป็น เรื่อง ธรรมดา สําหรับ ทุก โต๊ะ โดย ทั่ว ไป ไม่ ว่า จะ เป็น แบบ เอกสาร แบบ ใด.

นี่เป็นตัวอย่างของตารางที่พบใน Microsoft Word เอกสาร:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### โหนดของตาราง

ตารางจากเอกสารที่ถูกโหลดมา Aspose.Words ถูกนําเข้ามา **โหนดตาราง**. โต๊ะนี้สามารถพบได้ในฐานะเด็ก

- ข้อความหลัก
- เรื่องราวในบรรทัดเช่น หมายเหตุหรือ หมายเหตุ
- เซลล์เมื่อตารางถูกวางในตารางอื่น

{{% alert color="primary" %}}

โปรด สังเกต ว่า มี การ วาง โต๊ะ ใน โต๊ะ อื่น ๆ เพื่อ ความ ลึก ใด ๆ.

{{% /alert %}}

### เนื้อหาของตาราง

โหนดตารางไม่มีเนื้อหาที่เป็นจริง - แต่จะเป็นภาชนะสําหรับโหนดอื่น ๆ ที่ประกอบเนื้อหา:

- **Table** มีมาก **Row** โหนด ตาราง นี้ จัด ให้ คุณ มี ส่วน ประกอบ โหนด ตาม ปกติ ทั้ง หมด ซึ่ง ทํา ให้ คุณ สามารถ ย้าย, แก้ไข, และ ลบ ตาราง ใน เอกสาร ได้.
- **Row** แสดงแถวตารางเดียว และมันมี **Cell** โหนด อีกอย่างนะ **Row** ให้ สมาชิก ที่ กําหนด วิธี แสดง แถว เช่น ความ สูง และ การ จัด ตําแหน่ง.
- **Cell** นั่นคือสิ่งที่บรรจุ true เนื้อหาที่มองเห็นได้ในตารางและประกอบด้วย **Paragraph** และอีกบล็อกนึง นอก จาก นั้น เซลล์ อาจ มี โต๊ะ ทํา รัง.

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

คุณสามารถตรวจสอบโครงสร้างของโหนดตารางในเอกสารโดยใช้ **DocumentExplorer**.

{{% /alert %}}

### ย่อหน้าว่างหลังตาราง

ภาพ ข้าง บน แสดง ว่า เอกสาร นี้ มี ตาราง สอง แถว ซึ่ง ส่วน ใหญ่ ประกอบ ด้วย สอง เซลล์. แต่ละเซลล์มี paragraphy รวมอยู่ 1 วรรค ซึ่งเป็นคอนเทนเนอร์สําหรับข้อความแบบฟอร์แมตของเซลล์

นับ ว่า คุ้ม ค่า ด้วย ที่ จะ สังเกต ด้วย ว่า การ แยก สอง ตาราง ติด ต่อ กัน ใน เอกสาร เรียก ร้อง อย่าง น้อย หนึ่ง วรรค ว่าง หลัง โต๊ะ. หาก ไม่ มี วรรค ดัง กล่าว จะ มี การ เชื่อม ตาราง ต่อ กัน เป็น หนึ่ง เดียว. พฤติกรรมนี้เหมือนกันทั้งคู่ Microsoft Word ถึง Aspose.Words.

Aspose.Words มีหลายชั้นเรียนที่เกี่ยวข้องกับโต๊ะ [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), และคนอื่นๆ

## ดูด้วย

* [Aspose.Words Document Object Model (DOM)](/words/th/java/aspose-words-document-object-model/)
* [ระดับตรรกะของโหนดในเอกสาร](/words/th/java/logical-levels-of-nodes-in-a-document/)