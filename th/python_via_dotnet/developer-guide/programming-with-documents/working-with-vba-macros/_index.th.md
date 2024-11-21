---
title: การทำงานกับแมโคร VBA ใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับมาโคร VBA
linktitle: การทำงานกับมาโคร VBA
description: "สร้าง อ่าน เขียน โคลน และจัดการมาโคร VBA ในเอกสารโดยใช้ Python"
type: docs
weight: 410
url: /th/python-net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic for Applications (VBA) สำหรับ Microsoft Word เป็นภาษาการเขียนโปรแกรมที่เรียบง่ายแต่ทรงพลังที่สามารถใช้เพื่อขยายฟังก์ชันการทำงานได้ Aspose.Words API มีคลาสสามคลาสเพื่อเข้าถึงซอร์สโค้ดโปรเจ็กต์ VBA:

- คลาส [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) ให้การเข้าถึงข้อมูลโครงการ VBA
- คลาส [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) ส่งคืนคอลเลกชันของโมดูลโครงการ VBA
- คลาส [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) ให้การเข้าถึงโมดูลโครงการ VBA
- การแจงนับ [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) กำหนดประเภทของแบบจำลองในโครงการ VBA โมดูลสามารถเป็นโมดูลขั้นตอน โมดูลเอกสาร โมดูลคลาส หรือโมดูลผู้ออกแบบ

## สร้างโครงการ VBA

Aspose.Words API จัดเตรียมคุณสมบัติ [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) เพื่อรับหรือตั้งค่า [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) ในเอกสาร

ตัวอย่างโค้ดต่อไปนี้สาธิตวิธีการสร้างโครงการ VBA และโมดูล VBA พร้อมด้วยคุณสมบัติพื้นฐาน เช่น [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) และ [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## อ่านมาโคร

Aspose.Words ยังให้ผู้ใช้สามารถอ่านมาโคร VBA ได้อีกด้วย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการอ่านแมโคร VBA จากเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## เขียนหรือแก้ไขมาโคร

เมื่อใช้ Aspose.Words ผู้ใช้สามารถแก้ไขมาโคร VBA ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีแก้ไขแมโคร VBA โดยใช้คุณสมบัติ [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## โครงการโคลน VBA

ด้วย Aspose.Words คุณยังสามารถโคลนโครงการ VBA ได้อีกด้วย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโคลนโครงการ VBA โดยใช้คุณสมบัติ [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) ซึ่งสร้างสำเนาของโครงการที่มีอยู่:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## โคลนโมดูล VBA

คุณยังสามารถโคลนโมดูล VBA ได้หากจำเป็น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโคลนโมดูล VBA โดยใช้คุณสมบัติ [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) ซึ่งสร้างสำเนาของโครงการที่มีอยู่:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## ทำงานร่วมกับการอ้างอิงโครงการ VBA

Aspose.Words API มีคลาส [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) เพื่อทำงานกับการอ้างอิงโครงการ VBA ที่แสดงถึงคอลเลกชันของการอ้างอิงโครงการ VBA

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีลบการอ้างอิงบางส่วนออกจากคอลเลกชันการอ้างอิงจากโครงการ VBA:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}
