---
title: ทำความสะอาดเอกสารในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: ทำความสะอาดเอกสาร
linktitle: ทำความสะอาดเอกสาร
description: "ลบข้อมูลที่ไม่ได้ใช้หรือซ้ำกันเพื่อลดขนาดเอาต์พุตและเวลาในการประมวลผลโดยใช้C++ ลบรูปแบบที่ไม่ได้ใช้รูปแบบในตัวรูปแบบที่ซ้ำกันหรือรายการที่ไม่ได้ใช้."
type: docs
weight: 30
url: /th/cpp/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

บางครั้งคุณอาจต้องลบข้อมูลที่ไม่ได้ใช้หรือซ้ำกันเพื่อลดขนาดของเอกสารที่ส่งออกและเว.

ในขณะที่คุณสามารถค้นหาและลบข้อมูลที่ไม่ได้ใช้เช่นลักษณะหรือรายการหรือข้อมูลที่ซ้ำกันด้วยตนเองแต่จะสะดวกกว่ามากในการทำเช่นนี้โดยใช้คุณลักษณะและความสามารถที่มีให้โดยAspose.Words.

คลาส [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) ช่วยให้คุณสามารถระบุตัวเลือกสำหรับการทำความสะอาดเอกสารได้ หากต้องการลบรูปแบบที่ซ้ำกันหรือเฉพาะรูปแบบหรือรายการที่ไม่ได้ใช้จากเอกสาร คุณสามารถใช้เมธอด [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/) ได้.

## ลบข้อมูลที่ไม่ได้ใช้ออกจากเอกสาร

คุณสามารถใช้คุณสมบัติ[UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/)และ[UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/)เพื่อตรวจหาและลบลักษณะที่ถูกทำเครื่องหมายว่าเป็น"ไม่ได้ใช้".

คุณสามารถใช้คุณสมบัติ[UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/)เพื่อตรวจหาและลบรายการและคำจำกัดความของรายการที่ถูกทำ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลบเฉพาะลักษณะที่ไม่ได้ใช้จากเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## ลบข้อมูลที่ซ้ำกันออกจากเอกสาร

นอกจากนี้คุณยังสามารถใช้คุณสมบัติ[DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/)เพื่อแทนที่ลักษณะที่ซ้ำกันทั้งหมดด้วยรูปแบบต้นฉบับและ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเอาลักษณะที่ซ้ำกันออกจากเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
