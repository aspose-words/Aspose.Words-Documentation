---
title: วิชาการพิมพ์เอเชียใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับตัวอักษรเอเชีย
linktitle: การทำงานกับตัวอักษรเอเชีย
description: "ทำงานกับการพิมพ์แบบเอเชียโดยใช้ C# ปรับช่องว่างระหว่างข้อความเอเชียและละตินใน C#"
type: docs
weight: 240
url: /th/net/working-with-asian-typography/
---

Asian Typography คือชุดตัวเลือกสำหรับย่อหน้าข้อความในเอกสารที่เขียนในภาษาเอเชีย

Aspose.Words รองรับ Asian Typography โดยใช้คลาส [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) และคุณสมบัติบางอย่าง

## ปรับช่องว่างระหว่างข้อความหรือตัวเลขเอเชียและละตินโดยอัตโนมัติ

หากคุณกำลังออกแบบเทมเพลตที่มีทั้งข้อความเอเชียตะวันออกและละติน และต้องการปรับปรุงลักษณะที่ปรากฏของเทมเพลตฟอร์มของคุณโดยการควบคุมช่องว่างระหว่างข้อความทั้งสองชนิด คุณสามารถกำหนดค่าเทมเพลตของคุณฟอร์มเพื่อปรับช่องว่างระหว่างข้อความทั้งสองชนิดนี้โดยอัตโนมัติ. เพื่อให้บรรลุเป้าหมายนี้ คุณสามารถใช้คุณสมบัติ [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) และ [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) ของคลาส `ParagraphFormat` ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้คุณสมบัติ **AddSpaceBetweenFarEastAndAlpha** และ **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## ตั้งค่าตัวเลือกตัวแบ่งบรรทัด

แท็บ Asian Typography ของกล่องโต้ตอบคุณสมบัติย่อหน้าใน Microsoft Word มีกลุ่มตัวแบ่งบรรทัด ตัวเลือกของกลุ่มนี้สามารถตั้งค่าได้โดยใช้คุณสมบัติ [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) ของคลาส **ParagraphFormat**

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้คุณสมบัติเหล่านี้:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
