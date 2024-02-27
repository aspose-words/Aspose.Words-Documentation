---
title: วิธีค้นหาคุณสมบัติของฟิลด์ใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: ค้นหาคุณสมบัติของฟิลด์
linktitle: ค้นหาคุณสมบัติของฟิลด์
description: "วิธีค้นหาคุณสมบัติของฟิลด์บางอย่าง เช่น โค้ดของฟิลด์ และผลลัพธ์ของฟิลด์เป็น C#"
type: docs
weight: 25
url: /th/net/find-field-properties/
---

ช่องที่แทรกโดยใช้ [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) จะส่งกลับออบเจ็กต์ [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/) นี่คือคลาสส่วนหน้าที่ให้วิธีการที่เป็นประโยชน์ในการค้นหาคุณสมบัติบางอย่างของฟิลด์อย่างรวดเร็ว

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการค้นหาโค้ดฟิลด์และผลลัพธ์ของฟิลด์:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldCode.cs" >}}

โปรดทราบว่าหากคุณกำลังมองหาเพียงชื่อของช่องผสานในเอกสาร คุณสามารถใช้วิธี [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) ในตัวแทนได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีรับชื่อของเขตข้อมูลผสานทั้งหมดในเอกสาร:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}