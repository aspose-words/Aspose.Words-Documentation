---
title: แปลงเป็น PDF/A และ PDF/UA
second_title: Aspose.Words สำหรับ .NET
articleTitle: เรียนรู้คุณสมบัติของการแปลงเป็น PDF/A และ PDF/UA
linktitle: เรียนรู้คุณสมบัติของการแปลงเป็น PDF/A และ PDF/UA
description: "แปลงเป็น PDF/A-1, PDF/A-2, PDF/A-4 และ PDF/UA โดยใช้ C# เลือกมาตรฐาน PDF ที่ดีที่สุดในการแปลงเอกสารโดยใช้ C#"
type: docs
weight: 25
url: /th/net/learn-features-of-conversion-to-pdf-a-pdf-ua/
---

PDF เป็นรูปแบบหน้าตายตัวที่ได้รับความนิยมอย่างมากในหมู่ผู้ใช้ และได้รับการสนับสนุนอย่างกว้างขวางจากแอพพลิเคชั่นต่างๆ เนื่องจากเอกสาร PDF จะมีลักษณะเหมือนกันบนอุปกรณ์ใดๆ ด้วยเหตุนี้ การแปลงเป็น PDF จึงเป็นคุณสมบัติที่สำคัญของ Aspose.Words

PDF เป็นรูปแบบที่ซับซ้อนในตัวเอง เนื่องจากมีโครงสร้างไฟล์เฉพาะ โมเดลกราฟิก การฝังแบบอักษร และฟังก์ชันเอาต์พุตที่ซับซ้อนบางอย่าง เช่น แท็กโครงสร้างเอกสาร การเข้ารหัส ลายเซ็นดิจิทัล และแบบฟอร์มที่แก้ไขได้ นอกจากนี้ การแปลงเอกสารเป็น PDF ต้องใช้ขั้นตอนการคำนวณหลายขั้นตอน ซึ่งซับซ้อนและใช้เวลานาน

ในบทความต่อไปนี้ เราจะพิจารณาปัญหาหลักที่อาจเกิดขึ้นเมื่อทำงานกับเอกสารในมาตรฐาน PDF ต่างๆ และอธิบายตัวเลือกในการแก้ปัญหา

## รองรับ Aspose.Words มาตรฐาน PDF ใด

ขณะนี้ Aspose.Words อนุญาตให้ผู้ใช้ทำงานกับรูปแบบ PDF/A-1, PDF/A-2 และ PDF/A-4 รวมถึง PDF/UA-1:

* PDF/A-1 มีข้อจำกัดร้ายแรง เช่น ความโปร่งใส และห้ามใช้ตัวเลือกการบีบอัดบางอย่าง
* PDF/A-2 ขจัดข้อจำกัดบางประการของ PDF/A-1 เช่น การรองรับความโปร่งใสและเอฟเฟกต์เลเยอร์ หรือการฝังแบบอักษร OpenType
* PDF/A-4 ถือว่าระดับความสอดคล้องที่ได้รับการแก้ไข: ความสอดคล้องของ PDF/A-4 ปกติเทียบเท่ากับความสอดคล้องระดับ U ของเวอร์ชันก่อนหน้า และความสอดคล้องระดับ A จะถูกลบออก
* เนื้อหา PDF/UA-1 ควรติดแท็กและเป็นมาตรฐานตาม ISO 32000-1: 2008

PDF/A เป็น PDF เวอร์ชันมาตรฐาน ISO ซึ่งมีไว้สำหรับใช้ในการจัดเก็บถาวรและการจัดเก็บเอกสารอิเล็กทรอนิกส์ในระยะยาว ในขณะเดียวกัน PDF/UA ก็เป็น PDF เวอร์ชันมาตรฐานของ ISO อีกเวอร์ชันหนึ่ง ซึ่งออกแบบมาเพื่อให้ผู้พิการที่ใช้เทคโนโลยีอำนวยความสะดวกสามารถเข้าถึงได้ หากต้องการระบุระดับการปฏิบัติตามมาตรฐาน PDF ให้ใช้คุณสมบัติ [Compliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/compliance/) เนื่องจากเงื่อนไขในการจัดเก็บข้อมูล เอกสาร PDF/A จะต้องฝังแบบอักษรทั้งหมดและปิดใช้งานการเข้ารหัส ในขณะที่ PDF/UA จะต้องฝังเฉพาะแบบอักษรทั้งหมดเท่านั้น

ในส่วนนี้ เราจะมาดูการทำงานกับเอกสาร PDF/A หรือ PDF/UA-1 อย่างละเอียดยิ่งขึ้น

## ISO ที่เกี่ยวข้องสำหรับมาตรฐาน PDF

หากต้องการเรียนรู้เพิ่มเติมเกี่ยวกับมาตรฐาน PDF ต่างๆ โปรดตรวจสอบ ISO ต่อไปนี้

* PDF 1.7 = ISO-32000-1: 2008
* PDF 2.0 = ISO-32000-2: 2020
* PDF/A-1 = ISO-19005-1: 2005
* PDF/A-2 = ISO-19005-2: 2011
* PDF/A-4 = ISO-19005-4: 2020
* PDF/UA-1 = ISO-14289: 2014

## ดูสิ่งนี้ด้วย

* [แปลงเอกสารเป็น PDF](/words/th/net/convert-a-document-to-pdf/)
* [วิธีแก้ไขแท็กโครงสร้างเอกสารใน Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [วิธีตรวจสอบหรือแก้ไขภาษาข้อความใน Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [วิธีเปลี่ยนภาษาข้อความใน Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [วิธีเพิ่มข้อความแสดงแทนลงในรูปร่าง รูปภาพ แผนภูมิ กราฟิก SmartArt หรือวัตถุอื่นๆ ใน Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [วิธีเพิ่มข้อความแสดงแทนและข้อมูลเสริมลงในแท็ก](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (หรืออ่านข้อมูลเดียวกันในรูปแบบ [คู่มือผู้ใช้ Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [วิธีการตั้งค่ารายการ ActualText สำหรับข้อความ](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) ส่วน "เพิ่มข้อความตามจริงสำหรับคำย่อ สูตร หรือสัญลักษณ์ที่ไม่ใช่ Unicode"
* [การแมป Unicode สำหรับแบบอักษรสัญลักษณ์ Windows ทั่วไป](http://www.alanwood.net/demos/webdings.html)
