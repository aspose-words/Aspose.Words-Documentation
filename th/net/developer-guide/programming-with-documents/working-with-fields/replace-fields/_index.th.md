---
title: แทนที่ช่อง C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: แทนที่ฟิลด์ด้วยข้อความคงที่
linktitle: แทนที่ฟิลด์ด้วยข้อความคงที่
description: "ดูวิธีแทนที่ช่องด้วยข้อความใน C# แทนที่ฟิลด์ด้วยข้อมูลคงที่โดยใช้ .NET API"
type: docs
weight: 37
url: /th/net/replace-fields/
timestamp: 2024-01-27-14-07-04
---

มักจำเป็นต้องแทนที่ฟิลด์เมื่อคุณต้องการบันทึกเอกสารของคุณเป็นสำเนาคงที่ เช่น เมื่อส่งเป็นไฟล์แนบในอีเมล การแปลงช่องต่างๆ เช่น `DATE` หรือ `TIME` เป็นข้อความคงที่จะทำให้เอกสารแสดงวันที่เดียวกันกับวันที่ส่งได้ นอกจากนี้ ในบางสถานการณ์ คุณอาจต้องลบเขตข้อมูล `IF` แบบมีเงื่อนไขออกจากเอกสารของคุณ และแทนที่ด้วยผลลัพธ์ข้อความล่าสุดแทน ตัวอย่างเช่น การแปลงผลลัพธ์ของช่อง `IF` เป็นข้อความคงที่ ดังนั้นจะไม่เปลี่ยนค่าแบบไดนามิกอีกต่อไปเมื่อมีการอัปเดตช่องในเอกสาร

แผนภาพด้านล่างแสดงวิธีจัดเก็บช่อง `IF` ในเอกสาร

* ข้อความล้อมรอบด้วยโหนดฟิลด์พิเศษ – [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) และ [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend)
* โหนด [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) แยกข้อความภายในฟิลด์ออกเป็นโค้ดฟิลด์และผลลัพธ์ของฟิลด์
* รหัสฟิลด์จะกำหนดลักษณะการทำงานทั่วไปของฟิลด์ ในขณะที่ผลลัพธ์ของฟิลด์จะคงผลลัพธ์ล่าสุดไว้เมื่อมีการอัปเดตฟิลด์นี้โดยใช้ Microsoft Word หรือ Aspose.Words
* ผลลัพธ์ของฟิลด์คือสิ่งที่เก็บไว้ในฟิลด์และแสดงในเอกสารเมื่อดู

![update-remove-a-field-aspose-words](/words/net/replace-fields/updating-and-removing-a-field-1.png)

โครงสร้างยังแสดงด้านล่างในรูปแบบลำดับชั้นโดยใช้ [โครงการสาธิต *"DocumentExplorer"*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](/words/net/replace-fields/updating-and-removing-a-field-2.png)

## ช่องที่ไม่สามารถแทนที่ด้วยข้อความได้

การแทนที่ฟิลด์ด้วยข้อความคงที่จะไม่ทำงานอย่างถูกต้องสำหรับบางฟิลด์ในส่วนหัวหรือส่วนท้าย

ตัวอย่างเช่น การพยายามแปลงช่อง `PAGE` ในส่วนหัวหรือส่วนท้ายเป็นข้อความคงที่จะทำให้ค่าเดียวกันนี้ปรากฏบนทุกหน้า เนื่องจากส่วนหัวและส่วนท้ายซ้ำกันในหลายหน้า และเมื่อยังคงเป็นฟิลด์ จึงมีการจัดการโดยเฉพาะเพื่อให้แสดงผลลัพธ์ที่ถูกต้องสำหรับแต่ละหน้า

อย่างไรก็ตาม ในส่วนหัว ช่อง `PAGE` จะแปลเป็นการเรียกใช้ข้อความแบบคงที่ได้ดี การเรียกใช้ข้อความนี้จะได้รับการประเมินเหมือนกับว่าเป็นหน้าสุดท้ายในส่วนนี้ ซึ่งจะทำให้ช่อง `PAGE` ในส่วนหัวแสดงหน้าสุดท้ายในทุกหน้า

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทนที่ฟิลด์ด้วยผลลัพธ์ล่าสุด:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UnlinkFields.cs" >}}

## แปลงประเภทฟิลด์บางประเภทในส่วนของเอกสารเฉพาะ

เนื่องจากวิธี **ConvertFieldsToStaticText** ยอมรับพารามิเตอร์สองตัว ได้แก่ คุณสมบัติ [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) และการแจงนับ [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) คุณจึงสามารถส่งผ่านโหนดคอมโพสิตไปยังวิธีนี้ได้ ซึ่งช่วยให้สามารถแปลงฟิลด์เป็นข้อความคงที่เฉพาะในส่วนของเอกสารเท่านั้น

ตัวอย่างเช่น คุณสามารถส่งวัตถุ [Document](https://reference.aspose.com/words/net/aspose.words/document/) และแปลงช่องประเภทที่ระบุจากทั้งเอกสารเป็นข้อความคงที่ หรือคุณสามารถส่งวัตถุ [Body](https://reference.aspose.com/words/net/aspose.words/body/) ของส่วนและแปลงเฉพาะช่องที่พบในเนื้อหานั้นได้

{{% alert color="primary" %}}

เมื่อส่งผ่านโหนดระดับบล็อก เช่น [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) โปรดทราบว่าในบางกรณี ช่องต่างๆ อาจขยายข้ามหลายย่อหน้าได้ หากเกิดเหตุการณ์เช่นนี้ ขอแนะนำให้ส่งพาเรนต์ของคอมโพสิตแทนเพื่อหลีกเลี่ยงปัญหานี้

{{% /alert %}}

การแจงนับ [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) ที่ส่งผ่านไปยังวิธี **ConvertFieldsToStaticText** ระบุประเภทของฟิลด์ที่ควรแปลงเป็นข้อความคงที่ ประเภทฟิลด์อื่นๆ ที่พบในเอกสารจะยังคงไม่เปลี่ยนแปลง

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเลือกฟิลด์ประเภทเฉพาะ – *targetFieldType* ในโหนดเฉพาะ – *compositeNode* แล้วแปลงเป็นข้อความคงที่:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแปลงฟิลด์ `IF` ทั้งหมดในเอกสารเป็นข้อความคงที่:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Linked%20fields.docx)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแปลงฟิลด์ `PAGE` ทั้งหมดในเนื้อความของเอกสารเป็นข้อความคงที่:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInBody-ConvertFieldsInBody.cs" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแปลงฟิลด์ `IF` ทั้งหมดในย่อหน้าสุดท้ายเป็นข้อความคงที่:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.cs" >}}
