---
title: การทำงานกับแบบอักษรใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับแบบอักษร
linktitle: การทำงานกับแบบอักษร
description: "ปรับแต่งการตั้งค่าแบบอักษรโดยใช้ Python"
type: docs
weight: 230
url: /th/python-net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

แบบอักษรคือชุดอักขระที่มีขนาด สี และการออกแบบที่แน่นอน Aspose.Words ช่วยให้คุณทำงานกับแบบอักษรโดยใช้โมดูล [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) และคลาส [Font](https://reference.aspose.com/words/python-net/aspose.words/font/)

## การจัดรูปแบบตัวอักษร

การจัดรูปแบบแบบอักษรปัจจุบันแสดงโดยออบเจ็กต์ **Font** ที่ส่งคืนโดยคุณสมบัติ [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) คลาส **Font** มีคุณสมบัติแบบอักษรที่หลากหลาย โดยจำลองคุณสมบัติที่มีอยู่ใน Microsoft Word

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าการจัดรูปแบบแบบอักษร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

ขณะนี้คุณสมบัติการเติมพร้อมใช้งานสำหรับแบบอักษรเพื่อตั้งค่าการจัดรูปแบบการเติมข้อความ โดยให้ความสามารถในการเปลี่ยนแปลง เช่น สีพื้นหน้าหรือความโปร่งใสของการเติมข้อความ

## รับระยะห่างระหว่างบรรทัดแบบอักษร

ระยะห่างระหว่างบรรทัดแบบอักษรคือระยะห่างแนวตั้งระหว่างเส้นฐานของข้อความสองบรรทัดที่ต่อเนื่องกัน ดังนั้นระยะห่างระหว่างบรรทัดจึงรวมถึงช่องว่างระหว่างบรรทัดพร้อมกับความสูงของอักขระด้วย

คุณสมบัติ [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) ถูกนำมาใช้ในคลาส [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) เพื่อรับค่านี้ดังแสดงในตัวอย่างที่ระบุด้านล่าง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## แบบอักษรเน้นเครื่องหมาย

ภาษาเอเชียตะวันออกบางภาษาใช้เครื่องหมายเน้นพิเศษเพื่อระบุการเน้น คลาส **Font** จัดเตรียมคุณสมบัติ [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) เพื่อรับหรือตั้งค่าการแจงนับ [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) ที่จะใช้ในการจัดรูปแบบ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัติ **EphasisMark**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
