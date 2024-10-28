---
title: การทำงานกับอักขระควบคุม
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับอักขระควบคุม
linktitle: การทำงานกับอักขระควบคุม
description: "รู้เบื้องต้นเกี่ยวกับการทำงานกับตัวควบคุมใน Aspose.WordsสำหรับC++."
type: docs
weight: 400
url: /th/cpp/working-with-control-characters/
---

Microsoft Wordเอกสารอาจประกอบด้วยอักขระต่างๆที่มีความหมายพิเศษ โดยปกติพวกเขาจะใช้สำหรับการจัดรูปแบบวัตถุประสงค์และไม่ได้วาดในโหมดปกติ คุณสามารถทำให้มองเห็นได้ถ้าคุณคลิกปุ่มแสดง/ซ่อนเครื่องหมายการจัดรูปแบบที่อยู่บนแถบ.

บางครั้งคุณอาจต้องเพิ่มหรือลบอักขระไปยัง/จากข้อความ ตัวอย่างเช่นเมื่อได้รับข้อความตามโปรแกรมจากเอกสารAspose.Wordsจะเก็บรักษาอักขระตัวควบคุมส่วนใหญ่ไว้ดังนั้นหากคุณต้องการทำงานกับข้อความนี้คุณควรลบหรือแทนที่อักขระ.

คลาส[ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/)เป็นที่เก็บค่าคงที่ที่แสดงอักขระควบคุมมักพบในเอกสาร มันมีทั้งถ่านและรุ่นสตริงของค่าคงที่เดียวกัน ตัวอย่างเช่นสตริง[LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/)และถ่าน**ControlChar.LineBreakChar**มีค่าเดียวกัน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้อักขระตัวควบคุม:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}