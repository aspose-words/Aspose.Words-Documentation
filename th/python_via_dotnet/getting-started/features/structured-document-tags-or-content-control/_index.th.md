---
title: แท็กเอกสารที่มีโครงสร้าง
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: แท็กเอกสารที่มีโครงสร้างหรือการควบคุมเนื้อหา
linktitle: แท็กเอกสารที่มีโครงสร้างหรือการควบคุมเนื้อหา
description: "ฝังความหมายที่ลูกค้ากำหนด รวมถึงลักษณะการทำงานและรูปลักษณ์ลงในเอกสารโดยใช้แท็กเอกสารที่มีโครงสร้าง (SDT หรือการควบคุมเนื้อหา) ใน Python"
type: docs
weight: 50
url: /th/python-net/structured-document-tags-or-content-control/
---


แท็กเอกสารที่มีโครงสร้าง (SDT หรือการควบคุมเนื้อหา) ช่วยให้สามารถฝังความหมายที่ลูกค้ากำหนดตลอดจนลักษณะการทำงานและรูปลักษณ์ลงในเอกสาร

[StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) อาจเกิดขึ้นในเอกสารในตำแหน่งต่อไปนี้:

- ระดับบล็อก - ระหว่างย่อหน้าและตารางในฐานะลูกของโหนด [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) หรือ [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- ระดับแถว - ท่ามกลางแถวในตารางในฐานะลูกของโหนด [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
- ระดับเซลล์ – ท่ามกลางเซลล์ในแถวของตาราง ในฐานะลูกของโหนด [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)
- ระดับอินไลน์ - ท่ามกลางเนื้อหาอินไลน์ภายในในฐานะลูกของ [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- ซ้อนอยู่ใน [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) อื่น

Aspose.Words รองรับการสร้างแท็กเอกสารที่มีโครงสร้างประเภทต่อไปนี้:

- DropDownList
- ComboBox 
- Checkbox 
- Date 
- BuildingBlockGallery 
- Group 
- `Picture`
- RichText 
- PlainText
