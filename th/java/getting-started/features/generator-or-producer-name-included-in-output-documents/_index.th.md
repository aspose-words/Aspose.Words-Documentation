---
title: ชื่อผู้ผลิตในการแสดงผล
second_title: Aspose.Words สําหรับ Java
articleTitle: ชื่อเครื่องสร้างหรือผู้ผลิตรวมอยู่ในเอกสารส่งออก
linktitle: ชื่อเครื่องสร้างหรือผู้ผลิตรวมอยู่ในเอกสารส่งออก
description: "Aspose.Words สําหรับ Java เพิ่มชื่อและหมายเลขรุ่นที่ใช้สร้างเอกสาร คุณสามารถพบข้อมูลนี้ได้ในเอกสารในรูปแบบที่ขึ้นอยู่กับรูปแบบแฟ้มผลลัพธ์"
type: docs
weight: 70
url: /th/java/generator-or-producer-name-included-in-output-documents/
---

คุณสามารถทราบว่ามีการผลิตเอกสารโดยการใช้หรือไม่ Aspose.Words สําหรับ Java. คุณสามารถหาเลขเวอร์ชันของ Aspose.Words สําหรับ Java ซึ่งใช้สร้างเอกสารผลลัพธ์เฉพาะตัว Aspose.Words เขียนข้อมูลนี้ลงในเอกสารที่สร้างขึ้นมาโดยตรง

หมายเลขรุ่นถูกกําหนดในรูปแบบ *YY.MM.N* หรือ *YY.M.N*, ตัวอย่างเช่น 23.12.0 หรือ 24.0.<br/>
นี่ *YY* เป็นสองหลักสุดท้ายของปีปล่อยตัว *M* หรือ *MM* เป็นเดือนที่ออก (1–12), และ *N* เป็นหมายเลขปล่อยเล็กๆ ปกติแล้ว *N* คือ 0

{{% alert color="primary" %}}

สังเกตว่าคุณไม่สามารถสอน Aspose.Words เพื่อเปลี่ยนหรือลบข้อมูลนี้ออกจากเอกสารส่งออก

{{% /alert %}}

ขึ้นอยู่กับรูปแบบแฟ้มผลลัพธ์ ตารางต่อไปนี้รายการวิธีที่คุณสามารถใช้เพื่อทราบชื่อและหมายเลขรุ่นของเครื่องกําเนิดไฟฟ้า

