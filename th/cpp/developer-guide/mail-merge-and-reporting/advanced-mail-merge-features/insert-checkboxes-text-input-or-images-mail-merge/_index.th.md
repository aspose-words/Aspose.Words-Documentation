---
title: แทรก Checkboxการป้อนข้อความหรือภาพในช่วง Mail Merge
second_title: Aspose.Words สำหรับ C++
articleTitle: แทรก Checkboxการป้อนข้อความหรือรูปภาพ
linktitle: แทรก Checkboxการป้อนข้อความหรือรูปภาพ
description: "แทรกช่องทำเครื่องหมายหรือช่องใส่ข้อความในระหว่าง Mail Merge ใช้ C++. ยังแทรกภาพจากฐานข้อมูลในช่วง Mail Merge ใน C++."
type: docs
weight: 40
url: /th/cpp/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

เครื่องมือผสานใช้เอกสารเป็นอินพุต,มองหา `MERGEFIELD` ในนั้นและแทนที่พวกเขาด้วยข้อมูลที่ได้รับจากแหล่งข้อมูล โดยปกติแล้วข้อความธรรมดาและ HTML จะแทรกแต่ Aspose.Words ผู้ใช้ยังสามารถสร้างเอกสารที่จัดการกับสถานการณ์ที่ผิดปกติมากขึ้นสำหรับ Mail Merge สนาม.

ทรงพลัง Aspose.Words ฟังก์ชั่นช่วยให้คุณสามารถขยาย Mail Merge กระบวนการ:

- แทรกช่องทำเครื่องหมายและฟิลด์แบบฟอร์มการป้อนข้อความลงในเอกสารในระหว่าง mail merge
- แทรกภาพจากการจัดเก็บข้อมูลที่กำหนดเองใดๆ(ไฟล์, BLOB สนามฯลฯ)

## แทรก Checkboxและป้อนข้อความในช่วง Mail Merge

บางครั้งก็เป็นสิ่งจำเป็นที่จะดำเนินการ Mail Merge การดำเนินการเพื่อให้ข้อความไม่ถูกแทนที่ในฟิลด์ผสานแต่ช่องทำเครื่องหมายหรือฟิลด์ป้อ แม้ว่านี้ไม่ได้เป็นสถานการณ์ที่พบบ่อยที่สุดก็จะมีประโยชน์มากสำหรับงานบางอย่าง.

ภาพหน้าจอต่อไปนี้ของเอกสารคำแสดงแม่แบบที่มีเขตข้อมูลผสาน:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

ภาพหน้าจอของเอกสารคำด้านล่างนี้แสดงเอกสารที่สร้างขึ้นแล้ว:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

โปรดทราบว่าบางเขตข้อมูลถูกแทนที่ด้วยข้อความธรรมดาบางเขตข้อมูลถูกแทนที่ด้วยช่องท `Subject` ฟิลด์ถูกแทนที่ด้วยช่องป้อนข้อความ.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกกล่องกาเครื่องหมายและฟิลด์ป้อนข้อความลงในเอก mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-HandleMergeField.cpp" >}}

## แทรกภาพในระหว่าง Mail Merge

เมื่อดำเนินการ Mail Merge คุณสามารถแทรกภาพจากฐานข้อมูลลงในเอกสารโดยใช้ภาพพิเศษ Mail Merge สนาม ภาพ Mail Merge ฟิลด์เป็นฟิลด์ผสานชื่อภาพ:MyFieldName.

### แทรกภาพจากฐานข้อมูล

ในช่วง Mail Merge เมื่อภาพ Mail Merge ฟิลด์จะพบในเอกสาร [FieldMergingCallback](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_fieldmergingcallback/) เหตุการณ์ถูกยิง คุณสามารถตอบสนองต่อเหตุการณ์นี้เพื่อส่งคืนชื่อแฟ้มสตรีมหรือวัตถุรูปภาพไปยัง Mail Merge เครื่องยนต์เพื่อที่จะสามารถแทรกลงในเอกสาร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกรูปภาพที่เก็บไว้ในฐานข้อมูล BLOB ฟิลด์ลงในรายงาน:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageInsert.cpp" >}}

### ตั้งค่าคุณสมบัติของภาพในระหว่าง Mail Merge

ในขณะที่การผสานฟิลด์ผสานรูปภาพบางครั้งคุณอาจจำเป็นต้องควบคุมคุณสมบัติของรูปภาพต่ [WrapType](https://reference.aspose.com/words/cpp/aspose.words.drawing/wraptype/).

ปัจจุบันใช้ [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/class/aspose.words.mail_merging.image_field_merging_args) คุณสามารถตั้งค่าความกว้างของภาพหรือคุณสมบัติความสูงตามลำดับ เพื่อเอาชนะปัญหานี้, Aspose.Words ให้ [Shape](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/get_shape/) อำนวยความสะดวกในการที่จะได้รับการควบคุมเต็มรูปแบบผ่านภาพแทรกหรือรูปร่างอื่นๆ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัติของรูปภาพต่างๆ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageField.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-DataSourceRoot.cpp" >}}
