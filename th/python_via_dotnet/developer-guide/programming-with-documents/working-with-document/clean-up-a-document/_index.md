---
title: ทำความสะอาดเอกสารใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ทำความสะอาดเอกสาร
linktitle: ทำความสะอาดเอกสาร
description: "ลบข้อมูลที่ไม่ได้ใช้หรือซ้ำกันเพื่อลดขนาดเอาต์พุตและเวลาในการประมวลผลโดยใช้ Python ลบสไตล์ที่ไม่ได้ใช้ สไตล์ที่มีอยู่แล้วภายในที่ไม่ได้ใช้ สไตล์ที่ซ้ำกัน หรือรายการที่ไม่ได้ใช้"
type: docs
weight: 30
url: /th/python-net/clean-up-a-document/
---

บางครั้งคุณอาจต้องลบข้อมูลที่ไม่ได้ใช้หรือซ้ำกันออกเพื่อลดขนาดของเอกสารเอาต์พุตและเวลาในการประมวลผล

แม้ว่าคุณจะสามารถค้นหาและลบข้อมูลที่ไม่ได้ใช้ เช่น สไตล์หรือรายการ หรือข้อมูลที่ซ้ำกันด้วยตนเองได้ แต่จะสะดวกกว่ามากหากใช้ฟีเจอร์และความสามารถที่ Aspose.Words มอบให้

คลาส [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) ช่วยให้คุณระบุตัวเลือกสำหรับการทำความสะอาดเอกสาร หากต้องการลบสไตล์ที่ซ้ำกันหรือเฉพาะสไตล์หรือรายการที่ไม่ได้ใช้ออกจากเอกสาร คุณสามารถใช้วิธี [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/) ได้

## ลบข้อมูลที่ไม่ได้ใช้ออกจากเอกสาร

คุณสามารถใช้คุณสมบัติ [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) และ [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) เพื่อตรวจหาและลบสไตล์ที่ทำเครื่องหมายว่า "ไม่ได้ใช้"

คุณสามารถใช้คุณสมบัติ [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) เพื่อตรวจหาและลบรายการและคำจำกัดความของรายการที่ทำเครื่องหมายว่า "ไม่ได้ใช้"

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบเฉพาะสไตล์ที่ไม่ได้ใช้ออกจากเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## ลบข้อมูลที่ซ้ำกันออกจากเอกสาร

คุณยังสามารถใช้คุณสมบัติ [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) เพื่อแทนที่สไตล์ที่ซ้ำกันทั้งหมดด้วยสไตล์ดั้งเดิม และลบรายการที่ซ้ำกันออกจากเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบรูปแบบที่ซ้ำกันออกจากเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}