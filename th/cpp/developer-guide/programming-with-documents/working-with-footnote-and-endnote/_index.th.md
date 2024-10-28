---
title: การทำงานกับเชิงอรรถและหมายเหตุในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับเชิงอรรถและหมายเหตุ
linktitle: การทำงานกับเชิงอรรถและหมายเหตุ
description: "วิธีการจัดการเชิงอรรถและปลายทางโดยใช้C++."
type: docs
weight: 160
url: /th/cpp/working-with-footnote-and-endnote/
---

Aspose.Wordsนอกจากนี้ยังมีบางชั้นเรียน,วิธีการและคุณสมบัติสำหรับการทำงานกับเชิงอรรถและหมายเ.

## แทรกหมายเหตุและตั้งค่าตัวเลือกหมายเลข

หากคุณต้องการแทรกเชิงอรรถหรือปลายหมายเหตุในเอกสารคำโปรดใช้วิธีการ[InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/) วิธีนี้แทรกเชิงอรรถหรือปลายหมายเหตุลงในเอกสาร.

ชั้นเรียน[EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/)และ[FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/)เป็นตัวแทนของตัวเลือกหมายเลขสำหรับเชิงอรรถและหมายเหตุ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกหมายเหตุลงในเอกสารและตั้งค่าตัวเลือกการกำหน:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## จำนวนชุดของคอลัมน์เค้าโครงเชิงอรรถ

คุณสามารถตั้งค่าจำนวนคอลัมน์เค้าโครงเชิงอรรถโดยใช้คุณสมบัติ[Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/) หากคุณสมบัตินี้มีค่าเป็น0พื้นที่เชิงอรรถจะถูกจัดรูปแบบด้วยจำนวนคอลัมน์ตามจำนวนคอลัมน์.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าจำนวนคอลัมน์สำหรับเค้าโครงเชิงอรรถ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## กำหนดตำแหน่งของเชิงอรรถและEndNote

ตำแหน่งเชิงอรรถสามารถอยู่ที่ด้านล่างของแต่ละหน้าหรือใต้ข้อความในแต่ละหน้า ตำแหน่งท้ายหมายเหตุสามารถที่ส่วนท้ายของส่วนหรือที่ส่วนท้ายของเอกสาร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าตำแหน่งของเชิงอรรถและหมายเหตุ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
