---
title: บันทึกเอกสารใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: บันทึกเอกสาร
linktitle: บันทึกเอกสาร
type: docs
description: "บันทึกเอกสารในรูปแบบที่รองรับโดยใช้ C#"
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /th/net/save-a-document/
timestamp: 2024-07-09-19-00-42
---

งานส่วนใหญ่ที่คุณต้องดำเนินการกับ Aspose.Words คือการบันทึกเอกสาร ในการบันทึกเอกสาร Aspose.Words ให้วิธีการ [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) ของคลาส [Document](https://reference.aspose.com/words/net/aspose.words/document/) มีการโอเวอร์โหลดที่ทำให้สามารถบันทึกเอกสารลงในไฟล์ สตรีม หรือออบเจ็กต์ ASP.NET HttpResponse เพื่อส่งไปยังเบราว์เซอร์ไคลเอ็นต์ สามารถบันทึกเอกสารในรูปแบบบันทึกใดก็ได้ที่ Aspose.Words รองรับ สำหรับรายการรูปแบบการบันทึกที่รองรับทั้งหมด โปรดดูการแจงนับ [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/)

## บันทึกเป็นไฟล์ {#save-a-document-to-a-file}

เพียงใช้วิธี [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) พร้อมชื่อไฟล์ Aspose.Words จะกำหนดรูปแบบการบันทึกจากนามสกุลไฟล์ที่คุณระบุ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโหลดและบันทึกเอกสารลงในไฟล์:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc)

{{% /alert %}}

## บันทึกลงในสตรีม {#save-a-document-to-a-stream}

ส่งออบเจ็กต์สตรีมไปยังวิธี [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) จำเป็นต้องระบุรูปแบบการบันทึกอย่างชัดเจนเมื่อบันทึกลงในสตรีม

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโหลดและบันทึกเอกสารลงในสตรีม:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}

## ส่งเอกสารไปยังไคลเอ็นต์เบราว์เซอร์ {#sending-a-document-to-a-client-browser}

หากต้องการส่งเอกสารไปยังเบราว์เซอร์ไคลเอ็นต์ ให้ใช้โอเวอร์โหลดพิเศษที่รับพารามิเตอร์สี่ตัว ได้แก่ ชื่อไฟล์ รูปแบบการบันทึก ประเภทการบันทึก และออบเจ็กต์ ASP.NET HttpResponse วิธีการนำเสนอเอกสารต่อผู้ใช้นั้นแสดงโดยการแจงนับ [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/) ซึ่งกำหนดว่าเอกสารที่ส่งไปยังเบราว์เซอร์จะให้ตัวเลือกในการเปิดตัวเองโดยตรงในเบราว์เซอร์หรือในแอปพลิเคชันที่เกี่ยวข้องกับนามสกุลไฟล์หรือไม่

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการส่งเอกสารไปยังเบราว์เซอร์ไคลเอ็นต์จากโค้ด ASP.NET:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}

วิธีการ `Save` โอเวอร์โหลดนี้ไม่พร้อมใช้งานเมื่อใช้ DLL โปรไฟล์ไคลเอ็นต์ .NET DLL นี้จะอยู่ในโฟลเดอร์ **net3.5_ClientProfile** โปรไฟล์ไคลเอ็นต์ .NET ไม่รวมแอสเซมบลี เช่น **System.Web** ดังนั้น **HttpResponse** จึงไม่พร้อมใช้งาน นี่เป็นการออกแบบทั้งหมด

สิ่งนี้อาจปรากฏเป็นข้อผิดพลาด:

**"ไม่มีการโอเวอร์โหลดสำหรับวิธี 'บันทึก' รับพารามิเตอร์ '4'"**

หากคุณต้องการใช้ Aspose.Words ในแอปพลิเคชัน ASP.NET ขอแนะนำให้ใช้ .NET 2.0 DLL ซึ่งมีการโอเวอร์โหลดที่ถูกต้อง ดังที่อธิบายไว้ในบทความนี้

## บันทึกลงใน PCL {#save-a-document-to-pcl}

Aspose.Words รองรับการบันทึกเอกสารลงใน PCL (Printer Command Language) Aspose.Words สามารถบันทึกเอกสารเป็นรูปแบบ PCL 6 (PCL 6 Enhanced หรือ PCL XL) คลาส `PclSaveOptions` สามารถใช้เพื่อระบุตัวเลือกเพิ่มเติมเมื่อบันทึกเอกสารเป็นรูปแบบ PCL

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการบันทึกเอกสารไปยัง PCL โดยใช้ตัวเลือกการบันทึก:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## ดูสิ่งนี้ด้วย

- ข้อมูลเกี่ยวกับวัตถุ ASP.NET [HttpResponse](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8)
