---
title: แทรกCheckbox,การป้อนข้อความหรือรูปภาพในระหว่างMail Merge
second_title: Aspose.Wordsสำหรับ.NET
articleTitle: แทรกCheckboxการป้อนข้อความหรือรูปภาพ
linktitle: แทรกCheckboxการป้อนข้อความหรือรูปภาพ
description: "แทรกcheckboxหรือช่องใส่ข้อความระหว่างใช้Mail MergeC# ยังแทรกรูปภาพจากฐานข้อมูลระหว่างMail MergeในC#."
type: docs
weight: 40
url: /th/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

โปรแกรมผสานใช้เอกสารเป็นอินพุตมองหาฟิลด์`MERGEFIELD`ในนั้นและแทนที่ด้วยข้อมูลที่ได้จากแหล่งข้ โดยทั่วไปแล้วข้อความธรรมดาและHTMLจะถูกแทรกแต่ผู้ใช้Aspose.Wordsยังสามารถสร้างเอกสารที่จัดการกับสถานการณ์ที่ผิดปกติมากขึ้นสำหรับฟิลด์Mail Merge.

ฟังก์ชั่นที่มีประสิทธิภาพAspose.Wordsช่วยให้คุณสามารถขยายกระบวนการMail Merge:

- แทรกcheckboxและฟิลด์แบบฟอร์มการป้อนข้อความลงในเอกสารระหว่างmail merge
- แทรกภาพจากการจัดเก็บข้อมูลที่กำหนดเองใดๆ(ไฟล์BLOBฟิลด์ฯลฯ)

## แทรกCheckboxและป้อนข้อความในระหว่างMail Merge

บางครั้งจำเป็นต้องดำเนินการMail Mergeเพื่อไม่ให้ข้อความถูกแทนที่ในฟิลด์ผสานแต่เป็นcheckboxหรือฟิลด์ป้อ แม้ว่านี้ไม่ได้เป็นสถานการณ์ที่พบบ่อยที่สุดก็จะมีประโยชน์มากสำหรับงานบางอย่าง.

ภาพหน้าจอต่อไปนี้ของเอกสารWordแสดงเทมเพลตที่มีฟิลด์ผสาน:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

ภาพหน้าจอของเอกสารWordด้านล่างนี้แสดงเอกสารที่สร้างขึ้นแล้ว:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

โปรดทราบว่าบางฟิลด์ถูกแทนที่ด้วยข้อความธรรมดาบางฟิลด์ถูกแทนที่ด้วยฟิลด์แบบcheckboxและฟิลด์`Subject`ถูกแทนที่ด้วยฟิลด์ป้อนข้อความ.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกcheckboxและป้อนฟิลด์ข้อความลงในเอกสารระหว่างmail merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## แทรกภาพในระหว่างMail Merge

เมื่อดำเนินการMail Mergeคุณสามารถแทรกรูปภาพจากฐานข้อมูลลงในเอกสารโดยใช้ฟิลด์รูปภาพพิเศษMail Merge ฟิลด์รูปภาพMail Mergeเป็นฟิลด์ผสานชื่อภาพ:MyFieldName.

### แทรกภาพจากฐานข้อมูล

ในระหว่างmail mergeเมื่อฟิลด์รูปภาพMail Mergeพบในเอกสารเหตุการณ์[FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/)จะถูกยิง คุณสามารถตอบสนองต่อเหตุการณ์นี้เพื่อส่งคืนชื่อแฟ้มสตรีมหรือวัตถุรูปภาพไปยังเครื่องยนต์Mail Mergeเพื่อที่จะสามารถแทรกลงในเอกสารได้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกรูปภาพที่เก็บไว้ในฐานข้อมูลBLOBฟิลด์ลงในรายงาน:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### ตั้งค่าคุณสมบัติของรูปภาพระหว่างMail Merge

ในขณะที่การรวมฟิลด์ผสานรูปภาพบางครั้งคุณอาจต้องควบคุมคุณสมบัติของรูปภาพต่างๆเช่น[WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/).

ขณะนี้ใช้[ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/)คุณสามารถตั้งค่าความกว้างของภาพหรือคุณสมบัติความสูงตามลำดับ เพื่อเอาชนะปัญหานี้Aspose.Wordsให้คุณ[Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/)ซึ่งอำนวยความสะดวกในการได้รับการควบคุมเต็มรูปแบบผ่าน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัติของรูปภาพต่างๆ:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
