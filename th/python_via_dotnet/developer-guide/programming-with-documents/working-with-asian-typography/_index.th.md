---
title: วิชาการพิมพ์เอเชียใน Python
second_title: Aspose.Words สำหรับ Python
articleTitle: การทำงานกับตัวอักษรเอเชีย
linktitle: การทำงานกับตัวอักษรเอเชีย
description: "ทำงานกับการพิมพ์แบบเอเชียโดยใช้ Python ปรับช่องว่างระหว่างข้อความเอเชียและละตินใน Python"
type: docs
weight: 240
url: /th/python-net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Asian Typography คือชุดตัวเลือกสำหรับย่อหน้าข้อความในเอกสารที่เขียนในภาษาเอเชีย

Aspose.Words รองรับ Asian Typography โดยใช้คลาส [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) และคุณสมบัติบางอย่าง

## ปรับช่องว่างระหว่างข้อความหรือตัวเลขเอเชียและละตินโดยอัตโนมัติ

หากคุณกำลังออกแบบเทมเพลตที่มีทั้งข้อความเอเชียตะวันออกและละติน และต้องการปรับปรุงลักษณะที่ปรากฏของเทมเพลตฟอร์มของคุณโดยการควบคุมช่องว่างระหว่างข้อความทั้งสองชนิด คุณสามารถกำหนดค่าเทมเพลตของคุณฟอร์มเพื่อปรับช่องว่างระหว่างข้อความทั้งสองชนิดนี้โดยอัตโนมัติ. เพื่อให้บรรลุเป้าหมายนี้ คุณสามารถใช้คุณสมบัติ [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_alpha/) และ [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_digit/) ของคลาส `ParagraphFormat` ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้คุณสมบัติ **AddSpaceBetweenFarEastAndAlpha** และ **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-SpaceBetweenAsianAndLatinText.py" >}}

## ตั้งค่าตัวเลือกตัวแบ่งบรรทัด

แท็บ Asian Typography ของกล่องโต้ตอบคุณสมบัติย่อหน้าใน Microsoft Word มีกลุ่มตัวแบ่งบรรทัด ตัวเลือกของกลุ่มนี้สามารถตั้งค่าได้โดยใช้คุณสมบัติ [FarEastLineBreakControl](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/far_east_line_break_control/), [WordWrap](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/word_wrap/), [HangingPunctuation](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/hanging_punctuation/) ของคลาส **ParagraphFormat**

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้คุณสมบัติเหล่านี้:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-AsianTypographyLineBreakGroup.py" >}}
