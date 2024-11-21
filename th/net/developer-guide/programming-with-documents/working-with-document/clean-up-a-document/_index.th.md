---
title: ทำความสะอาดเอกสารใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: ทำความสะอาดเอกสาร
linktitle: ทำความสะอาดเอกสาร
description: "ลบข้อมูลที่ไม่ได้ใช้หรือซ้ำกันเพื่อลดขนาดเอาต์พุตและเวลาในการประมวลผลโดยใช้ C# ลบสไตล์ที่ไม่ได้ใช้ สไตล์ที่มีอยู่แล้วภายในที่ไม่ได้ใช้ สไตล์ที่ซ้ำกัน หรือรายการที่ไม่ได้ใช้"
type: docs
weight: 30
url: /th/net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

บางครั้งคุณอาจต้องลบข้อมูลที่ไม่ได้ใช้หรือซ้ำกันออกเพื่อลดขนาดของเอกสารเอาต์พุตและเวลาในการประมวลผล

แม้ว่าคุณจะสามารถค้นหาและลบข้อมูลที่ไม่ได้ใช้ เช่น สไตล์หรือรายการ หรือข้อมูลที่ซ้ำกันด้วยตนเองได้ แต่จะสะดวกกว่ามากหากใช้ฟีเจอร์และความสามารถที่ Aspose.Words มอบให้

คลาส [CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/) ช่วยให้คุณระบุตัวเลือกสำหรับการทำความสะอาดเอกสาร หากต้องการลบสไตล์ที่ซ้ำกันหรือเฉพาะสไตล์หรือรายการที่ไม่ได้ใช้ออกจากเอกสาร คุณสามารถใช้วิธี [Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/) ได้

## ลบข้อมูลที่ไม่ได้ใช้ออกจากเอกสาร

คุณสามารถใช้คุณสมบัติ [UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) และ [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) เพื่อตรวจหาและลบสไตล์ที่ทำเครื่องหมายว่า "ไม่ได้ใช้"

คุณสามารถใช้คุณสมบัติ [UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) เพื่อตรวจหาและลบรายการและคำจำกัดความของรายการที่ทำเครื่องหมายว่า "ไม่ได้ใช้"

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบเฉพาะสไตล์ที่ไม่ได้ใช้ออกจากเอกสาร:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## ลบข้อมูลที่ซ้ำกันออกจากเอกสาร

คุณยังสามารถใช้คุณสมบัติ [DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/) เพื่อแทนที่สไตล์ที่ซ้ำกันทั้งหมดด้วยสไตล์ดั้งเดิม และลบรายการที่ซ้ำกันออกจากเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบรูปแบบที่ซ้ำกันออกจากเอกสาร:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
