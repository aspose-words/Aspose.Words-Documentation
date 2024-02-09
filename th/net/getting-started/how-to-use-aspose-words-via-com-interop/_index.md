---
title: Aspose.Words สำหรับ .NET ผ่าน COM Interop
second_title: Aspose.Words สำหรับ .NET
articleTitle: วิธีใช้ Aspose.Words สำหรับ .NET ผ่าน COM Interop
linktitle: วิธีใช้ Aspose.Words สำหรับ .NET ผ่าน COM Interop
type: docs
description: "ใช้ Aspose.Words สำหรับ .NET ผ่าน COM Interop ใน Python, PHP, VBScript, JScript และภาษาการเขียนโปรแกรมอื่นๆ"
weight: 130
url: /th/net/how-to-use-aspose-words-via-com-interop/
---

ข้อมูลในหัวข้อนี้ใช้กับสถานการณ์ที่คุณต้องการใช้ Aspose.Words สำหรับ .NET ผ่าน COM Interop ในภาษาการเขียนโปรแกรมใดๆ ต่อไปนี้:

- ASP
- Delphi ([ตัวอย่าง](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
- เจสคริปท์
- Perl
- PHP
- พาวเวอร์บิลเดอร์
- Python
- วีบีสคริปต์
- Visual Basic

## ทำงานร่วมกับ COM Interop

Aspose.Words สำหรับ .NET ดำเนินการภายใต้การควบคุมของ .NET Framework และเรียกว่าโค้ดที่ได้รับการจัดการ โค้ดที่เขียนในภาษาข้างต้นทั้งหมดทำงานนอก .NET Framework และเรียกว่าโค้ดที่ไม่มีการจัดการ การโต้ตอบระหว่างโค้ดที่ไม่มีการจัดการและ Aspose.Words เกิดขึ้นผ่านเครื่องมืออำนวยความสะดวก .NET ที่เรียกว่า COM Interop

ออบเจ็กต์ Aspose.Words คือออบเจ็กต์ .NET แต่เมื่อใช้ผ่าน COM Interop ออบเจ็กต์เหล่านั้นจะปรากฏเป็นออบเจ็กต์ COM ในภาษาการเขียนโปรแกรมของคุณ ดังนั้นจึงเป็นการดีที่สุดที่จะตรวจสอบให้แน่ใจว่าคุณรู้วิธีสร้างและใช้ออบเจ็กต์ COM ในภาษาการเขียนโปรแกรมของคุณก่อนที่คุณจะเริ่มใช้ Aspose.Words

นี่คือหัวข้อที่คุณจะต้องเชี่ยวชาญในที่สุด:

- การใช้วัตถุ COM ในภาษาการเขียนโปรแกรมของคุณ ดูเอกสารประกอบภาษาการเขียนโปรแกรมของคุณและหัวข้อเฉพาะภาษาเพิ่มเติมในเอกสารนี้
- การทำงานกับวัตถุ COM เปิดเผยโดย .NET COM Interop ดู [Interoperating ด้วยรหัสที่ไม่มีการจัดการ](https://learn.microsoft.com/en-us/dotnet/framework/interop/) และ [การเปิดเผยส่วนประกอบ .NET Framework เป็น COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) ใน MSDN
- โมเดลออบเจ็กต์เอกสาร Aspose.Words ดู Aspose.Words [คู่มือนักพัฒนา](/words/th/net/developer-guide/) และ [API Reference](https://reference.aspose.com/words/net/)

## ลงทะเบียน Aspose.Words สำหรับ .NET ด้วย COM Interop

หลังจาก [การติดตั้ง](/words/th/net/installation/) คุณจะต้องลงทะเบียน Aspose.Words สำหรับ COM Interop โดยใช้ยูทิลิตี้ `regasm.exe`

`regasm.exe` เป็นเครื่องมือที่รวมอยู่ใน .NET Framework SDK เครื่องมือ .NET Framework SDK ทั้งหมดอยู่ในไดเร็กทอรี `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\` เช่น *C:\Windows\Microsoft .NET\Framework\v4.0.30319*

หากต้องการรับไฟล์ tlb ให้รัน `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` ใน cmd โดยที่ `<installdir>` คือไดเร็กทอรีที่คุณติดตั้ง Aspose.Words ซึ่งโดยทั่วไปคือ `%USERPROFILE%\.nuget\packages\aspose.words\`

## ทำงานร่วมกับ Aspose.Words ผ่าน COM Interop

### ProgIDs

ProgID ย่อมาจาก "ตัวระบุทางโปรแกรม" ซึ่งเป็นชื่อของคลาส `COM` ที่คุณต้องใช้เพื่อสร้างวัตถุ

ปัจจุบัน Aspose.Words กำหนดออบเจ็กต์ COM ที่เผยแพร่ต่อสาธารณะได้สี่รายการ ProgIDs ของพวกเขาคือ:

- คอมเฮลเปอร์
- เอกสาร
- ตัวสร้างเอกสาร
- ใบอนุญาต

ProgIDs ประกอบด้วยชื่อไลบรารี ("Aspose.Words") และชื่อคลาส

### ประเภทไลบรารี

ระหว่างการติดตั้ง Aspose.Words.tlb (ไลบรารีประเภท COM) จะถูกคัดลอกไปยังคอมพิวเตอร์ของคุณไปที่:

- สำหรับ .NET Framework 4.0 ถึง **<installdir>\lib\net40-ไคลเอนต์**

หากภาษาการเขียนโปรแกรมของคุณ (เช่น Visual Basic หรือ Delphi) อนุญาตให้คุณอ้างอิงไลบรารีประเภท `COM` ได้ ให้เพิ่มการอ้างอิงไปยัง **Aspose.Words.tlb** แล้วคุณจะสามารถดูคลาส Aspose.Words วิธีการ คุณสมบัติ และการแจงนับทั้งหมดใน Object Browser ของคุณได้

### การสร้างวัตถุ COM

การสร้างวัตถุ .NET นั้นคล้ายกับการสร้างวัตถุ COM ปกติ:

**VBScript**

```
ตัวช่วยติ่มซำ
ตั้งค่าตัวช่วย = CreateObject("Aspose.Words.ComHelper")
 
```

เมื่อสร้างแล้ว คุณจะสามารถเข้าถึงวิธีการและคุณสมบัติของออบเจ็กต์ได้เหมือนกับว่าเป็นออบเจ็กต์ `COM`:

**VBScript**

```
หมอติ่มซำ
ตั้ง doc = helper.Open("C:\my.doc")
 
```

วิธีการบางวิธีมีการโอเวอร์โหลดและจะถูกเปิดเผยโดย COM Interop โดยมีการเพิ่มส่วนต่อท้ายที่เป็นตัวเลข ยกเว้นวิธีแรกสุดที่ยังคงไม่เปลี่ยนแปลง ตัวอย่างเช่น การโอเวอร์โหลดวิธี `Document.Save` จะกลายเป็น `Document.Save`, `Document.Save_2`, `Document.Save_3` และอื่นๆ

สำหรับข้อมูลเพิ่มเติม โปรดดูบทความเฉพาะภาษาเพิ่มเติมในเอกสารนี้

### การสร้างชุดประกอบ Wrapper

หากคุณต้องการใช้คลาส วิธีการ และคุณสมบัติ Aspose.Words จำนวนมาก ให้พิจารณาสร้างชุดประกอบ wrapper (โดยใช้ C# หรือภาษาการเขียนโปรแกรม .NET อื่นๆ) ซึ่งจะช่วยหลีกเลี่ยงการใช้ Aspose.Words โดยตรงจากโค้ดที่ไม่มีการจัดการ

แนวทางที่ดีคือการพัฒนาแอสเซมบลี .NET ที่อ้างอิงถึง Aspose.Words และทำงานทั้งหมดด้วย และเปิดเผยเฉพาะชุดคลาสและวิธีการขั้นต่ำให้กับโค้ดที่ไม่มีการจัดการเท่านั้น แอปพลิเคชันของคุณควรใช้งานได้กับไลบรารี wrapper ของคุณเท่านั้น

การลดจำนวนคลาสและวิธีการที่คุณต้องเรียกใช้ผ่าน COM Interop อาจทำให้โปรเจ็กต์ของคุณง่ายขึ้น เนื่องจากการใช้คลาส .NET ผ่าน COM Interop มักจะต้องใช้ทักษะขั้นสูง