---
title: วิธีการใช้การจัดรูปแบบที่กำหนดเองในระหว่างMail Merge
second_title: Aspose.WordsสำหรับJava
articleTitle: วิธีการใช้การจัดรูปแบบที่กำหนดเองในระหว่างMail Merge
linktitle: วิธีการใช้การจัดรูปแบบที่กำหนดเองในระหว่างMail Merge
type: docs
description: "ใช้การจัดรูปแบบที่กำหนดเองในระหว่างการดำเนินการMail Mergeโดยใช้Java."
weight: 60
url: /th/java/how-to-apply-custom-formatting-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

ชั้น[MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/)มีสองเหตุการณ์ที่อาจเป็นประโยชน์มากในการขยายMail Mergeความสามารถ. คุณสมบัติ[setFieldMergingCallback(IFieldMergingCallback)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#FieldMergingCallback)accepคลาสที่ใช้วิธีการ[fieldMerging(FieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#fieldMerging-com.aspose.words.FieldMergingArgs)และ[imageFieldMerging(ImageFieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#imageFieldMerging-com.aspose.words.ImageFieldMergingArgs) สามารถใช้การควบคุมแบบกำหนดเองผ่านกระบวนการMail Merge.

เหตุการณ์**fieldMerging(FieldMergingArgs)**เกิดขึ้นในระหว่างMail Mergeเมื่อฟิลด์แบบง่ายMail Mergeพบในเอกสาร นี้จะช่วยให้การควบคุมเพิ่มเติมกว่าMail Mergeและคุณสามารถดำเนินการใดๆเมื่อเกิดเหตุการณ์ เมธอดนี้ถูกห่อในคลาสที่ใช้อินเตอร์เฟซ[IFieldMergingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/)และยอมรับวัตถุ[FieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/fieldmergingargs/)ที่ให้ข้อมูลสำหรับเหตุการณ์ที่เกี่ยว.

ตัวอย่างโค้ดที่ระบุไว้ด้านล่างจะแสดงวิธีใช้ตรรกะแบบกำหนดเองในเหตุการณ์`MergeField`เพื่อใช้กา.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomFormattingDuringMailMerge-ApplyCustomFormattingDuringMailMerge.java" >}}
