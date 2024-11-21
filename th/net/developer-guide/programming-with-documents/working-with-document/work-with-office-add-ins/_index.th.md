---
title: ทำงานกับ Add-in ของ Office ใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: ทำงานกับ Add-in ของ Office
linktitle: ทำงานกับ Add-in ของ Office
description: "Aspose.Words สำหรับ .NET มีคลาสต่างๆ สำหรับการทำงานกับ Office Add-in โดยใช้ C# คุณสามารถเพิ่มบานหน้าต่างงานผ่านทางส่วนขยายเว็บและปรับแต่งบานหน้าต่างและคุณสมบัติส่วนขยายได้"
type: docs
weight: 50
url: /th/net/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

บางครั้งคุณอาจต้องการให้สิทธิ์การเข้าถึงส่วนควบคุมอินเทอร์เฟซที่เรียกใช้โค้ดเพื่อแก้ไขเอกสาร Aspose.Words API จัดเตรียมเนมสเปซ `WebExtensions` ซึ่งมอบคลาสต่างๆ เพื่อปรับแต่งองค์ประกอบและคุณลักษณะที่ขยายคำศัพท์ XML สำหรับการนำเสนอ Add-in ของ Office

เนมสเปซ WebExtensions สามารถแบ่งออกเป็น:

* วัตถุสำหรับการทำงานกับบานหน้าต่างงาน
* วัตถุสำหรับการทำงานกับส่วนขยายของเว็บ

## การใช้บานหน้าต่างงาน

บานหน้าต่างงานคือพื้นผิวอินเทอร์เฟซที่แสดงทางด้านขวาของหน้าต่างใน Microsoft Word บานหน้าต่างงานช่วยให้ผู้ใช้สามารถเข้าถึงส่วนควบคุมอินเทอร์เฟซที่สามารถเรียกใช้โค้ดเพื่อแก้ไขเอกสารได้

ตัวอย่างเช่น เมื่อใช้ Aspose.Words API คุณสามารถเพิ่ม Add-in ของบานหน้าต่างงานและปรับแต่งลักษณะที่ปรากฏได้

## การใช้ส่วนขยายเว็บ

ส่วนขยายเว็บเป็นเครื่องมือที่ขยายขีดความสามารถของแอปพลิเคชัน Office และโต้ตอบกับเนื้อหาเอกสาร Office ส่วนขยายเว็บมอบฟังก์ชันการทำงานเพิ่มเติมให้กับลูกค้า Office เพื่อปรับปรุงประสบการณ์ผู้ใช้

Aspose.Words มอบความสามารถในการเพิ่มส่วนขยายเว็บของประเภทบานหน้าต่างงานโดยใช้คลาส [WebExtension](https://reference.aspose.com/words/net/aspose.words.webextensions/webextension/) และ [TaskPane](https://reference.aspose.com/words/net/aspose.words.webextensions/taskpane/) และยังช่วยให้คุณปรับแต่งบานหน้าต่างและคุณสมบัติส่วนขยายได้อีกด้วย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างบานหน้าต่างงานและเพิ่มบานหน้าต่างงานส่วนขยายของเว็บด้วยคุณสมบัติพื้นฐาน:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

หากต้องการดูรายการ Add-in ของบานหน้าต่างงาน ให้ใช้คุณสมบัติ [WebExtensionTaskPanes](https://reference.aspose.com/words/net/aspose.words/document/webextensiontaskpanes/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีรับรายการ Add-in ดังกล่าว:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
