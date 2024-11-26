---
title: การทำงานกับอักขระควบคุม
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับอักขระควบคุม
linktitle: การทำงานกับอักขระควบคุม
description: "ข้อมูลเบื้องต้นเกี่ยวกับการทำงานกับอักขระควบคุมใน Aspose.Words สำหรับ Python"
type: docs
weight: 400
url: /th/python-net/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

เอกสาร Microsoft Word อาจมีอักขระหลายตัวที่มีความหมายพิเศษ โดยปกติจะใช้เพื่อจุดประสงค์ในการจัดรูปแบบและไม่ได้วาดในโหมดปกติ คุณสามารถทำให้มองเห็นได้หากคุณคลิกปุ่มแสดง/ซ่อนเครื่องหมายการจัดรูปแบบที่อยู่บนแถบเครื่องมือมาตรฐาน

บางครั้งคุณอาจต้องเพิ่มหรือลบอักขระเข้า/ออกจากข้อความ ตัวอย่างเช่น เมื่อรับข้อความโดยทางโปรแกรมจากเอกสาร Aspose.Words จะรักษาอักขระควบคุมส่วนใหญ่ไว้ ดังนั้น หากคุณต้องการทำงานกับข้อความนี้ คุณก็ควรลบหรือแทนที่อักขระดังกล่าว

คลาส [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) เป็นที่เก็บข้อมูลสำหรับค่าคงที่ที่แสดงถึงอักขระควบคุมที่มักพบในเอกสาร โดยให้ค่าคงที่เดียวกันทั้งเวอร์ชันอักขระและสตริง ตัวอย่างเช่น สตริง [ControlChar.LINE_BREAK](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break) และ char [ControlChar.LINE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break_char) มีค่าเหมือนกัน

ตัวอย่างรหัสต่อไปนี้สาธิตวิธีการใช้อักขระควบคุม:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}
