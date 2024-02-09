---
title: การทำงานกับแมโคร VBA ใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับมาโคร VBA
linktitle: การทำงานกับมาโคร VBA
description: "การทำงานกับเอกสารโครงการ VBA โดยใช้ C#"
type: docs
weight: 410
url: /th/net/working-with-vba-macros/
---

Visual Basic for Applications (VBA) สำหรับ Microsoft Word เป็นภาษาการเขียนโปรแกรมที่เรียบง่ายแต่ทรงพลังที่สามารถใช้เพื่อขยายฟังก์ชันการทำงานได้ Aspose.Words API มีคลาสสามคลาสเพื่อเข้าถึงซอร์สโค้ดโปรเจ็กต์ VBA:

- คลาส [VBAProject](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/) ให้การเข้าถึงข้อมูลโครงการ VBA
- คลาส [VBAModuleCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbamodulecollection/) ส่งคืนคอลเลกชันของโมดูลโครงการ VBA
- คลาส [VbaModule](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/) ให้การเข้าถึงโมดูลโครงการ VBA
- การแจงนับ [VbaModuleType](https://reference.aspose.com/words/net/aspose.words.vba/vbamoduletype/) กำหนดประเภทของแบบจำลองในโครงการ VBA โมดูลสามารถเป็นโมดูลขั้นตอน โมดูลเอกสาร โมดูลคลาส หรือโมดูลผู้ออกแบบ

## สร้างโครงการ VBA

Aspose.Words API จัดเตรียมคุณสมบัติ [VbaProject](https://reference.aspose.com/words/net/aspose.words/document/vbaproject/) เพื่อรับหรือตั้งค่า VbaProject ในเอกสาร

ตัวอย่างโค้ดต่อไปนี้สาธิตวิธีการสร้างโครงการ VBA และโมดูล VBA พร้อมด้วยคุณสมบัติพื้นฐาน เช่น ชื่อและประเภท:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## อ่านมาโคร

Aspose.Words ยังให้ผู้ใช้สามารถอ่านมาโคร VBA ได้อีกด้วย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการอ่านแมโคร VBA จากเอกสาร:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## เขียนหรือแก้ไขมาโคร

เมื่อใช้ Aspose.Words ผู้ใช้สามารถแก้ไขมาโคร VBA ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีแก้ไขแมโคร VBA โดยใช้คุณสมบัติ [SourceCode](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/sourcecode/):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## โครงการโคลน VBA

ด้วย Aspose.Words คุณยังสามารถโคลนโครงการ VBA ได้อีกด้วย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโคลนโครงการ VBA โดยใช้คุณสมบัติ [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/clone/) ซึ่งสร้างสำเนาของโครงการที่มีอยู่:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## โคลนโมดูล VBA

คุณยังสามารถโคลนโมดูล VBA ได้หากจำเป็น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโคลนโมดูล VBA โดยใช้คุณสมบัติ [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/clone/) ซึ่งสร้างสำเนาของโครงการที่มีอยู่:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## ทำงานร่วมกับการอ้างอิงโครงการ VBA

Aspose.Words API จัดเตรียมคลาส [VbaReferenceCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbareferencecollection/) เพื่อทำงานกับการอ้างอิงโครงการ VBA ที่แสดงถึงคอลเลกชันของการอ้างอิงโครงการ VBA

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีลบการอ้างอิงบางส่วนออกจากคอลเลกชันการอ้างอิงจากโครงการ VBA:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}