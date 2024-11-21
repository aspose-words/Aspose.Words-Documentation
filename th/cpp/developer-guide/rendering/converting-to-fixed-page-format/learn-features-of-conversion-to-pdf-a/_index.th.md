---
title: แปลงเป็นPDF/AและPDF/UA
second_title: Aspose.WordsสำหรับC++
articleTitle: เรียนรู้คุณสมบัติของการแปลงเป็นPDF/AและPDF/UA
linktitle: เรียนรู้คุณสมบัติของการแปลงเป็นPDF/AและPDF/UA
description: "แปลงเป็นPDF/A-1, PDF/A-2, PDF/A-4 และPDF/UAโดยใช้C++ เลือกPDFมาตรฐานที่ดีที่สุดเพื่อแปลงเอกสารโดยใช้ С ++."
type: docs
weight: 35
url: /th/cpp/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

PDFเป็นรูปแบบหน้าคงที่เป็นที่นิยมมากในหมู่ผู้ใช้และได้รับการสนับสนุนอย่างกว้างขวางโดยโปรแกรมประยุกต์ต่างๆ,เป็นPDFเอกสารที่มีลักษณะเดียวกันบนอุปกรณ์ใดๆ. ด้วยเหตุนี้การแปลงเป็นPDFเป็นคุณลักษณะสำคัญของAspose.Words.

PDFเป็นรูปแบบที่ซับซ้อนด้วยตัวเองเนื่องจากมีโครงสร้างไฟล์ที่เฉพาะเจาะจงรูปแบบกราฟิ นอกจากนี้การแปลงเอกสารเป็นPDFต้องใช้ขั้นตอนการคำนวณหลายขั้นตอนซึ่งมีความซับซ้อนและใช้เวลานาน.

ในส่วนนี้เราจะพิจารณาปัญหาหลักที่อาจเกิดขึ้นเมื่อทำงานกับเอกสารในมาตรฐานต่างๆPDFและอธิบายตัวเลือกสำหรับการแก้ปัญหา.

## ซึ่งPDFมาตรฐานAspose.Wordsรองรับ

Aspose.Wordsตอนนี้อนุญาตให้ผู้ใช้สามารถทำงานกับPDF/A-1,PDF/A-2และPDF/A-4รูปแบบและPDF/UA-1:

* PDF/A-1มีข้อจำกัดที่ร้ายแรงเช่นความโปร่งใสและตัวเลือกการบีบอัดบางอย่างเป็นสิ่งต้องห้าม
* PDF/A-2ขจัดข้อจำกัดบางส่วนของPDF/A-1เช่นการสนับสนุนของความโปร่งใสและเอฟเฟกต์เลเยอร์หรือการฝังแบบอักษรOpenType
* PDF/A-4ถือว่าระดับความสอดคล้องที่ปรับปรุง:ความสอดคล้องปกติPDF/A-4เทียบเท่ากับระดับความสอดคล้องของรุ่นก่อนหน้าและระดับความสอดคล้องจะถูกลบออก
* PDF/UA-1เนื้อหาควรจะติดแท็กและมาตรฐานตามISO32000-1:2008

PDF/Aเป็นISO-รุ่นมาตรฐานของPDFมีไว้สำหรับใช้ในการเก็บและจัดเก็บเอกสารอิเล็กทรอนิกส์ในระยะยาว ในเวลาเดียวกันPDF/UAเป็นอีกรุ่นISOมาตรฐานของPDFที่ออกแบบมาเพื่อให้แน่ใจว่าการเข้าถึงสำหรับคนพิการที่ใช้เทคโนโลยีช่วยเหลือ เมื่อต้องการระบุระดับของการปฏิบัติตามมาตรฐานPDFให้ใช้คุณสมบัติ[Compliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) เนื่องจากสภาพการจัดเก็บPDF/Aเอกสารต้องฝังแบบอักษรทั้งหมดและปิดการใช้งานการเข้ารหัสในขณะที่PDF/UAต้องฝังแบบอักษรทั้งหมดเท่านั้น.

ในส่วนนี้,เราจะใช้เวลามองใกล้ที่การทำงานกับPDF/AหรือPDF/UA-1เอกสาร.

## เกี่ยวข้องISOสำหรับPDFมาตรฐาน

หากต้องการเรียนรู้เพิ่มเติมเกี่ยวกับมาตรฐานPDFที่แตกต่างกันให้ตรวจสอบISOวินาที:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## ดูเพิ่มเติม

* [วิธีการแก้ไขแท็กโครงสร้างเอกสารในAdobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [วิธีการตรวจสอบหรือแก้ไขภาษาข้อความในMicrosoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [วิธีการเปลี่ยนภาษาข้อความในAdobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [วิธีการเพิ่มข้อความทางเลือกให้กับรูปร่างรูปภาพแผนภูมิSmartArtกราฟิกหรือวัตถุอื่นๆในMicrosoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [วิธีการเพิ่มข้อความอื่นและข้อมูลเสริมในแท็ก](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (หรืออ่านข้อมูลเดียวกันใน [Adobe Acrobatคู่มือผู้ใช้](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [วิธีการตั้งค่าActualTextรายการสำหรับข้อความ](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html)"เพิ่มข้อความที่เกิดขึ้นจริงสำหรับคำย่อสูตรหรือสัญลักษณ์ที่ไม่ใช่ยูนิโค้ด"ส่วน
* [การแมปยูนิโค้ดสำหรับแบบอักษรสัญลักษณ์ทั่วไปWindows](http://www.alanwood.net/demos/webdings.html)

