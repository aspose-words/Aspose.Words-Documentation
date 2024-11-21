---
title: การทำงานกับแบบอักษรใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับแบบอักษร
linktitle: การทำงานกับแบบอักษร
description: "การจัดรูปแบบแบบอักษรโดยละเอียดโดยใช้ C# เครื่องหมายเน้นใน C# รับระยะห่างระหว่างบรรทัดแบบอักษรโดยใช้ C#"
type: docs
weight: 230
url: /th/net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

แบบอักษรคือชุดอักขระที่มีขนาด สี และการออกแบบที่แน่นอน Aspose.Words ช่วยให้คุณทำงานกับแบบอักษรโดยใช้เนมสเปซ [Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) และคลาส [Font](https://reference.aspose.com/words/net/aspose.words/font/)

## การจัดรูปแบบตัวอักษร

การจัดรูปแบบแบบอักษรปัจจุบันแสดงโดยออบเจ็กต์ **Font** ที่ส่งคืนโดยคุณสมบัติ [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) คลาส **Font** มีคุณสมบัติแบบอักษรที่หลากหลาย โดยจำลองคุณสมบัติที่มีอยู่ใน Microsoft Word

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าการจัดรูปแบบแบบอักษร:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

คุณสมบัติการเติมยังมีให้ใช้สำหรับแบบอักษรเพื่อตั้งค่าการจัดรูปแบบการเติมข้อความ ซึ่งทำให้สามารถเปลี่ยนแปลงได้ เช่น สีพื้นหน้าหรือความโปร่งใสของการเติมข้อความ

## รับระยะห่างระหว่างบรรทัดแบบอักษร

ระยะห่างระหว่างบรรทัดแบบอักษรคือระยะห่างแนวตั้งระหว่างเส้นฐานของข้อความสองบรรทัดที่ต่อเนื่องกัน ดังนั้นระยะห่างระหว่างบรรทัดจึงรวมถึงช่องว่างระหว่างบรรทัดพร้อมกับความสูงของอักขระด้วย

คุณสมบัติ [LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/) ได้รับการแนะนำในคลาส **Font** เพื่อรับค่านี้ ดังแสดงในตัวอย่างด้านล่าง:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## แบบอักษรเน้นเครื่องหมาย

ภาษาเอเชียตะวันออกบางภาษาใช้เครื่องหมายเน้นพิเศษเพื่อระบุการเน้น คลาส **Font** จัดเตรียมคุณสมบัติ [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/) เพื่อรับหรือตั้งค่าการแจงนับ [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/emphasismark/) ที่จะใช้เมื่อจัดรูปแบบ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัติ **EphasisMark**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
