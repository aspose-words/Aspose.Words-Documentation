---
title: โคลนเอกสารในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: โคลนเอกสาร
linktitle: โคลนเอกสาร
type: docs
description: "โคลนเอกสารเพื่อรับสำเนาที่เหมือนกันโดยใช้C++ เมื่อสร้างสำเนาโหนดและคุณสมบัติของเอกสารต้นฉบับจะถูกโคลน."
weight: 70
url: /th/cpp/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

การโคลนเอกสารเป็นกระบวนการสร้างสำเนาที่เหมือนกันของเอกสารต้นฉบับซึ่งสามาร.

บทความนี้จะอธิบายกรณีการใช้งานหลักของการโคลนเอกสารและวิธีการสร้างโคลนเอกสารโดยใช้ Aspose.Words.

## การดำเนินงานที่มีเอกสารการโคลน

การดำเนินการโคลนช่วยให้คุณสามารถทำให้กระบวนการของการสร้างเอกสารได้เร็วขึ้นในขณะที่คุณจะไม่จำเป็นต้องโหลดและแยกเอกสารจากไฟล์ทุกครั้ง.

หลังจากสร้างโคลนของเอกสารของคุณคุณจะสามารถที่จะแก้ไขและดำเนินการที่แตกต่างกันกับมันเช่นเปรียบเทียบกับเอกสารต้นฉบับผนวกหรือแทรกลงในเอกสารอื่น นอกจากนี้คุณยังสามารถปรับเปลี่ยนองค์ประกอบที่ถูกโคลนหรือเนื้อหาของพวกเขาก่อนที่จะ.

## การสร้างโคลนเอกสาร

Aspose.Wordsช่วยให้คุณสามารถโคลนเอกสารโดยใช้วิธีการ[Clone](https://reference.aspose.com/words/cpp/aspose.words/document/clone/)ที่ทำสำเนาลึกของเอกสารและส่งคืน กล่าวอีกนัยหนึ่งก็จะได้รับสำเนาเต็มรูปแบบของDOM วิธีการ`Clone`ช่วยเพิ่มความเร็วในการสร้างเอกสารและคุณต้องใช้รหัสเพียงบรรทัดเดียวเพื่อรับสำเนาเอกสารของคุณ.

การโคลนจะสร้างเอกสารใหม่ที่มีเนื้อหาเหมือนกับต้นฉบับแต่มีสำเนาเฉพาะของเอกสารต้นฉบับแต่ละฉบับของ[nodes](https://reference.aspose.com/words/cpp/class/aspose.words.node) นอกจากนี้คุณยังสามารถใช้การดำเนินการโคลนกับโหนดเอกสารโดยใช้วิธีการโหนด[Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/)ซึ่ง.

{{% alert color="primary" %}}

โปรดทราบว่าเมื่อใช้วิธีการโคลนคุณสมบัติเอกสารทั้งหมดจะถูกโคลน.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโคลนเอกสารและสร้างซ้ำของส่วนในเอกสารนั้น:
{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CloningDocument-CloningDocument.cpp" >}}