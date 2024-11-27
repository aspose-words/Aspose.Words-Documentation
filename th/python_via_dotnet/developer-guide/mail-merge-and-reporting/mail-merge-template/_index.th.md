---
title: Mail Mergeแม่แบบในPython
second_title: Aspose.WordsสำหรับPython via .NET
articleTitle: Mail Mergeแม่แบบ
linktitle: Mail Mergeแม่แบบ
type: docs
description: "สร้างเทมเพลตMail Mergeเพื่อกำหนดเนื้อหาคงที่ในเอกสารที่ส่งออกแล้วสร้างเอกสารผสานโดยใช้ฟิลด์ผสานในPython."
keywords: "create Mail Merge template python"
weight: 10
url: /th/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

เป็นเรื่องปกติที่จะใช้เทมเพลตผสานเป็นเอกสารพื้นฐานสำหรับการดำเนินการMail Mergeถ้าเป็นMail MergeหรือMail Merge Mail mergeกับภูมิภาคที่มีประสิทธิภาพมากขึ้นและเป็นที่นิยมกว่าที่เรียบง่ายmail merge. ง่ายMail Mergeถือเป็นกรณีเฉพาะของMail Mergeกับภูมิภาคที่พื้นที่เป็นเอกสารทั้งหมด ทั้งหมดจะอธิบายไว้ในบทความถัดไป"ประเภทของการดำเนินการMail Merge"ในรายละเอียดเพิ่มเติม.

เทมเพลตช่วยให้มั่นใจได้ว่าข้อความในเอกสารที่ผสานเอาต์พุตถูกจัดรูปแบบอย่างถูกต้องและการดำเนินการMail Mergeจะรับประกันได้ว่าข้อความจากแหล่งข้อมูลจะถูกป้อนลงในเทมเพลตผสานอย่างถูกต้อง.

Aspose.Wordsให้ความสามารถในการสร้างMail Mergeเทมเพลตเพื่อกำหนดเนื้อหาคงที่และจากนั้นสร้างเอกสารผสานเอกสารโดยใช้ฟิลด์ผสาน ดังนั้นแม่แบบผสานจะมีข้อความที่จำเป็นซึ่งเป็นเหมือนกันในทุกเอกสารที่ส่งออกและเขตข้ ข้อมูลจากแหล่งข้อมูลที่ระบุจะถูกเพิ่มลงในเทมเพลตผสานผ่านฟิลด์เหล่านี้ในระหว่างการ.

## เทมเพลตMail Mergeคืออะไร

แม่แบบMail Mergeเป็นเอกสารส่วนบุคคลที่มีข้อมูลคงที่และฟิลด์ที่ผสานที่คุณต้องการให้ข้อความตัวแป แม่แบบผสานสามารถอยู่ในรูปแบบใดๆที่สนับสนุนฟิลด์เช่น, DOC, DOCX, DOT, DOTX, RTF. นอกจากนี้คุณยังสามารถใช้mustacheแม่แบบที่อธิบายไว้ในบทความ"Mustacheไวยากรณ์แม่แบบ"ในรายละเอียดเพิ่มเติม.

คุณสามารถสร้างเทมเพลตผสานให้เป็นแบบจำลองสำหรับเอกสารใหม่และควรมีข้อความห การเพิ่มฟิลด์ผสานภายในเทมเพลตจะแสดงข้อมูลการกำหนดค่าส่วนบุคคลเช่นชื่อหรือที่อยู่ การดำเนินการMail Mergeจะแทรกข้อมูลส่วนบุคคลจากแหล่งข้อมูลของคุณโดยอัตโนมัติไปยังเอกสารแม่แบบผสาน.

นอกจากนี้คุณสามารถเพิ่มพื้นที่Mail Mergeในเทมเพลตของคุณโดยการใส่ฟิลด์สองฟิลด์Mail Mergeเพื่อทำเครื่องหมายจุดเริ่มต้นและจุดสิ้นสุดของพื้นที่จดหมาย บทความถัดไป"ประเภทของการดำเนินการMail Merge"อธิบายว่าในรายละเอียดเพิ่มเติม.

## สร้างเทมเพลตMail Merge

คุณสามารถสร้างเทมเพลตและเพิ่มฟิลด์ผสานเฉพาะให้กับเทมเพลตซึ่งจะถูกแทนที่ด้วยค่าจากแหล่งข้อมูลด้วยตนเองเช่นใช้Microsoft Wordหรือโดยโปรแกรมโดยใช้Aspose.Words ในบทความนี้เราจะดูที่วิธีการเขียนโปรแกรมของการสร้างแม่แบบ.

ใช้คลาสของ[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)เพื่อสร้างเทมเพลตผสานที่จำเป็นโดยใช้Aspose.Words คุณสามารถรวมข้อความฟิลด์ผสานและการแบ่งบรรทัดในแม่แบบดังกล่าวโดยใช้วิธีการ[insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/),[inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/)และ[insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีสร้างเทมเพลตMail Merge:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

รูปภาพด้านล่างแสดงเทมเพลตที่สร้างขึ้น:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## ปรับแต่งคุณสมบัติของเทมเพลทMail Merge

Aspose.Wordsช่วยให้คุณสามารถปรับแต่งแม่แบบของคุณผ่านคุณสมบัติมากมาย. การปรับแต่งแม่แบบจะอธิบายไว้ด้านล่างผ่านตัวอย่างของการปรับแต่งคุณสมบัติบางอย่า.

## ดูเพิ่มเติม

* สำหรับรายละเอียดเพิ่มเติมเกี่ยวกับวิธีการสร้างแม่แบบในMicrosoft Wordด้วยตนเอง,โปรดตรวจสอบ [สร้างเทมเพลต](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) บทความในเอกสารMicrosoft
