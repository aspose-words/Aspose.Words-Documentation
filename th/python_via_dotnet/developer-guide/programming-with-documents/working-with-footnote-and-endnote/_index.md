---
title: การทำงานกับเชิงอรรถและอ้างอิงท้ายเรื่อง
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับเชิงอรรถและอ้างอิงท้ายเรื่อง
linktitle: การทำงานกับเชิงอรรถและอ้างอิงท้ายเรื่อง
description: "แทรก ffotnotes หรืออ้างอิงท้ายเรื่องลงในเอกสารและระบุตัวเลือกโดยใช้ Python"
type: docs
weight: 160
url: /th/python-net/working-with-footnote-and-endnote/
---

Aspose.Words ยังมีคลาส วิธีการ และคุณสมบัติบางอย่างสำหรับการทำงานกับเชิงอรรถและอ้างอิงท้ายเรื่อง

## แทรกอ้างอิงท้ายเรื่องและตั้งค่าตัวเลือกการกำหนดหมายเลข

หากคุณต้องการแทรกเชิงอรรถหรืออ้างอิงท้ายเรื่องในเอกสาร Word โปรดใช้วิธี [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/) วิธีการนี้จะแทรกเชิงอรรถหรืออ้างอิงท้ายเรื่องลงในเอกสาร

คลาส [EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) และ [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) แสดงถึงตัวเลือกการกำหนดหมายเลขสำหรับเชิงอรรถและอ้างอิงท้ายเรื่อง

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกอ้างอิงท้ายเรื่องลงในเอกสารและตั้งค่าตัวเลือกการกำหนดหมายเลข:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## กำหนดจำนวนคอลัมน์เค้าโครงเชิงอรรถ

คุณสามารถกำหนดจำนวนคอลัมน์เค้าโครงเชิงอรรถได้โดยใช้คุณสมบัติ [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/) หากคุณสมบัตินี้มีค่าเป็น 0 พื้นที่เชิงอรรถจะถูกจัดรูปแบบด้วยจำนวนคอลัมน์ตามจำนวนคอลัมน์บนเพจที่แสดง

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าจำนวนคอลัมน์สำหรับเค้าโครงเชิงอรรถ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## กำหนดตำแหน่งของเชิงอรรถและ EndNote

ตำแหน่งเชิงอรรถอาจอยู่ที่ด้านล่างของแต่ละหน้าหรือใต้ข้อความในแต่ละหน้า ตำแหน่งอ้างอิงท้ายเรื่องอาจอยู่ที่ส่วนท้ายของส่วนหรือส่วนท้ายของเอกสารก็ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าตำแหน่งของเชิงอรรถและอ้างอิงท้ายเรื่อง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
