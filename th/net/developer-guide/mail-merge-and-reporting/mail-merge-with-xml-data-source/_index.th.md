---
title: Mail Mergeด้วยXMLแหล่งข้อมูลในC#
second_title: Aspose.Wordsสำหรับ.NET
articleTitle: Mail Mergeด้วยXMLแหล่งข้อมูล
linktitle: Mail Mergeด้วยXMLแหล่งข้อมูล
type: docs
description: "ใช้แหล่งข้อมูลที่หลากหลายเมื่อดำเนินการMail Mergeรวมทั้งไฟล์XMLโดยใช้C# ประโยชน์หลักของการใช้XMLคือความสามารถในการกำหนดลำดับชั้นในเอกสารโดยตรง."
keywords: "mail merge xml data source c#"
weight: 30
url: /th/net/mail-merge-with-xml-data-source/
timestamp: 2024-07-11-08-07-06
---

คุณสามารถใช้แหล่งข้อมูลที่หลากหลายเมื่อดำเนินการMail Mergeรวมถึงไฟล์XML ประโยชน์หลักของการใช้XMLคือความสามารถในการกำหนดลำดับชั้นในเอกสารและจากนั้นก็ส่งผ่านไปยังAspose.Words.

บทความนี้จะอธิบายวิธีการอ่านข้อมูลจากไฟล์XMLแทนที่จะมาจากฐานข้อมูลโดยตรงและรวมXMLเป็นแหล่งข้อมูลเพื่อดำเนินการMail Merge.

## ข้อดีของXMLเป็นแหล่งข้อมูล

XMLแหล่งข้อมูลมีประโยชน์มากสำหรับการจัดเก็บข้อมูลโดยไม่มีค่าใช้จ่ายของฐานข้อมูล นไลน์ที่ผู้ใช้จำเป็นต้องเพิ่มแก้ไขและลบข้อมูลเมื่อพวกเขาไม่สามารถเชื่อมต่อกับฐานข้อมู.

XMLข้อมูลสามารถเป็นทางเลือกแหล่งข้อมูลที่ดีฐานข้อมูลเชิงสัมพันธ์โดยเฉพาะอย่างยิ่งถ้าคุณทำงานกับโปรแกรมประยุกต์บนเว็บ บริการเว็บส่วนใหญ่ใช้XMLเพื่อแลกเปลี่ยนข้อมูล XML-ฐานข้อมูลที่มุ่งเน้นจะถูกนำมาใช้อย่างแข็งขันในตลาดปัจจุบันและนักพัฒนาฐานข้อมูลเชิงสัมพันธ์กำลังเพิ่มXMLความเข้ากันได้กับผลิตภัณฑ์ของตนเพื่อให้ฐานข้อมูลกลับมาXML.

เนื่องจากXMLจัดเก็บข้อมูลในรูปแบบข้อความธรรมดาการจัดเก็บจึงเป็นอิสระจากแพลตฟอร์ม ดังนั้นข้อมูลที่สามารถส่งออกได้อย่างง่ายดายนำเข้าหรือเพียงแค่ย้าย XMLเป็นที่นิยมเป็นแหล่งข้อมูลเนื่องจากมีวิธีการรักษาความหมายของข้อมูลเมื่อสื่อสารระหว่า.

## การกรอกเทมเพลตผสานกับข้อมูลจากXMLโดยใช้DataSet

XMLเป็นมาตรฐานสากลสำหรับการแลกเปลี่ยนข้อมูลและMicrosoft Wordรูปแบบเอกสารเป็นรูปแบบที่นิยมมากที่สุดสำหรับMail Mergeแม่แบบ. ดังนั้นความสามารถในการเรียกใช้Mail Mergeจากแฟ้มXMLไปยังเอกสารแม่แบบWordได้กลายเป็นความต้อ.

Microsoft Wordไม่มีวิธีการโดยตรงในการทำงานกับXMLข้อมูลเป็นแหล่งข้อมูลสำหรับการดำเนินงานMail Mergeในขณะที่Aspose.Wordsช่วยให้คุณสามารถดำเนินการMail Mergeด้วยข้อมูลจากแหล่งข้อมูลXML โปรดทราบว่าโครงสร้างของเอกสารXMLยังสามารถเปลี่ยนแปลงได้และข้อมูลจะยังคงถูกอ่ นี้จะช่วยให้เอกสารประเภทต่างๆXMLถูกผสานเข้าด้วยกันได้อย่างง่ายดาย.

ใช้วิธีการ`ReadXML`เพื่ออ่านสคีมาXMLและข้อมูลลงในวัตถุ`DataSet` อ็อบเจ็กต์นี้ถูกใช้เป็นแหล่งข้อมูลสำหรับmail merge.

{{% alert color="primary" %}}

คุณสามารถใช้แม่แบบเดียวกันสำหรับแหล่งข้อมูลที่แตกต่างกัน.

{{% /alert %}}

ต่อไปนี้XMLประกอบด้วยข้อมูลที่จำเป็นในการกรอกข้อมูลในเทมเพลตผสาน:

{{< highlight csharp >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโหลดXMLข้อมูลลงในDataSetแล้วใช้เป็นแหล่งข้อมูล:

{{< gist "aspose-words-gists" "0441f68c5209fec25c47d1a0a203fbb0" "xml-mail-merge.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

คุณสามารถสังเกตเห็นความแตกต่างระหว่างแม่แบบก่อนที่จะดำเนินการดำเนินการMail Merge:

<img src="fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset" style="width:250px"/>

และหลังจากดำเนินการดำเนินการMail Merge:

<img src="fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml" style="width:285px"/>
