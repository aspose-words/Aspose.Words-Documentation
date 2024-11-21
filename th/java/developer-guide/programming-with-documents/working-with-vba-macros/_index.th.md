---
title: ทํางานกับ VBA Macros ใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับ VBA Macros
linktitle: ทํางานกับ VBA Macros
description: "ทํางานกับโครงการ VBA เอกสารโดยใช้ Java."
type: docs
weight: 410
url: /th/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic สําหรับโปรแกรม (VBA) Microsoft Word เป็นภาษาโปรแกรมที่เรียบง่ายแต่ทรงพลัง ที่สามารถนําไปใช้ในการใช้งานได้ Aspose.Words API ให้เรียน 3 วิชาเพื่อเข้าถึงรหัสโครงการ VBA

- [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) คลาสข้อมูลโครงการ VBA
- [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) คลาสจะคืนค่ากลับมาเป็นชุดของมอดูลโครงการ VBA
- [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) คลาสที่ให้สิทธิ์ในการใช้งานโมดูลโครงการ VBA

## สร้างโครงการ VBA

Aspose.Words API ให้ [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) คุณสมบัติที่จะใช้รับหรือตั้งค่า vbaProject ในเอกสาร

ตัวอย่างโค้ดต่อไปนี้ แสดงวิธีสร้างโครงการ VBA และโครงการ VBA พร้อมกับคุณสมบัติพื้นฐาน เช่น ชื่อและประเภท:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## อ่านแมโคร

Aspose.Words นอก จาก นี้ ยัง ทํา ให้ ผู้ ใช้ มี ความ สามารถ ที่ จะ อ่าน วีบี เอ โค บา.

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการอ่าน VBA Macros จากเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## แก้ไขมาสก์

ใช้ Aspose.Words, ผู้ใช้สามารถแก้ไข VBA Mass ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีแก้ไข VBA Macros โดยใช้ [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode) คุณสมบัติ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Colne VBA โครงการ

ด้วย Aspose.Words ยังเป็นไปได้ที่จะโคลนโครงการ VBA

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโคลนโครงการ VBA โดยใช้ [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) คุณสมบัติที่สร้างสําเนาโครงการที่มีอยู่แล้ว:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Colne VBA มอดูล

คุณสามารถโคลน VBA โมดูลได้หากจําเป็น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโคลนโมดูล VBA โดยใช้ [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) คุณสมบัติที่สร้างสําเนาโครงการที่มีอยู่

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
