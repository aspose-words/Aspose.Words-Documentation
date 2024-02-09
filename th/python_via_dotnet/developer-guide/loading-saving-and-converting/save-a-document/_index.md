---
title: บันทึกเอกสารใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: บันทึกเอกสาร
linktitle: บันทึกเอกสาร
type: docs
description: "บันทึกเอกสารในรูปแบบที่รองรับโดยใช้ Python"
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /th/python-net/save-a-document/
---

งานส่วนใหญ่ที่คุณต้องดำเนินการกับ Aspose.Words คือการบันทึกเอกสาร ในการบันทึกเอกสาร Aspose.Words ให้วิธีการ [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) ของคลาส [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) มีการโอเวอร์โหลดที่ทำให้สามารถบันทึกเอกสารลงในไฟล์หรือสตรีมได้ สามารถบันทึกเอกสารในรูปแบบบันทึกใดก็ได้ที่ Aspose.Words รองรับ สำหรับรายการรูปแบบการบันทึกที่รองรับทั้งหมด โปรดดูการแจงนับ [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/)

## บันทึกเอกสารเป็นไฟล์ {#save-a-document-to-a-file}

เพียงใช้วิธี [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) พร้อมชื่อไฟล์ Aspose.Words จะกำหนดรูปแบบการบันทึกจากนามสกุลไฟล์ที่คุณระบุ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโหลดและบันทึกเอกสารลงในไฟล์:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}

## บันทึกเอกสารลงในสตรีม {#save-a-document-to-a-stream}

ส่งออบเจ็กต์สตรีมไปยังวิธี [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) จำเป็นต้องระบุรูปแบบการบันทึกอย่างชัดเจนเมื่อบันทึกลงในสตรีม

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโหลดและบันทึกเอกสารลงในสตรีม:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

## บันทึกเอกสารไปยัง PCL {#save-a-document-to-pcl}

Aspose.Words รองรับการบันทึกเอกสารลงใน PCL (Printer Command Language) Aspose.Words สามารถบันทึกเอกสารเป็นรูปแบบ PCL 6 (PCL 6 Enhanced หรือ PCL XL) คลาส [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) สามารถใช้เพื่อระบุตัวเลือกเพิ่มเติมเมื่อบันทึกเอกสารเป็นรูปแบบ PCL

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการบันทึกเอกสารไปยัง PCL โดยใช้ตัวเลือกการบันทึก:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

