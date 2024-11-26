---
title: การทำงานกับการควบคุมเนื้อหาSDTในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับการควบคุมเนื้อหาSDT
linktitle: การทำงานกับการควบคุมเนื้อหาSDT
type: docs
description: "การจัดการเนื้อหาเอกสารขั้นสูงวิธีการสร้างและจัดการการควบคุมเนื้อหา(แท็กเอกสารที่มีโครงสร้าง)โดยใช้Java."
weight: 390
url: /th/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

ในMicrosoft Wordคุณสามารถสร้างฟอร์มได้โดยเริ่มต้นด้วยเทมเพลตและเพิ่มการควบคุมเนื้อหารวมถึงcheckboxกล่องข้อความตัวเลือกวันที่และรายการแบบดรอปดาวน์ ในAspose.Wordsแท็กเอกสารที่มีโครงสร้างหรือการควบคุมเนื้อหาจากเอกสารใดๆที่โหลดลงในAspose.Wordsจะถูกนำเข้าเป็นโหนดStructuredDocumentTag แท็กเอกสารที่มีโครงสร้าง(SDTหรือการควบคุมเนื้อหา)อนุญาตให้มีการฝังความหมายที่กำหนดไ.

StructuredDocumentTagอาจเกิดขึ้นในเอกสารในสถานที่ต่อไปนี้:

- บล็อกระดับ-ระหว่างย่อหน้าและตารางเป็นลูกของร่างกายHeaderFooterแสดงความคิดเห็นเชิงอรรถหรื.
- แถวระดับ-ในแถวในตารางเป็นลูกของโหนดตาราง.
- เซลล์ระดับ-ระหว่างเซลล์ในแถวตารางเป็นลูกของโหนดแถว.
- แบบอินไลน์ระดับ-ระหว่างเนื้อหาแบบอินไลน์ภายในเป็นเด็กของย่อหน้า.
- ซ้อนกันภายในอีกStructuredDocumentTag.

## การแทรกตัวควบคุมเนื้อหาลงในเอกสาร

ในเวอร์ชันAspose.Wordsนี้สามารถสร้างการควบคุมเนื้อหาSDTต่อไปนี้ได้:

- Checkbox
- DropDownList
- ComboBox
- วันที่
- BuildingBlockGallery
- กลุ่ม
- `Picture`
- RichText
- PlainText

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างการควบคุมเนื้อหาของชนิดcheckbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างการควบคุมเนื้อหาของกล่องข้อความชนิดสมบูรณ์:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างการควบคุมเนื้อหาของชนิดคำสั่งผสมกล่อง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## วิธีการอัปเดตตัวควบคุมเนื้อหา

ส่วนนี้อธิบายวิธีการอัพเดตค่าของSDTหรือการควบคุมเนื้อหาโดยโปรแกรม.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าสถานะปัจจุบันของcheckbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปรับเปลี่ยนตัวควบคุมเนื้อหาของชนิดกล่องข้อความธรรม:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างเหล่านี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## การควบคุมเนื้อหาที่มีผลผูกพันกับส่วนที่กำหนดเองXML

คุณสามารถผูกตัวควบคุมเนื้อหาด้วยXMLข้อมูล(*custom XML part*)ในเอกสารคำ

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการผูกการควบคุมเนื้อหาที่กำหนดเองXMLส่วน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## ล้างเนื้อหาของตัวควบคุมเนื้อหา

คุณสามารถล้างเนื้อหาของตัวควบคุมเนื้อหาด้วยการแสดงตัวยึดตำแหน่ง วิธีการ**StructuredDocumentTag.clear()**ล้างเนื้อหาของแท็กเอกสารที่มีโครงสร้างนี้และแสดงตัวยึดตำแหน่งถ้ามีการกำหน อย่างไรก็ตามไม่สามารถล้างเนื้อหาของคอนโทรลเนื้อหาได้หากมีการแก้ไข หากตัวควบคุมเนื้อหาไม่มีตัวยึดตำแหน่งระบบจะแทรกช่องว่างห้าช่องเหมือนกับคำMSคำ(ยกเ ถ้าตัวควบคุมเนื้อหาถูกแม็พกับแบบกำหนดเองXMLโหนดที่อ้างอิงXMLจะถูกล้างออก.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการล้างเนื้อหาของตัวควบคุมเนื้อหา:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## เปลี่ยนพื้นหลังควบคุมเนื้อหาและสีชายแดน

คุณสมบัติ`StructuredDocumentTag.Color`ช่วยให้คุณสามารถรับหรือตั้งค่าสีของตัวควบคุมเนื้อหา สีมีผลต่อการควบคุมเนื้อหาในสองสถานการณ์:

1. MSคำเน้นพื้นหลังของตัวควบคุมเนื้อหาเมื่อเมาส์เลื่อนผ่านตัวควบคุมเนื้อหา การระบุตัวควบคุมเนื้อหา สีของการไฮไลต์เป็นบิต"นุ่ม"กว่า*Color* ตัวอย่างเช่นMSคำเน้นพื้นหลังที่มีสีชมพูเมื่อ*Color*เป็นสีแดง.
2. เมื่อคุณโต้ตอบ(แก้ไขการเลือกฯลฯ)กับคอนโทรลเนื้อหาขอบของคอนโทรลเนื้อหาจะมีสีด้วย*Color*.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเปลี่ยนสีของตัวควบคุมเนื้อหา:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## วิธีการตั้งค่าลักษณะการจัดรูปแบบข้อความที่พิมพ์ลงในตัวควบคุมเนื้อหา

ถ้าคุณต้องการตั้งค่าลักษณะของตัวควบคุมเนื้อหาคุณสามารถใช้คุณสมบัติ`StructuredDocumentTag.Style`หรือ`StructuredDocumentTag.StyleName` เมื่อคุณพิมพ์ข้อความลงในตัวควบคุมเนื้อหาในเอกสารออกข้อความที่พิมพ์จะมีลักษณะ"อ้าง".

{{% alert color="primary" %}}

โปรดทราบว่าเฉพาะลิงก์และลักษณะอักขระที่สามารถนำไปใช้กับการควบคุมเนื้อหา InvalidOperationException("ไม่สามารถใช้สไตล์นี้กับSDT")จะถูกโยนเมื่อมีสไตล์ที่มีอยู่แต่ไม่มีการเชื่อมโยงหรือมีการใช้สไต.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าลักษณะของตัวควบคุมเนื้อหา:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## การทำงานกับการทำซ้ำส่วนควบคุมเนื้อหา

การควบคุมเนื้อหาส่วนการทำซ้ำช่วยให้การทำซ้ำเนื้อหาที่มีอยู่ภายใน ใช้Aspose.Wordsโหนดแท็กเอกสารที่มีโครงสร้างของส่วนการทำซ้ำและการทำซ้ำประเภทรายการส่วนและเพื่อจุดประสงค์นี้[SdtTypeประเภทการแจงนับ](https://reference.aspose.com/words/java/com.aspose.words/sdttype/)ให้สมาชิกREPEATING_SECTION_ITEM.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการผูกตัวควบคุมเนื้อหาส่วนการทำซ้ำกับตาราง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

