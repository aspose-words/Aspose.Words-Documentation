---
title: ลบฟิลด์โดยใช้ Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ลบฟิลด์
linktitle: ลบฟิลด์
description: "ดูวิธีลบช่องใน Python ลบฟิลด์โดยทางโปรแกรมโดยใช้ Python via .NET API"
type: docs
weight: 35
url: /th/python-net/remove-fields/
---

บางครั้งจำเป็นต้องลบฟิลด์ออกจากเอกสาร กรณีนี้อาจเกิดขึ้นเมื่อจะถูกแทนที่ด้วยประเภทฟิลด์อื่น หรือเมื่อไม่จำเป็นต้องใช้ฟิลด์ในเอกสารอีกต่อไป เช่น ช่อง `TOC` เมื่อบันทึกเป็น HTML

หากต้องการลบฟิลด์ที่แทรกลงในเอกสารโดยใช้ [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) ให้ใช้ออบเจ็กต์ [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) ที่ส่งคืน ซึ่งมีวิธี [remove](https://reference.aspose.com/words/python-net/aspose.words.fields/field/remove/#default) ที่สะดวกในการลบฟิลด์ออกจากเอกสารอย่างง่ายดาย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบฟิลด์ออกจากเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RemoveField.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Various%20fields.docx)

{{% /alert %}}