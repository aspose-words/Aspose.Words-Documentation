---
title: การทำงานกับอักขระควบคุม
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับอักขระควบคุม
linktitle: การทำงานกับอักขระควบคุม
description: "ข้อมูลเบื้องต้นเกี่ยวกับการทำงานกับอักขระควบคุมใน Aspose.Words สำหรับ .NET"
type: docs
weight: 400
url: /th/net/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

เอกสาร Microsoft Word อาจมีอักขระหลายตัวที่มีความหมายพิเศษ โดยปกติจะใช้เพื่อจุดประสงค์ในการจัดรูปแบบและไม่ได้วาดในโหมดปกติ คุณสามารถทำให้มองเห็นได้หากคุณคลิกปุ่มแสดง/ซ่อนเครื่องหมายการจัดรูปแบบที่อยู่บนแถบเครื่องมือมาตรฐาน

บางครั้งคุณอาจต้องเพิ่มหรือลบอักขระเข้า/ออกจากข้อความ ตัวอย่างเช่น เมื่อรับข้อความโดยทางโปรแกรมจากเอกสาร Aspose.Words จะรักษาอักขระควบคุมส่วนใหญ่ไว้ ดังนั้น หากคุณต้องการทำงานกับข้อความนี้ คุณก็ควรลบหรือแทนที่อักขระดังกล่าว

คลาส [ControlChar](https://reference.aspose.com/words/net/aspose.words/controlchar/) เป็นที่เก็บข้อมูลสำหรับค่าคงที่ที่แสดงถึงอักขระควบคุมที่มักพบในเอกสาร โดยให้ค่าคงที่เดียวกันทั้งเวอร์ชันอักขระและสตริง ตัวอย่างเช่น สตริง [LineBreak](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreak/) และ char [LineBreakChar](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreakchar) มีค่าเหมือนกัน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้อักขระควบคุม:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cs" >}}/words/net/working-with-content-control-sdt/)
