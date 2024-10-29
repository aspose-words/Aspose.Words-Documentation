---
title: ง่าย Mail Merge การดำเนินงานใน C++
second_title: Aspose.Words สำหรับ C++
articleTitle: ง่าย Mail Merge การดำเนินงาน
linktitle: ง่าย Mail Merge การดำเนินงาน
type: docs
description: "ง่าย mail merge จะใช้ในการกรอกข้อมูล mail merge ฟิลด์ภายในเทมเพลตของคุณด้วยข้อมูลที่จำเป็นจากแหล่งข้อมูลของคุณ-มันคล้ายกับคลาสสิก mail merge ใน Microsoft Word. เพิ่มอย่างน้อยหนึ่งเขตข้อมูลผสานในแม่แบบของคุณและดำเนินการอย่างง่าย mail merge การดำเนินงาน."
keywords: "how to execute mail merge c++"
weight: 10
url: /th/cpp/simple-mail-merge-operation/
---

ง่าย mail merge จะใช้ในการกรอกข้อมูล mail merge ฟิลด์ภายในเทมเพลตของคุณพร้อมข้อมูลที่จำเป็นจากแหล่งข้อมูลของคุณ(การแสดงตารางเ ดังนั้นจึงมีความคล้ายคลึงกับคลาสสิก mail merge ใน Microsoft Word.

คุณสามารถเพิ่มฟิลด์ผสานอย่างน้อยหนึ่งฟิลด์ในแม่แบบของคุณและดำเนินการอย่างง่าย mail merge การดำเนินงาน ขอแนะนำให้ใช้หากเทมเพลทของคุณไม่มีพื้นที่ผสาน.

ข้อจำกัดหลักของการใช้ชนิดนี้เป็นเนื้อหาเอกสารทั้งหมดจะถูกทำซ้ำสำหรับแต่ละระเบียน.

## วิธีการดำเนินการที่เรียบง่าย Mail Merge การดำเนินงาน

เมื่อแม่แบบของคุณพร้อม,คุณสามารถเริ่มต้นการดำเนินการที่เรียบง่าย mail merge การดำเนินงาน Aspose.Words ช่วยให้คุณสามารถดำเนินการง่าย mail merge การดำเนินงานโดยใช้ที่แตกต่างกัน [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) วิธีการที่ยอมรับวัตถุข้อมูลต่างๆเป็นแหล่งข้อมูล.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการดำเนินการอย่างง่าย mail merge การดำเนินงานโดยใช้หนึ่งใน [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) วิธีการ:

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

คุณสามารถสังเกตเห็นความแตกต่างระหว่างเอกสารก่อนที่จะดำเนินการอย่างง่าย mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

และหลังจากที่ดำเนินการง่าย mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## วิธีการสร้างเอกสารที่ผสาน

ใน Aspose.Words,มาตรฐาน mail merge การดำเนินการเติมเพียงเอกสารเดียวที่มีเนื้อหาจากแหล่งข้อมูลของคุณ ดังนั้นคุณจะต้องดำเนินการ mail merge การดำเนินการหลายครั้งเพื่อสร้างเอกสารที่ผสานไม่กี่เป็นเอาท์พุท.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างเอกสารที่ผสานไม่กี่ในระหว่าง mail merge การดำเนินงานด้วย [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
