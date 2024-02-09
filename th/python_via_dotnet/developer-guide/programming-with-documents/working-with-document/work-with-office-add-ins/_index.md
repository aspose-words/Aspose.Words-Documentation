---
title: ทำงานกับ Add-in ของ Office ใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ทำงานกับ Add-in ของ Office
linktitle: ทำงานกับ Add-in ของ Office
description: "Aspose.Words สำหรับ Python via .NET มีคลาสต่างๆ สำหรับการทำงานกับ Office Add-in คุณสามารถเพิ่มบานหน้าต่างงานผ่านทางส่วนขยายเว็บและปรับแต่งบานหน้าต่างและคุณสมบัติส่วนขยายได้"
type: docs
weight: 50
url: /th/python-net/work-with-office-add-ins/
---

บางครั้งคุณอาจต้องการให้สิทธิ์การเข้าถึงส่วนควบคุมอินเทอร์เฟซที่เรียกใช้โค้ดเพื่อแก้ไขเอกสาร Aspose.Words API มีโมดูล [webextensions](https://reference.aspose.com/words/python-net/aspose.words.webextensions/) ซึ่งมอบคลาสต่างๆ เพื่อปรับแต่งองค์ประกอบและคุณลักษณะที่ขยายคำศัพท์ XML สำหรับการนำเสนอ Add-in ของ Office

เนมสเปซ WebExtensions สามารถแบ่งออกเป็น:

* วัตถุสำหรับการทำงานกับบานหน้าต่างงาน
* วัตถุสำหรับการทำงานกับส่วนขยายของเว็บ

## การใช้บานหน้าต่างงาน

บานหน้าต่างงานคือพื้นผิวอินเทอร์เฟซที่แสดงทางด้านขวาของหน้าต่างใน Microsoft Word บานหน้าต่างงานช่วยให้ผู้ใช้สามารถเข้าถึงส่วนควบคุมอินเทอร์เฟซที่สามารถเรียกใช้โค้ดเพื่อแก้ไขเอกสารได้

ตัวอย่างเช่น เมื่อใช้ Aspose.Words API คุณสามารถเพิ่ม Add-in ของบานหน้าต่างงานและปรับแต่งลักษณะที่ปรากฏได้

## การใช้ส่วนขยายเว็บ

ส่วนขยายเว็บเป็นเครื่องมือที่ขยายขีดความสามารถของแอปพลิเคชัน Office และโต้ตอบกับเนื้อหาเอกสาร Office ส่วนขยายเว็บมอบฟังก์ชันการทำงานเพิ่มเติมให้กับลูกค้า Office เพื่อปรับปรุงประสบการณ์ผู้ใช้

Aspose.Words มอบความสามารถในการเพิ่มส่วนขยายเว็บของประเภทบานหน้าต่างงานโดยใช้คลาส [WebExtension](https://reference.aspose.com/words/python-net/aspose.words.webextensions/webextension/) และ [TaskPane](https://reference.aspose.com/words/python-net/aspose.words.webextensions/taskpane/) และยังช่วยให้คุณปรับแต่งบานหน้าต่างและคุณสมบัติส่วนขยายได้อีกด้วย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างบานหน้าต่างงานและเพิ่มบานหน้าต่างงานส่วนขยายของเว็บด้วยคุณสมบัติพื้นฐาน:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-UsingWebExtensionTaskPanes.py" >}}

หากต้องการดูรายการ Add-in ของบานหน้าต่างงาน ให้ใช้คุณสมบัติ [web_extension_task_panes](https://reference.aspose.com/words/python-net/aspose.words/document/web_extension_task_panes/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีรับรายการ Add-in ดังกล่าว:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-GetListOfAddins.py" >}}
