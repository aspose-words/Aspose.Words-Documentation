---
title: การทำงานกับเชิงอรรถและหมายเหตุในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับเชิงอรรถและหมายเหตุ
linktitle: การทำงานกับเชิงอรรถและหมายเหตุ
description: "วิธีการจัดการเชิงอรรถและปลายทางโดยใช้Java."
type: docs
weight: 160
url: /th/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsนอกจากนี้ยังมีบางชั้นเรียน,วิธีการและคุณสมบัติสำหรับการทำงานกับเชิงอรรถและหมายเ.

## แทรกหมายเหตุและตั้งค่าตัวเลือกหมายเลข

หากคุณต้องการแทรกเชิงอรรถหรือปลายหมายเหตุในเอกสารคำโปรดใช้วิธีการ[InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) วิธีนี้แทรกเชิงอรรถหรือปลายหมายเหตุลงในเอกสาร.

ชั้นเรียน[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/)และ[FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/)เป็นตัวแทนของตัวเลือกหมายเลขสำหรับเชิงอรรถและหมายเหตุ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกหมายเหตุลงในเอกสารและตั้งค่าตัวเลือกการกำหน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## จำนวนชุดของคอลัมน์เค้าโครงเชิงอรรถ

คุณสามารถตั้งค่าจำนวนคอลัมน์เค้าโครงเชิงอรรถโดยใช้คุณสมบัติ[Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) หากคุณสมบัตินี้มีค่าเป็น 0 พื้นที่เชิงอรรถจะถูกจัดรูปแบบด้วยจำนวนคอลัมน์ตามจำนวนคอลัมน์.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าจำนวนคอลัมน์สำหรับเค้าโครงเชิงอรรถ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## กำหนดตำแหน่งของเชิงอรรถและEndNote

ตำแหน่งเชิงอรรถสามารถอยู่ที่ด้านล่างของแต่ละหน้าหรือใต้ข้อความในแต่ละหน้า ตำแหน่งท้ายหมายเหตุสามารถที่ส่วนท้ายของส่วนหรือที่ส่วนท้ายของเอกสาร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าตำแหน่งของเชิงอรรถและหมายเหตุ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
