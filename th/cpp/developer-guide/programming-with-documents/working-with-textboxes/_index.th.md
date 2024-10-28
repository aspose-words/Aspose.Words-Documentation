---
title: การทำงานกับTextBoxesในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับTextBoxes
linktitle: การทำงานกับTextBoxes
description: "รู้เบื้องต้นเกี่ยวกับกล่องข้อความที่เชื่อมโยงคุณลักษณะใน Aspose.WordsสำหรับC++."
type: docs
weight: 250
url: /th/cpp/working-with-textboxes/
---

ในAspose.Wordsคลาส[TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/)จะใช้เพื่อระบุวิธีแสดงข้อความภายในรูปร่าง มันแสดงคุณสมบัติสาธารณะที่มีชื่อ**Parent**ที่จะได้รับรูปร่างแม่สำหรับกล่องข้อความเพื่อให้ลูกค้าสามารถหาที่เชื่อมโยง[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)จากที่เกี่ยวข้อง**TextBox**.

## สร้างลิงก์

**TextBox**ชั้นมีวิธีการ[IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/)เพื่อตรวจสอบว่า**TextBox**สามารถเชื่อมโยงกับเป้าหมาย**Textbox**.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตรวจสอบว่า`TextBox`สามารถเชื่อมโยงไปยังกล่องข้อความเป้าห:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## ตรวจสอบTextBoxลำดับ

มีหลายวิธีในการแสดงข้อความในรูปร่าง [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/)อาจเป็นหัวกลางหรือหางของลำดับ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตรวจสอบว่า**TextBox**เป็นหัวหางหรือตรงกลางของลำดับ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## แบ่งการเชื่อมโยง

โดยใช้วิธีการ[BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/)คุณสามารถแบ่งการเชื่อมโยงไปยัง**TextBox**ต่อไป.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแบ่งการเชื่อมโยงสำหรับ**TextBox**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
