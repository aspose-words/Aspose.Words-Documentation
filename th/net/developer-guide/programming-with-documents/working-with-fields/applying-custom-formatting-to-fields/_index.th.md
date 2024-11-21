---
title: ใช้การจัดรูปแบบที่กำหนดเองกับช่องใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: ใช้การจัดรูปแบบแบบกำหนดเองกับฟิลด์
linktitle: ใช้การจัดรูปแบบแบบกำหนดเองกับฟิลด์
description: "จัดรูปแบบและประเมินผลลัพธ์ของฟิลด์โดยใช้ C#"
type: docs
weight: 40
url: /th/net/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

บางครั้งผู้ใช้จำเป็นต้องใช้การจัดรูปแบบแบบกำหนดเองกับฟิลด์ ในบทความนี้ เราจะดูตัวอย่างสองสามตัวอย่างว่าสามารถทำได้อย่างไร

หากต้องการเรียนรู้ตัวเลือกเพิ่มเติม โปรดดูรายการคุณสมบัติทั้งหมดสำหรับช่องแต่ละประเภทในคลาสที่เกี่ยวข้องใน [เนมสเปซของฟิลด์](https://reference.aspose.com/words/net/aspose.words.fields/)

## วิธีการใช้การจัดรูปแบบแบบกำหนดเองกับผลลัพธ์ของฟิลด์

Aspose.Words มี API สำหรับการจัดรูปแบบผลลัพธ์ของฟิลด์แบบกำหนดเอง คุณสามารถใช้อินเทอร์เฟซ [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) เพื่อควบคุมวิธีจัดรูปแบบผลลัพธ์ของฟิลด์ คุณสามารถใช้สวิตช์รูปแบบตัวเลข เช่น \# "#.##" สวิตช์รูปแบบวันที่/เวลา เช่น \@ "dd.MM.yyyy" และสวิตช์รูปแบบตัวเลข เช่น \* Ordinal

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้การจัดรูปแบบแบบกำหนดเองสำหรับผลลัพธ์ของฟิลด์:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## วิธีประเมินเงื่อนไข `IF`

หากคุณต้องการประเมินเงื่อนไข `IF` หลังจาก mail merge คุณสามารถใช้วิธี [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/) ที่จะส่งคืนผลลัพธ์ของการประเมินนิพจน์ทันที

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้วิธีนี้:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## วิธีการใช้การจัดรูปแบบแบบกำหนดเองกับฟิลด์เวลา

ตามค่าเริ่มต้น Aspose.Words จะอัปเดตฟิลด์ `TIME` ด้วยรูปแบบเวลาสั้นของวัฒนธรรมปัจจุบัน เราพบว่ามีความแตกต่างระหว่างการจัดรูปแบบ Microsoft Word และการจัดรูปแบบ .NET/Windows รวมถึงระหว่าง .NET Framework เวอร์ชันต่างๆ ด้วย หากคุณต้องการจัดรูปแบบฟิลด์ `TIME` ตามความต้องการของคุณ คุณสามารถทำได้โดยการใช้อินเทอร์เฟซ [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีนำการจัดรูปแบบที่กำหนดเองไปใช้กับช่อง `TIME`:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
