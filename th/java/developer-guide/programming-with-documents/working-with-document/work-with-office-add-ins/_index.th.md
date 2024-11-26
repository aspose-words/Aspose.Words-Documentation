---
title: ทำงานกับสำนักงานเสริมในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: ทำงานกับสำนักงานเสริม
linktitle: ทำงานกับสำนักงานเสริม
description: "Aspose.WordsสำหรับJavaให้ชั้นเรียนต่างๆสำหรับการทำงานกับสำนักงานเสริม คุณสามารถเพิ่มบานหน้าต่างงานผ่านทางส่วนขยายเว็บและกำหนดคุณสมบัติของบานหน้าต่."
type: docs
weight: 50
url: /th/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

บางครั้งคุณอาจต้องการให้การเข้าถึงตัวควบคุมอินเทอร์เฟซที่รันโค้ดเพื่อแก้ไขเอกสาร Aspose.WordsAPIให้เนมสเปซ`WebExtensions`ซึ่งให้ชั้นเรียนต่างๆเพื่อปรับแต่งองค์ประกอบและแอตทริบิวต์ที่ขยายคำศัพท์XMLสำ.

WebExtensionsเนมสเปซสามารถแบ่งออกเป็นเงื่อนไข:

* วัตถุสำหรับการทำงานกับบานหน้าต่างงาน
* วัตถุสำหรับการทำงานกับส่วนขยายเว็บ

## การใช้บานหน้าต่างงาน

บานหน้าต่างงานเป็นพื้นผิวอินเทอร์เฟซที่แสดงอยู่ทางด้านขวาของหน้าต่างในMicrosoft Word บานหน้าต่างงานช่วยให้ผู้ใช้สามารถเข้าถึงตัวควบคุมอินเทอร์เฟซที่สามารถเรียกใช้รหัสเ.

ตัวอย่างเช่นการใช้Aspose.WordsAPIคุณสามารถเพิ่มบานหน้าต่างงานเพิ่มและกำหนดลักษณะที่ปรากฏของ.

## การใช้ส่วนขยายเว็บ

ส่วนขยายเว็บเป็นเครื่องมือที่ขยายความสามารถของโปรแกรมประยุกต์ในสำนักงานแล ส่วนขยายเว็บให้ฟังก์ชันเพิ่มเติมแก่ไคลเอ็นต์สำนักงานเพื่อปรับปรุงประสบการณ์ของผู้ใช้.

Aspose.Wordsให้ความสามารถในการเพิ่มส่วนขยายเว็บของชนิดบานหน้าต่างงานโดยใช้ชั้นเรียน[WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/)และ[TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/)และยังช่วยให้คุณสามารถปรับแต่งคุณสมบัติบานหน้าต่างและส่วนขยาย.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างบานหน้าต่างงานและเพิ่มในบานหน้าต่างงานส่วนข:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

เมื่อต้องการดูรายการของบานหน้าต่างงานเสริมใช้คุณสมบัติ[WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการรับรายการดังกล่าวของส่วนเสริม:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

