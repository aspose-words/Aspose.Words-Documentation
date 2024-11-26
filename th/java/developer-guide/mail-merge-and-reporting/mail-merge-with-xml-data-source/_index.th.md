﻿---
title: Mail Mergeด้วยXMLแหล่งข้อมูลในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: Mail Mergeด้วยXMLแหล่งข้อมูล
linktitle: Mail Mergeด้วยXMLแหล่งข้อมูล
type: docs
description: "ใช้แหล่งข้อมูลที่หลากหลายเมื่อดำเนินการMail Mergeรวมทั้งไฟล์XML ประโยชน์หลักของการใช้XMLคือความสามารถในการกำหนดลำดับชั้นในเอกสารโดยตรงในJava."
keywords: "mail merge XML data source Java, Mail Merge Java"
weight: 30
url: /th/java/mail-merge-with-xml-data-source/
timestamp: 2024-01-27-14-07-04
---

คุณสามารถใช้แหล่งข้อมูลที่หลากหลายเมื่อดำเนินการMail Mergeรวมถึงไฟล์XML ประโยชน์หลักของการใช้XMLคือความสามารถในการกำหนดลำดับชั้นในเอกสารและจากนั้นก็ส่งผ่านไปยังAspose.Words.

บทความนี้จะอธิบายวิธีการอ่านข้อมูลจากไฟล์XMLแทนที่จะมาจากฐานข้อมูลโดยตรงและรวมXMLเป็นแหล่งข้อมูลเพื่อดำเนินการMail Merge.

## ข้อดีของXMLเป็นแหล่งข้อมูล

XMLแหล่งข้อมูลมีประโยชน์มากสำหรับการจัดเก็บข้อมูลโดยไม่มีค่าใช้จ่ายของฐานข้อมูล นไลน์ที่ผู้ใช้จำเป็นต้องเพิ่มแก้ไขและลบข้อมูลเมื่อพวกเขาไม่สามารถเชื่อมต่อกับฐานข้อมู.

XMLข้อมูลสามารถเป็นทางเลือกแหล่งข้อมูลที่ดีฐานข้อมูลเชิงสัมพันธ์โดยเฉพาะอย่างยิ่งถ้าคุณทำงานกับโปรแกรมประยุกต์บนเว็บ บริการเว็บส่วนใหญ่ใช้XMLเพื่อแลกเปลี่ยนข้อมูล XML-ฐานข้อมูลที่มุ่งเน้นจะถูกนำมาใช้อย่างแข็งขันในตลาดปัจจุบันและนักพัฒนาฐานข้อมูลเชิงสัมพันธ์กำลังเพิ่มXMLความเข้ากันได้กับผลิตภัณฑ์ของตนเพื่อให้ฐานข้อมูลกลับมาXML.

เนื่องจากXMLจัดเก็บข้อมูลในรูปแบบข้อความธรรมดาการจัดเก็บจึงเป็นอิสระจากแพลตฟอร์ม ดังนั้นข้อมูลที่สามารถส่งออกได้อย่างง่ายดายนำเข้าหรือเพียงแค่ย้าย XMLเป็นที่นิยมเป็นแหล่งข้อมูลเนื่องจากมีวิธีการรักษาความหมายของข้อมูลเมื่อสื่อสารระหว่า.

## การกรอกเทมเพลตผสานกับข้อมูลจากXMLโดยใช้DataSet

XMLเป็นมาตรฐานสากลสำหรับการแลกเปลี่ยนข้อมูลและMicrosoft Wordรูปแบบเอกสารเป็นรูปแบบที่นิยมมากที่สุดสำหรับMail Mergeแม่แบบ. ดังนั้นความสามารถในการเรียกใช้Mail Mergeจากไฟล์XMLไปยังเอกสารแม่แบบคำได้กลายเป็นความต้.

Microsoft Wordไม่มีวิธีการโดยตรงในการทำงานกับXMLข้อมูลเป็นแหล่งข้อมูลสำหรับการดำเนินงานMail Mergeในขณะที่Aspose.Wordsช่วยให้คุณสามารถดำเนินการMail Mergeด้วยข้อมูลจากแหล่งข้อมูลXML โปรดทราบว่าโครงสร้างของเอกสารXMLยังสามารถเปลี่ยนแปลงได้และข้อมูลจะยังคงถูกอ่ นี้จะช่วยให้เอกสารประเภทต่างๆXMLถูกผสานเข้าด้วยกันได้อย่างง่ายดาย.

ใช้วิธีการ`ReadXML`เพื่ออ่านสคีมาXMLและข้อมูลลงในวัตถุ`DataSet` อ็อบเจ็กต์นี้ถูกใช้เป็นแหล่งข้อมูลสำหรับmail merge.

{{% alert color="primary" %}}

คุณสามารถใช้แม่แบบเดียวกันสำหรับแหล่งข้อมูลที่แตกต่างกัน.

{{% /alert %}}

ต่อไปนี้XMLประกอบด้วยข้อมูลที่จำเป็นในการกรอกข้อมูลในเทมเพลตผสาน:

{{< highlight xml >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโหลดXMLข้อมูลลงในDataSetแล้วใช้เป็นแหล่งข้อมูล:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-XMLMailMerge-XMLMailMerge.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

คุณสามารถสังเกตเห็นความแตกต่างระหว่างแม่แบบก่อนที่จะดำเนินการดำเนินการMail Merge:

<img src="/words/java/mail-merge-with-xml-data-source/fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset_aspose_words_java" style="width:250px"/>

และหลังจากดำเนินการดำเนินการMail Merge:

<img src="/words/java/mail-merge-with-xml-data-source/fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml_aspose_words_java" style="width:285px"/>