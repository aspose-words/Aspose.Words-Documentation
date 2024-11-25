---
title: ซ้อนกัน Mail Merge กับภูมิภาคใน C++
second_title: Aspose.Words สำหรับ C++
articleTitle: ซ้อนกัน Mail Merge กับภูมิภาค
linktitle: ซ้อนกัน Mail Merge กับภูมิภาค
type: docs
description: "ดำเนินการ Mail Merge การทำงานกับพื้นที่ที่ซ้อนกันโดยใช้ C++. ผสานซ้อนกันเป็นคุณลักษณะที่ช่วยให้คุณสามารถผสานข้อมูลลำดับชั้นจากแหล่งข้อมูลของคุณ."
keywords: "mail merge with nested regions c++"
weight: 30
url: /th/cpp/nested-mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

ในบางสถานการณ์คุณอาจต้องใช้ซ้อนกัน Mail Merge กับภูมิภาค ผสานซ้อนกันเป็นคุณลักษณะที่ช่วยให้คุณสามารถผสานข้อมูลลำดับชั้นจากแหล่งข้อมูลของคุณ มสัมพันธ์ลำดับชั้นอธิบายวิธีที่รายการข้อมูลที่เกี่ยวข้องกับแต่ละอื่นๆ(รายการหนึ่งของข้อมูล.

Aspose.Words ช่วยให้คุณสามารถดำเนินการ Mail Merge การดำเนินงานที่มีภูมิภาคที่ซ้อนกัน คุณสามารถใช้คุณลักษณะนี้ถ้าคุณมีแหล่งข้อมูลที่จัดเป็นโครงสร้างเหมือนต้นไม้และคุณต้อง Mail Merge การดำเนินการเพื่อเติมแม่แบบที่มีข้อมูลลำดับชั้น.

{{% alert color="primary" %}}

ซ้อนกัน Mail Merge มีความเกี่ยวข้องเฉพาะเมื่อมีการดำเนินการ Mail Merge กับภูมิภาค.

{{% /alert %}}

## อะไรคือสิ่งที่ซ้อนกัน Mail Merge

ร Mail Merge พื้นที่เรียกว่าซ้อนกันถ้าคุณมีสองหรือมากกว่า Mail Merge ภูมิภาคที่หนึ่งของพวกเขาอยู่ในอื่นๆในรูปแบบลำดับชั้น โปรดทราบว่าแต่ละภูมิภาคมีข้อมูลจากตารางหนึ่ง.

ตัวอย่างที่พบบ่อยที่สุดของการซ้อนกัน Mail Merge เป็นคำสั่งที่มีไม่กี่รายการที่คุณจำเป็นต้องเชื่อมโยงตารางข้อมูลจำนวนมากและนำเสนอข้.

ภาพด้านล่างแสดงสองภูมิภาคที่ซ้อนกันที่ *Order* Mail Merge ภูมิภาคเป็นผู้ปกครองของ *Item* Mail Merge region.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## วิธีการประมวลผล Mail Merge ด้วยภูมิภาคที่ซ้อนกัน

การเขียนข้อความโฆษณา,การเขียนในนามคนอื่น,บทความ,การเขียนบทความใหม่,การเขียน XML เอกสาร ในตัวอย่างของเราเราจะใช้ [SQLite](https://www.sqlite.org/index.html) การประมวลผลข้อมูล,คีย์ข้อมูล,การพิมพ์ดีดคัดลอก.

ภาพด้านล่างแสดงให้เห็นว่าข้อมูลจาก *Order* ตารางที่ส่งผ่านไปยังพื้นที่ผสานที่ซ้อนกันจะเชื่อมโยงกับ *Item* ตารางเช่นเดียวกับการส่งออกที่สร้างขึ้นในระหว่างการดำเนินการผสาน.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

ที่คุณสามารถดูจากเอกสารที่ส่งออกแต่ละคำสั่งจาก **Order** ตารางจะถูกแทรกลงในเทมเพลตผสานกับรายการที่เกี่ยวข้องกับการสั่งซื้อทั้งหมดจาก **Item** โต๊ะ คำสั่งต่อไปจะถูกแทรกพร้อมกับรายการของพวกเขาจนกว่าคำสั่งซื้อทั้งหมดและรายการที่ ลำดับของการทำรัง Mail Merge ด้วยพื้นที่ในเทมเพลตต้องตรงกับความสัมพันธ์ของข้อมูลระหว่างตารางในแหล่งข้อมูล.

## วิธีการสร้างความสัมพันธ์ข้อมูลจากแหล่งข้อมูลที่กำหนดเอง

ใช้ [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) อินเทอร์เฟซเพื่อสร้างความสัมพันธ์ในโครงสร้างแม่และเด็กของแหล่งข้อมูลที่กำหนดเอง ใช้ [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) วิธีการส่งคืนข้อมูลเด็กที่เกี่ยวข้องของระเบียนหลักปัจจุบัน.

ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นถึงวิธีการสร้างใบแจ้งหนี้โดยใช้ซ้อนกัน Mail Merge กับภูมิภาคจาก [SQLite](https://www.sqlite.org/index.html) ฐานข้อมูลที่มี [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}