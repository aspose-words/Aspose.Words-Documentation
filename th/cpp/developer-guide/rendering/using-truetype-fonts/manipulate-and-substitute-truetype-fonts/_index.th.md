---
title: จัดการและแทนที่แบบอักษรTrueTypeในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: จัดการและแทนที่แบบอักษรTrueType
linktitle: จัดการและแทนที่แบบอักษรTrueType
description: "Aspose.WordsสำหรับC++ สามารถฝังแบบอักษรที่ถูกต้องTrueTypeลงในเอกสารที่ได้เพื่อให้แน่ใจว่ามันแสดงได้อย่างถูกต้อง ถ้าแบบอักษรหรืออักขระที่ระบุไม่พร้อมใช้งานAspose.Wordsค้นหาการแทนที่แบบอักษรที่เหมาะสมหรือใช้."
type: docs
weight: 10
url: /th/cpp/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Wordsต้องใช้แบบอักษรTrueTypeสำหรับงานที่หลากหลายรวมทั้งการแสดงผลเอกสารในรูปแบบเพจถาวรตัวอย่างเช่นPDFหรือXPS เมื่อAspose.Wordsแสดงผลเอกสารจะต้องทำการฝังและฝังชุดย่อยของแบบอักษรTrueTypeลงในเอกสารที่ส่งผลลัพธ์ซึ่งเป็นการปฏิบัติตามปกติในระหว่างการสร้างเอกสารรวมถึงรูปแบบที่เป็นที่นิยมPDFหรือXPS ให้แน่ใจว่าเอกสารจะปรากฏเหมือนกันกับวิวเวอร์ใดๆ นอกจากนี้ข้อกำหนดXPSต้องใช้แบบอักษรที่จะฝังอยู่ในเอกสารเสมอ.

เพื่อให้แน่ใจว่าAspose.Wordsวัดตัวอักษรอย่างถูกต้องและฝังแบบอักษรที่เกี่ยวข้องสำเร็จ,เงื่อนไขต่อไปนี้จะต้องเป็นไปตาม:

1. Aspose.Wordsควรจะสามารถค้นหาและเข้าถึงTrueTypeแฟ้มแบบอักษรบนระบบ.
1. ต้องมีแบบอักษรTrueTypeเพียงพอสำหรับAspose.Wordsโดยเฉพาะอย่างยิ่งที่มีชื่อตระกูลแบบอักษรเดียวกันกับที่ใ.

โปรดทราบว่าแบบอักษรในเอกสารแสดงถึงเอนทิตีเช่นชื่อสกุลสไตล์ขนาดสีซึ่งแตกต่างจากเอนทิตีแบบอักษร`TrueType`(แบบอักษรทางกายภาพ) Aspose.Wordsแก้ไขแบบอักษรในเอกสารเป็นแบบอักษรทางกายภาพในบางขั้นตอนของการประมวลผล การคำนวณขนาดตัวอักษรในระหว่างการก่อสร้างเค้าโครงและการฝัง/การตั้งค่าย่อยไปยั จำนวนของงานอื่นๆที่นิยมน้อยกว่าเช่นการแก้ไขแบบอักษรและการทดแทนในขณะที่โหลดHTMLหรือการฝัง/การตั้งค่าย่อยในรูปแบบการไหลบางส่วนจะถูกเปิดใช้งานในทำนองเดียวกัน.

## ที่Aspose.Wordsมองหาแบบอักษร

Aspose.Wordsพยายามค้นหาแบบอักษรTrueTypeบนระบบไฟล์โดยอัตโนมัติ โดยปกติแล้วคุณสามารถพึ่งพาพฤติกรรมเริ่มต้นของAspose.Wordsเพื่อค้นหาแบบอักษร`TrueType`แต่บางครั้งคุณต้องระบุโฟลเดอร์ของคุณเองที่มีแบบอักษรTrueType ร [ระบุตำแหน่งแบบอักษรTrueType](/words/cpp/specify-truetype-fonts-location/) หัวข้ออธิบายวิธีและสถานที่ที่Aspose.Wordsมองหาแบบอักษรรวมทั้งวิธีการระบุตำแหน่งแบบอักษรของคุณ.

## ความแตกต่างในการประมวลผลรูปแบบตัวอักษรในAspose.WordsและMicrosoft Word

มีความแตกต่างบางอย่างในการประมวลผลรูปแบบตัวอักษรในAspose.WordsและMicrosoft Wordดังที่แสดงในตารางด้านล่าง:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueTypeแบบอักษรและOpenTypeแบบอักษรที่มีTrueTypeเค้าร่าง | การสนับสนุน. | การสนับสนุน. |
| OpenTypeแบบอักษรที่มีPostScriptโครงร่าง | รองรับสถานการณ์ส่วนใหญ่ ไม่สนับสนุนการฝังรูปแบบหน้าถาวรเช่นPDFและXPS ข้อความจะถูกแทนที่ด้วยภาพบิตแมป. | สนับสนุนสำหรับสถานการณ์ส่วนใหญ่รวมถึงการฝังรูปแบบหน้าถาวร. |
| OpenTypeรูปแบบแบบอักษร | รองรับเฉพาะอินสแตนซ์ที่มีชื่อเท่านั้น ไม่สนับสนุนรูปแบบต่อเนื่อง. | รองรับสำหรับอินสแตนซ์ดีฟอลต์เท่านั้น อินสแตนซ์ที่มีชื่อและการเปลี่ยนแปลงอย่างต่อเนื่องจะไม่ได้รับการสนับสนุน. |
| ชนิด 1 แบบอักษร | รองรับเวอร์ชันWindowsก่อนปี 2013 และเวอร์ชันมาคอส การสนับสนุนจะลดลงบนWindowsรุ่นเริ่มต้นจาก 2013. | ไม่สนับสนุน. |

