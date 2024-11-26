---
title: เปิดใช้งานคุณลักษณะOpenTypeในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: เปิดใช้งานคุณลักษณะOpenType
linktitle: เปิดใช้งานคุณลักษณะOpenType
description: "คุณสมบัติการพิมพ์ขั้นสูงในAspose.WordsสำหรับJava."
type: docs
weight: 25
url: /th/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenTypeเป็นรูปแบบตัวอักษรแนะนำให้รู้จักกับการให้การสนับสนุนที่ดีขึ้นสำหรับภาษาต่างประเทศและระบบการเขียนเมื่อเทียบกับPostScriptและTrueType คุณลักษณะเค้าโครงของOpenTypeเป็นที่รู้จักกันทั่วไปว่าOpenTypeคุณสมบัติ Aspose.Words.งกันHarfBuzzแพคเกจให้การสนับสนุนสำหรับOpenTypeคุณสมบัติในAspose.Wordsโดยใช้`HarfBuzz`เครื่องยนต์การสร้างข้อความ.

Aspose.Wordsมีความสามารถในการใช้วัตถุที่สร้างข้อความให้ภายนอก ตัวสร้างข้อความ เอกสารโดยทั่วไปจะอ้างถึงแบบอักษรหลายดังนั้นโรงงานสร้างข้อความเป็นสิ่งที่จำเป็น แพคเกจนี้ประกอบด้วยการดำเนินการของโรงงานสร้างข้อความที่ใช้โดยAspose.WordsงกันLayoutOptions.TextShaperFactoryทรัพย์สิน.

{{% alert color="primary" %}}

การสร้างข้อความจะดำเนินการเมื่อส่งออกไปยังรูปแบบPDFหรือXPS.

{{% /alert %}}

ในโปรแกรมประยุกต์ทั่วไปอินสแตนซ์เดียวของโรงงานสร้างข้อความที่ใช้ร่วมกันระหว่างอินสแตนซ์เอกสารทั้งหมด เมื่อใดก็ตามที่ตัวสร้างข้อความจะถูกสร้างขึ้นไฟล์แบบอักษรที่มีการเข้าถึง การแยกแฟ้มแบบอักษรเป็นการดำเนินการที่มีราคาแพงจึงขอแนะนำให้ใช้แคช Aspose.WordsดำเนินการBasicTextShaperCacheคลาสซึ่งตัดการดำเนินงานของโรงงานตัวสร้างข้อความและแคชอินสแตนซ์ตัวสร้างข้อความที่ส่งคืนโดยโรงงานที่ห่อ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีเปิดการสนับสนุนคุณลักษณะOpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
