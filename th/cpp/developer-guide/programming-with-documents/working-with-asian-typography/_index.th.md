---
title: พิมพ์เอเชียในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับตัวอักษรเอเชีย
linktitle: การทำงานกับตัวอักษรเอเชีย
description: "ทำงานร่วมกับตัวอักษรเอเชียโดยใช้C++ ปรับช่องว่างระหว่างข้อความเอเชียและภาษาละตินในC++."
type: docs
weight: 240
url: /th/cpp/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

พิมพ์เอเชียเป็นชุดของตัวเลือกสำหรับย่อหน้าข้อความในเอกสารที่เขียนในภาษาเอเชีย.

Aspose.Wordsรองรับการพิมพ์เอเชียโดยใช้ชั้นเรียน[ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/)และบางส่วนของคุณสมบัติของมัน.

## ปรับช่องว่างโดยอัตโนมัติระหว่างข้อความหรือตัวเลขเอเชียและละติน

ลักษณะที่ปรากฏของแม่แบบฟอร์มโดยการควบคุมช่องว่างระหว่างข้อความทั้งสองชนิดคุณส เพื่อให้บรรลุนี้คุณสามารถใช้[AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/)และ[AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/)คุณสมบัติของ`ParagraphFormat`คลาส.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้คุณสมบัติ**AddSpaceBetweenFarEastAndAlpha**และ**AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## ตั้งค่าตัวเลือกแบ่งบรรทัด

แท็บการพิมพ์เอเชียของกล่องโต้ตอบคุณสมบัติย่อหน้าในMicrosoft Wordมีกลุ่มแบ่งบรรทัด ตัวเลือกของกลุ่มนี้สามารถตั้งค่าได้โดยใช้[FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) คุณสมบัติของ**ParagraphFormat**ชั้น.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัติเหล่านี้:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
