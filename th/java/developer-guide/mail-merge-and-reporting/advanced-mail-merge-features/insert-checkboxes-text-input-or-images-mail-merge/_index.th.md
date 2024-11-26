---
title: แทรกCheckbox,การป้อนข้อความหรือรูปภาพในระหว่างMail Merge
second_title: Aspose.WordsสำหรับJava
articleTitle: แทรกCheckboxการป้อนข้อความหรือรูปภาพ
linktitle: แทรกCheckboxการป้อนข้อความหรือรูปภาพ
description: "แทรกcheckboxหรือช่องใส่ข้อความระหว่างใช้Mail MergeJava ยังแทรกรูปภาพจากฐานข้อมูลระหว่างMail MergeในJava."
type: docs
weight: 20
url: /th/java/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

โปรแกรมผสานใช้เอกสารเป็นอินพุตมองหาฟิลด์`MERGEFIELD`ในนั้นและแทนที่ด้วยข้อมูลที่ได้จากแหล่งข้ โดยทั่วไปแล้วข้อความธรรมดาและHTMLจะถูกแทรกแต่ผู้ใช้Aspose.Wordsยังสามารถสร้างเอกสารที่จัดการกับสถานการณ์ที่ผิดปกติมากขึ้นสำหรับฟิลด์Mail Merge.

ฟังก์ชั่นที่มีประสิทธิภาพAspose.Wordsช่วยให้คุณสามารถขยายกระบวนการMail Merge:

- แทรกcheckboxและฟิลด์แบบฟอร์มการป้อนข้อความลงในเอกสารระหว่างmail merge
- แทรกภาพจากการจัดเก็บข้อมูลที่กำหนดเองใดๆ(ไฟล์BLOBฟิลด์ฯลฯ)

## แทรกCheckboxและป้อนข้อความในระหว่างMail Merge

บางครั้งจำเป็นต้องดำเนินการMail Mergeเพื่อไม่ให้ข้อความถูกแทนที่ในฟิลด์ผสานแต่เป็นcheckboxหรือฟิลด์ป้อ แม้ว่านี้ไม่ได้เป็นสถานการณ์ที่พบบ่อยที่สุดก็จะมีประโยชน์มากสำหรับงานบางอย่าง.

ภาพหน้าจอต่อไปนี้ของเอกสารคำแสดงแม่แบบที่มีเขตข้อมูลผสาน:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-1](/words/java/insert-checkboxes-text-input-or-images-mail-merge/insert-checkboxes-html-or-images-during-mail-merge_1.jpeg)

ภาพหน้าจอของเอกสารคำด้านล่างนี้แสดงเอกสารที่สร้างขึ้นแล้ว:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-2](/words/java/insert-checkboxes-text-input-or-images-mail-merge/insert-checkboxes-html-or-images-during-mail-merge-2.png)

{{% alert color="primary" %}}

โปรดทราบว่าบางฟิลด์ถูกแทนที่ด้วยข้อความธรรมดาบางฟิลด์ถูกแทนที่ด้วยฟิลด์แบบcheckboxและฟิลด์`Subject`ถูกแทนที่ด้วยฟิลด์ป้อนข้อความ.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกcheckboxและป้อนฟิลด์ข้อความลงในเอกสารระหว่างmail merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-HandleMergeField.java" >}}

## แทรกภาพในระหว่างMail Merge

เมื่อดำเนินการMail Mergeคุณสามารถแทรกรูปภาพจากฐานข้อมูลลงในเอกสารโดยใช้ฟิลด์รูปภาพพิเศษMail Merge ฟิลด์รูปภาพMail Mergeเป็นฟิลด์ผสานชื่อภาพ:MyFieldName.

### แทรกภาพจากฐานข้อมูล

ในระหว่างmail mergeเมื่อฟิลด์รูปภาพMail Mergeพบในเอกสารเหตุการณ์[FieldMergingCallback](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldMergingCallback)จะถูกยิง คุณสามารถตอบสนองต่อเหตุการณ์นี้เพื่อส่งคืนชื่อแฟ้มสตรีมหรือวัตถุรูปภาพไปยังเครื่องยนต์Mail Mergeเพื่อที่จะสามารถแทรกลงในเอกสารได้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกรูปภาพที่เก็บไว้ในฐานข้อมูลBLOBฟิลด์ลงในรายงาน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageFromBlob.java" >}}

### ตั้งค่าคุณสมบัติของรูปภาพระหว่างMail Merge

ในขณะที่การรวมฟิลด์ผสานรูปภาพบางครั้งคุณอาจต้องควบคุมคุณสมบัติของรูปภาพต่างๆเช่น[WrapType](https://reference.aspose.com/words/java/com.aspose.words/wraptype/).

ขณะนี้ใช้[ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/)คุณสามารถตั้งค่าความกว้างของภาพหรือคุณสมบัติความสูงตามลำดับ เพื่อเอาชนะปัญหานี้Aspose.Wordsให้คุณ[Shape](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/#getShape)ซึ่งอำนวยความสะดวกในการได้รับการควบคุมเต็มรูปแบบผ่าน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัติของรูปภาพต่างๆ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-MailMergeImageField.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-FieldMergingHandler.java" >}}

