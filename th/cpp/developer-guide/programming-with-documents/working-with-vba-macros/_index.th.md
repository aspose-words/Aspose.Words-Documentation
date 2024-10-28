---
title: การทำงานกับมาโครVBAในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับมาโครVBA
linktitle: การทำงานกับมาโครVBA
description: "การทำงานกับเอกสารVBAโครงการโดยใช้C++."
type: docs
weight: 410
url: /th/cpp/working-with-vba-macros/
---

Visual Basicสำหรับการใช้งาน(VBA)สำหรับMicrosoft Wordเป็นภาษาการเขียนโปรแกรมที่เรียบง่ายแต่มีประสิทธิภาพที่ส Aspose.WordsAPIให้สามชั้นเรียนที่จะได้รับการเข้าถึงVBAรหัสแหล่งที่มาของโครงการ:

- คลาส[VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/)ให้การเข้าถึงข้อมูลโครงการVBA
- คลาส[VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/)ส่งคืนคอลเล็กชันของโมดูลโครงการVBA
- คลาส[VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/)ให้การเข้าถึงโมดูลโครงการVBA

## สร้างโครงการVBA

Aspose.WordsAPIให้`Document.VbaProject`คุณสมบัติที่จะได้รับหรือตั้งVbaProjectในเอกสาร.

ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นถึงวิธีการสร้างVBAโครงการและVBAโมดูลพร้อมกับคุณสมบัติพื้นฐา:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## อ่านมาโคร

Aspose.Wordsนอกจากนี้ยังมีผู้ใช้ที่มีความสามารถในการอ่านVBAแมโคร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการอ่านVBAแมโครจากเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## เขียนหรือแก้ไขแมโคร

โดยใช้Aspose.Wordsผู้ใช้สามารถปรับเปลี่ยนVBAมาโคร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปรับเปลี่ยนVBAมาโครโดยใช้คุณสมบัติ[SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## โคลนVBAโครงการ

ด้วยAspose.Wordsก็ยังเป็นไปได้ที่จะโคลนVBAโครงการ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโคลนโปรเจ็กต์VBAโดยใช้คุณสมบัติ[Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/)ซึ่งสร้างสำเนาของโปร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## โคลนVBAโมดูล

คุณยังสามารถโคลนโมดูลVBAถ้าจำเป็น.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโคลนโมดูลVBAโดยใช้คุณสมบัติ[Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/)ซึ่งสร้างสำเนาของโปรเจ็ก:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
