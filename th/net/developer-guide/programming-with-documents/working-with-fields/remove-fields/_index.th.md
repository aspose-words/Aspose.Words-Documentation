---
title: ลบฟิลด์ C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: ลบฟิลด์
linktitle: ลบฟิลด์
description: "ดูวิธีลบช่องใน C# ลบฟิลด์โดยทางโปรแกรมโดยใช้ .NET API"
type: docs
weight: 35
url: /th/net/remove-fields/
---

บางครั้งจำเป็นต้องลบฟิลด์ออกจากเอกสาร กรณีนี้อาจเกิดขึ้นเมื่อจำเป็นต้องแทนที่ด้วยประเภทฟิลด์อื่น หรือเมื่อไม่จำเป็นต้องใช้ฟิลด์ในเอกสารอีกต่อไป เช่น ช่อง `TOC` เมื่อบันทึกเป็น HTML

หากต้องการลบช่องที่แทรกลงในเอกสารโดยใช้ [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) ให้ใช้ออบเจ็กต์ [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/) ที่ส่งคืน ซึ่งมีวิธี [Remove](https://reference.aspose.com/words/net/aspose.words.fields/field/remove/) ที่สะดวกสำหรับการลบช่องออกจากเอกสารอย่างง่ายดาย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบฟิลด์ออกจากเอกสาร:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RemoveField-RemoveField.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Various%20fields.docx)

{{% /alert %}}
