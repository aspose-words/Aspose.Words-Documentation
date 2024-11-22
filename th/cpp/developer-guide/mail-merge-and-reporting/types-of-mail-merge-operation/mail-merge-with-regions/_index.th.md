---
title: Mail Merge กับภูมิภาคใน C++
second_title: Aspose.Words สำหรับ C++
articleTitle: Mail Merge กับภูมิภาค
linktitle: Mail Merge กับภูมิภาค
type: docs
description: "สร้างภูมิภาคต่างๆในเทมเพลตของคุณเพื่อให้มีพื้นที่พิเศษที่คุณสามารถกรอกข้อมูลของคุณได้ ใช้ Mail Merge ด้วยพื้นที่หากคุณต้องการแทรกตารางแถวที่มีข้อมูลซ้ำเพื่อให้เอกสารของคุณเติบโตแบบได."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /th/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

คุณสามารถสร้างภูมิภาคต่างๆในเทมเพลตของคุณเพื่อให้มีพื้นที่พิเศษที่คุณสามารถกรอกข้อมู ใช้ Mail Merge ด้วยพื้นที่หากคุณต้องการแทรกตารางแถวที่มีข้อมูลซ้ำเพื่อให้เอกสารของคุณเติบโตแบบได.

คุณสามารถสร้างพื้นที่ที่ซ้อนกัน(เด็ก)รวมทั้งผสานพื้นที่ ข้อได้เปรียบหลักของการใช้ประเภทนี้คือการเพิ่มชิ้นส่วนภายในเอกสารแบบไดนามิก ดูรายละเอียดเพิ่มเติมในบทความถัดไป"ซ้อนกัน Mail Merge กับภูมิภาค".

{{% alert color="primary" %}}

ข้อมูลเกี่ยวกับ Mail Merge ภูมิภาคสามารถรับได้โดยใช้ [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) ชั้นเรียน.

{{% /alert %}}

## วิธีการดำเนินการ Mail Merge กับภูมิภาค

A Mail Merge ภูมิภาคเป็นส่วนที่เฉพาะเจาะจงภายในเอกสารที่มีจุดเริ่มต้นและจุดสิ้นสุด จุดทั้งสองจะแสดงเป็น Mail Merge ช่องที่มีชื่อเฉพาะ *"TableStart:XXX"* และ *"TableEnd:XXX"*. เนื้อหาทั้งหมดที่รวมอยู่ใน Mail Merge ภูมิภาคจะถูกทำซ้ำโดยอัตโนมัติสำหรับทุกระเบียนในแหล่งข้อมูล.

Aspose.Words ช่วยให้คุณสามารถดำเนินการ Mail Merge กับภูมิภาคโดยใช้อย่างใดอย่างหนึ่ง [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/) วิธีการที่ยอมรับ [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) แหล่งข้อมูลที่กำหนดเอง.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการดำเนินการ Mail Merge บริการระบบเสียง,ดนตรี,เสียงพากย์ [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

คุณสามารถสังเกตเห็นความแตกต่างระหว่างเอกสารก่อนที่จะดำเนินการ Mail Merge กับภูมิภาค:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

และหลังจากที่ดำเนินการ Mail Merge กับภูมิภาค:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## ข้อจำกัดของ Mail Merge กับภูมิภาค

มีบางประเด็นสำคัญที่คุณต้องพิจารณาเมื่อดำเนินการ Mail Merge กับภูมิภาค:

* จุดเริ่มต้น *TableStart:Orders* และจุดสิ้นสุด *TableEnd:Orders* ทั้งสองจะต้องอยู่ในแถวเดียวกันหรือเซลล์ ตัวอย่างเช่นถ้าคุณเริ่มผสานพื้นที่ในเซลล์ของตารางคุณต้องสิ้นสุดพื้นที่ผสานในแถวเดียวกั.
  ชื่อฟิลด์ผสานต้องตรงกับชื่อคอลัมน์ในของคุณ DataTable. เว้นแต่คุณจะระบุเขตข้อมูลที่แม็พ, Mail Merge ด้วยภูมิภาคจะไม่ประสบความสำเร็จสำหรับเขตข้อมูลผสานใดๆที่มีชื่ออื่นที่ไม่ใช่ชื่อคอลัมน์.
* Aspose.Words สำหรับ C++ รองรับเท่านั้น [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) และ [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) แหล่งข้อมูลตาม กเขา .NET และ Java, C++ ไม่ได้มีการยอมรับโดยทั่วไปข้ามแพลตฟอร์ม API สำหรับการทำงานกับฐานข้อมูล(เช่น ADODB, ODBC หรือ JDBC). เพื่อที่จะทำงานกับแหล่งข้อมูลที่เฉพาะเจาะจงคุณต้องใช้ [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) หรือ [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) อินเตอร์เฟซ.

ถ้าหนึ่งในกฎเหล่านี้เสียคุณจะได้รับผลลัพธ์ที่ไม่คาดคิดหรือข้อยกเว้นอาจจะโยน.

{{% alert color="primary" %}}

หากคุณไม่ได้ใช้ Mail Merge ภูมิภาคแล้วมันจะคล้ายกับ Microsoft Word Mail Merge และเนื้อหาเอกสารทั้งหมดจะถูกทำซ้ำสำหรับแต่ละระเบียนในแหล่งข้อมูล.

{{% /alert %}}

