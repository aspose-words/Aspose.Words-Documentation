---
title: วิธีสร้างบาร์โค้ด
second_title: Aspose.Words สำหรับ .NET
articleTitle: สร้างภาพบาร์โค้ดแบบกำหนดเอง
linktitle: สร้างภาพบาร์โค้ดแบบกำหนดเอง
description: "ตัวอย่างการสร้างรูปร่างบาร์โค้ดโดยใช้ C#"
type: docs
weight: 350
url: /th/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words มีอินเทอร์เฟซสำหรับสร้างบาร์โค้ดแบบกำหนดเอง ซึ่งทำให้ง่ายต่อการใช้ Aspose.Words และ [Aspose.BarCode](https://products.aspose.com/barcode/net/) ร่วมกันเพื่อแสดงภาพบาร์โค้ดในเอกสารเอาต์พุต ตัวอย่างเช่น คุณสามารถโหลดเอกสาร DOC, OOXML หรือ RTF ที่มีฟิลด์ `DISPLAYBARCODE` ลงใน Aspose.Words จัดเตรียมการใช้งานเครื่องสร้างบาร์โค้ดแบบกำหนดเอง และบันทึกเป็นรูปแบบหน้าคงที่ เช่น PDF, XPS เป็นต้น

ช่อง `DISPLAYBARCODE` โดยทั่วไปจะมีไวยากรณ์ดังนี้

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

ด้านล่างนี้คือตัวสร้างโค้ดตัวอย่างที่ใช้ประโยชน์จาก `Aspose.BarCode` API ตัวอย่างนี้แสดงวิธีการแทรกรูปภาพบาร์โค้ดที่ตำแหน่งของฟิลด์ `DISPLAYBARCODE` ในเอกสาร Word โดยใช้ Aspose.Words และ `Aspose.BarCode` API:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
