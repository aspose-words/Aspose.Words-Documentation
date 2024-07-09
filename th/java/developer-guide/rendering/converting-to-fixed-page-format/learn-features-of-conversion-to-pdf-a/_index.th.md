---
title: การแปลงเป็น PDF/ A และ PDF/ UA
second_title: Aspose.Words สําหรับ Java
articleTitle: เรียน รู้ ลักษณะ เฉพาะ ของ การ เปลี่ยน มา เป็น PDF/A และ PDF/UA
linktitle: เรียน รู้ ลักษณะ เฉพาะ ของ การ เปลี่ยน มา เป็น PDF/A และ PDF/UA
description: "แปลงเป็น PDF/ A-1, PDF/ A-2, PDF/ A-4 และ PDF/UA ใช้ Java. เลือกมาตรฐาน PDF ที่ดีที่สุดที่จะแปลงเอกสารโดยใช้ Java."
type: docs
weight: 25
url: /th/java/learn-features-of-conversion-to-pdf-a-pdf-ua/
---

PDF เป็นรูปแบบหน้าคงที่ที่ได้รับความนิยมมากในหมู่ผู้ใช้ และได้รับการรองรับอย่างกว้างขวางจากโปรแกรมต่าง ๆ เนื่องจากเอกสาร PDF ดูเหมือนกันกับอุปกรณ์ใด ๆ ด้วยเหตุผลนี้ การแปลงเป็น PDF เป็นคุณสมบัติสําคัญของ Aspose.Words.

PDF เป็นรูปแบบที่ซับซ้อนโดยตัวมันเอง เนื่องจากมันมีโครงสร้างแฟ้มเฉพาะ, แบบกราฟิก, แบบฝังตัวแบบแบบอักษร, และคุณสมบัติต่าง ๆ ที่ซับซ้อน เช่น ป้ายโครงสร้างเอกสาร, การเข้ารหัส, ลายเซ็นดิจิทัล และรูปแบบแก้ไขได้ นอกจากนี้ ยังมีการดัดแปลงเอกสารเป็น PDF ต้องการขั้นตอนการคํานวณหลายขั้นตอน ซึ่งมีความซับซ้อนและใช้เวลาการใช้งาน

ใน ตอน นี้ เรา จะ พิจารณา ปัญหา หลัก ที่ อาจ เกิด ขึ้น เมื่อ ทํา งาน กับ เอกสาร ต่าง ๆ ที่ มี มาตรฐาน PDF และ อธิบาย วิธี แก้ ปัญหา เหล่า นั้น.

## PDF ตัวใด มาตรฐาน Aspose.Words การรองรับ

Aspose.Words ตอนนี้อนุญาตให้ผู้ใช้ทํางานร่วมกับรูปแบบ PDF/A-1, PDF/A-2 และ PDF/A-4 รวมทั้ง PDF/UA-1:

* PDF/ A-1 มีข้อจํากัดร้ายแรงเช่น ความโปร่งใส และตัวเลือกการบีบข้อมูลบางอย่างถูกห้าม
* PDF/ A-2 ขจัดข้อจํากัดบางอย่างของ PDF/ A-1 เช่น การรองรับความโปร่งใสและลูกเล่นชั้น หรือการฝังแบบอักษรแบบ OpenTranslate
* PDF/A-4 สันนิษฐานว่ามีการแก้ไขค่าระดับความต่อเนื่อง: การตามแบบ PDF/A-4 ตามปกตินั้นเทียบเท่ากับระดับความต่อเนื่องของรุ่นก่อนหน้าของ U, และระดับความต่อเนื่อง A ถูกเอาออกไป
* PDF/ UA-1 เนื้อหาควรจะติดแท็กและมาตรฐานตาม ISO 32000-1: 2008

PDF/ A คือ ISO- รุ่นมาตรฐานของ PDF ตั้งใจจะใช้ในโบราณคดี และจัดเก็บเอกสารอิเล็กทรอนิกส์ในระยะยาว ในเวลาเดียวกัน PDF/UA เป็นคนอื่น ISO รุ่นมาตรฐานของ PDF ออกแบบมาเพื่อประกันการเข้าถึง สําหรับคนที่พิการ ที่ใช้เทคโนโลยีช่วยเหลือ เพื่อกําหนดระดับของการทําตามมาตรฐาน PDF, ให้ใช้ [Compliance](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getCompliance) ทรัพย์สิน เนื่องจากเงื่อนไขการจัดเก็บ เอกสาร PDF/ A จะต้องฝังแบบอักษรทั้งหมด และปิดการใช้งานการเข้ารหัส ในขณะที่ PDF/UA ต้องฝังเพียงแบบอักษรทั้งหมด

ในส่วนนี้ เราจะตรวจสอบอย่างใกล้ชิดเกี่ยวกับการทํางาน กับเอกสาร PDF/A หรือ PDF/UA-1

## ลิฟต์ ISO สําหรับ PDF มาตรฐาน

เพื่อ จะ เรียน รู้ มาก ขึ้น เกี่ยว กับ มาตรฐาน PDF ที่ ต่าง กัน จง ตรวจ สอบ ต่อ ไป นี้ ISOS:

- PDF 1. 7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2. 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## ดูด้วย

* [วิธีแก้ไขป้ายกํากับของเอกสารใน Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [จะตรวจสอบหรือแก้ไขภาษาข้อความอย่างไร Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [จะเปลี่ยนภาษาข้อความอย่างไร Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [จะเพิ่มข้อความทางเลือกไปยังรูปร่าง, ภาพ, แผนภูมิ, กราฟิกแบบฉลาด, หรือวัตถุอื่น ๆ ใน Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [วิธี เพิ่ม ข้อ และ เพิ่ม ข้อมูล เข้า กับ ป้ายกํากับ](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (หรืออ่านข้อมูลเดียวกัน [Adobe Acrobat คู่มือผู้ใช้](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [จะตั้งค่ารายการข้อความสําหรับข้อความ](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), " ข้อ ความ ที่ ใช้ การ ได้ จริง สําหรับ คํา สั่ง, สูตร, หรือ สัญลักษณ์ ที่ ไม่ ใช่ ยู นิ โค้ด *
* [การจับคู่ยูนิโค้ดสําหรับข้อมูลทั่วไป Windows แบบอักษรสัญลักษณ์](http://www.alanwood.net/demos/webdings.html)