| บันทึกรูปแบบ ค่า | ข้อความ, หมายเหตุ, หรือฟิลด์ที่เขียนอยู่ในแฟ้ม | วิธี หา |
|  :-  |  :-  |  :-  |
|  `Doc`  | `AWJ.YY.M.N`<br/>ยกตัวอย่างเช่น<br/>`AWJ.24.1.0` | DOC ที่สร้างโดย Aspose.Words ได้ 8 ไบต์. คุณสามารถตรวจสอบได้ โดยการเปิดแฟ้มในเครื่องมือแก้ไขข้อความไบนารี |
|  `Dot`  | `AWJ.YY.M.N`<br/>ยกตัวอย่างเช่น<br/>`AWJ.24.1.0` | DOT สร้างโดย Aspose.Words ได้ 8 ไบต์. คุณสามารถตรวจสอบได้ โดยการเปิดแฟ้มในเครื่องมือแก้ไขข้อความไบนารี |
|  `Docx`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>ยกตัวอย่างเช่น<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | เปลี่ยนชื่อแฟ้มเป็น .zip คลาย ZIP เปิด ~/word/document.xml เพื่อดูหมายเหตุนี้ |
|  `Docm`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>ยกตัวอย่างเช่น<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | เปลี่ยนชื่อแฟ้มเป็น .zip คลาย ZIP เปิด ~/word/document.xml เพื่อดูหมายเหตุนี้ |
|  `Dotx`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>ยกตัวอย่างเช่น<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | เปลี่ยนชื่อแฟ้มเป็น .zip คลาย ZIP เปิด ~/ document.xml เพื่อดูหมายเหตุนี้ |
|  `Dotm`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>ยกตัวอย่างเช่น<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | เปลี่ยนชื่อแฟ้มเป็น .zip คลาย ZIP เปิด ~/word/document.xml เพื่อดูหมายเหตุนี้ |
|  `FlatOpc`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>ยกตัวอย่างเช่น<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .xml แฟ้มมีหมายเหตุนี้ คุณ สามารถ เปิด ใน โน้ต แพด เพื่อ ดู ข้อ คิด เห็น นี้. |
|  `FlatOpcMacroEnabled`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>ยกตัวอย่างเช่น<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .xml แฟ้มมีหมายเหตุนี้ คุณ สามารถ เปิด ใน โน้ต แพด เพื่อ ดู ข้อ คิด เห็น นี้. |
|  `FlatOpcTemplate`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>ยกตัวอย่างเช่น<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .xml แฟ้มมีหมายเหตุนี้ คุณ สามารถ เปิด ใน โน้ต แพด เพื่อ ดู ข้อ คิด เห็น นี้. |
|  `FlatOpcTemplateMacroEnabled`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>ยกตัวอย่างเช่น<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .xml แฟ้มมีหมายเหตุนี้ คุณ สามารถ เปิด ใน โน้ต แพด เพื่อ ดู ข้อ คิด เห็น นี้. |
|  `Rtf`  | `{0}`<br/>ยกตัวอย่างเช่น<br/>`{\*\generator Aspose.Words for Java 24.1.0;}` | .tf แฟ้มบรรจุหมายเหตุนี้ คุณ สามารถ เปิด ใน โน้ต แพด เพื่อ ดู ข้อ คิด เห็น นี้. |
|  `WordML`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>ยกตัวอย่างเช่น<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .xml แฟ้มมีหมายเหตุนี้ คุณ สามารถ เปิด ใน โน้ต แพด เพื่อ ดู ข้อ คิด เห็น นี้. |
|  พ.ศ | <ul><li>**โปรแกรม:** Aspose.Words</li><li>**PDF ผู้ผลิต:** `Aspose.Words for Java YY.M.N`, ยกตัวอย่างเช่น<br/>`Aspose.Words for Java 24.1.0`</li></ul> | ![todo:image_alt_text](/words/java/generator-or-producer-name-included-in-output-documents/generator-or-producer-name-included-in-output-documents_1) |
|  `Xps`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>ยกตัวอย่างเช่น<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | เปลี่ยนชื่อแฟ้มเป็น .zip คลาย ZIP ใน XPS พบหมายเหตุนี้ได้ใน ~/ documents/1/pages/1.fpage |
|  `XamlFixed`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>ยกตัวอย่างเช่น<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` |  .xml แฟ้มมีหมายเหตุนี้ คุณ สามารถ เปิด ใน โน้ต แพด เพื่อ ดู ข้อ คิด เห็น นี้ |
|  `Svg`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>ยกตัวอย่างเช่น<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` |  .xml แฟ้มมีหมายเหตุนี้ คุณ สามารถ เปิด ใน โน้ต แพด เพื่อ ดู ข้อ คิด เห็น นี้ |
|  `HtmlFixed`  |  `<meta name="generator" content="Aspose.Words for Java YY.M.N" />`<br/>ยกตัวอย่างเช่น<br/>`meta name="generator" content="Aspose.Words for Java 24.1.0" />` |  แฟ้ม HTML บรรจุแท็กนี้ คุณสามารถเปิดมันใน Notepad เพื่อดู |
|  `OpenXps`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>ยกตัวอย่างเช่น<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | เปลี่ยนชื่อแฟ้มเป็น .zip คลาย ZIP ใน OpenXps ความเห็นนี้สามารถพบได้ใน ~/ documents/1/pages/1.fpage |
|  `Ps`  | `%Generated by Aspose.Words for Java YY.M.N`<br/>ยกตัวอย่างเช่น<br/>`%Generated by Aspose.Words for Java 24.1.0` | .แฟ้ม .ps มีหมายเหตุนี้ คุณ สามารถ เปิด ใน โน้ต แพด เพื่อ ดู ข้อ คิด เห็น นี้. |
|  `Pcl`  |  –  |  –  |
|  `Html`  |  `<meta name="generator" content="Aspose.Words for Java YY.M.N" />`<br/>ยกตัวอย่างเช่น<br/>`meta name="generator" content="Aspose.Words for Java 24.1.0" />` | แฟ้ม HTML บรรจุแท็กนี้ คุณสามารถเปิดมันใน Notepad เพื่อดู |
|  `Mhtml`  |  `<meta name="generator" content="Aspose.Words for Java YY.M.N" />`<br/>ยกตัวอย่างเช่น<br/>`meta name="generator" content="Aspose.Words for Java 24.1.0" />` | แฟ้ม MHTML มีป้ายกํากับนี้ คุณสามารถเปิดมันใน Notepad เพื่อดู |
|  `Epub`  |  `<meta name="generator" content="Aspose.Words for Java YY.M.N" />`<br/>ยกตัวอย่างเช่น<br/>`meta name="generator" content="Aspose.Words for Java 24.1.0" />` | เปลี่ยนชื่อแฟ้มเป็น .zip คลาย ZIP ไปยัง ~/OEBS/ < file_ name>.html. |
|  `Odt`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>ยกตัวอย่างเช่น<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | เปลี่ยนชื่อแฟ้มเป็น .zip คลาย ZIP ตรวจสอบใน ~/ Confect.xml |
|  `Ott`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>ยกตัวอย่างเช่น<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | เปลี่ยนชื่อแฟ้มเป็น .zip คลาย ZIP ตรวจสอบใน ~/ Confect.xml |
|  `Text`  |  –  |  –  |
|  `XamlFlow`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>ยกตัวอย่างเช่น<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` |  .xml แฟ้มมีหมายเหตุนี้ คุณ สามารถ เปิด ใน โน้ต แพด เพื่อ ดู ข้อ คิด เห็น นี้ |
|  `XamlFlowPack`  |  `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br/>ยกตัวอย่างเช่น<br/>`<!-- Generated by Aspose.Words for Java 24.1.0 -->` |  .xml แฟ้มมีหมายเหตุนี้ คุณ สามารถ เปิด ใน โน้ต แพด เพื่อ ดู ข้อ คิด เห็น นี้ |
|  `Markdown`  |  –  |  –  |
|  `Tiff`  |  –  |  –  |
|  `Png`  |  –  |  –  |
|  `Bmp`  |  –  |  –  |
|  `Emf`  |  –  |  –  |
|  `Jpeg`  |  –  |  –  |
|  `Gif`  |  –  |  –  |

{{% alert color="primary" %}}

นอก จาก นี้ ยัง มี การ เพิ่ม ส่วน ผสม ที่ แสดง อยู่ ใน โต๊ะ ด้วย. เลขรุ่นของ Aspose.Words สามารถเขียนได้หลายรูปแบบ ขึ้นอยู่กับการตั้งค่าการส่งออก

สภาพ การณ์ เพิ่ม เติม เหล่า นี้ ไม่ ได้ พรรณนา ไว้ ใน โต๊ะ ข้าง บน.

{{% /alert %}}

