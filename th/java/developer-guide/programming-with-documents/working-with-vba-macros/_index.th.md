---
title: การทำงานกับมาโครVBAในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับมาโครVBA
linktitle: การทำงานกับมาโครVBA
description: "การทำงานกับเอกสารVBAโครงการโดยใช้Java."
type: docs
weight: 410
url: /th/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basicสำหรับการใช้งาน(VBA)สำหรับMicrosoft Wordเป็นภาษาการเขียนโปรแกรมที่เรียบง่ายแต่มีประสิทธิภาพที่ส Aspose.WordsAPIให้สามชั้นเรียนที่จะได้รับการเข้าถึงVBAรหัสแหล่งที่มาของโครงการ:

- คลาส[VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/)ให้การเข้าถึงข้อมูลโครงการVBA
- คลาส[VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/)ส่งคืนคอลเล็กชันของโมดูลโครงการVBA
- คลาส[VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/)ให้การเข้าถึงโมดูลโครงการVBA

## สร้างโครงการVBA

Aspose.WordsAPIให้[VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject)คุณสมบัติที่จะได้รับหรือตั้งVbaProjectในเอกสาร.

ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นถึงวิธีการสร้างVBAโครงการและVBAโมดูลพร้อมกับคุณสมบัติพื้นฐา:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## อ่านมาโคร

Aspose.Wordsนอกจากนี้ยังมีผู้ใช้ที่มีความสามารถในการอ่านVBAแมโคร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการอ่านVBAแมโครจากเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## แก้ไขแมโคร

โดยใช้Aspose.Wordsผู้ใช้สามารถปรับเปลี่ยนVBAมาโคร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปรับเปลี่ยนVBAมาโครโดยใช้คุณสมบัติ[SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## โคลนVBAโครงการ

ด้วยAspose.Wordsก็ยังเป็นไปได้ที่จะโคลนVBAโครงการ.

ตัวอย่างรหัสต่อไปนี้สาธิตวิธีการโคลนโปรเจ็กต์VBAโดยใช้คุณสมบัติ[Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone)ซึ่งสร้างสำเนาของโปร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## โคลนVBAโมดูล

คุณยังสามารถโคลนโมดูลVBAถ้าจำเป็น.

ตัวอย่างรหัสต่อไปนี้สาธิตวิธีการโคลนโมดูลVBAโดยใช้คุณสมบัติ[Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone)ซึ่งสร้างสำเนาของโปรเจ็กต์

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
