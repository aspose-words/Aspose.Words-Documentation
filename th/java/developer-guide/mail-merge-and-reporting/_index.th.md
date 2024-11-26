﻿---
title: Mail MergeและการรายงานในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: Mail Mergeและการรายงาน
linktitle: Mail Mergeและการรายงาน
type: docs
description: "Mail Mergeเป็นคุณลักษณะที่เป็นที่นิยมสำหรับการสร้างเอกสารได้อย่างรวดเร็ว Aspose.WordsสำหรับJavaใช้ฟังก์ชันการทำงานมาตรฐานMail Mergeและก้าวหน้าไปหลายขั้นตอนข้างหน้า,เปลี่ยนมันเป็นโซลูชันการรายงานที่เต็มเปี่ยมที่ช่วยให้คุณสามารถสร้างเอกสารที่ซับซ้อนมากขึ้นเช่นรายงาน,แคตตาล็อก,สินค้าคงคลัง,และใบแจ้งหนี้."
keywords: "how to use Mail Merge Java"
weight: 40
url: /th/java/mail-merge-and-reporting/
timestamp: 2024-01-27-14-07-04
---

Mail Mergeเป็นคุณลักษณะที่เป็นที่นิยมสำหรับการสร้างเอกสารได้อย่างรวดเร็วและง่ายดายเช่นตัวอั Aspose.Wordsช่วยให้คุณสามารถสร้างเอกสารจากแม่แบบที่มีฟิลด์Mail Merge.

ฟิลด์Mail Mergeเป็นฟิลด์ที่คุณสามารถแทรกลงในแม่แบบmail mergeเพื่อรวมค่าที่เฉพาะเจาะจงจากแหล่งข้อมูล นแม่แบบอีเมลเพื่อให้คำทักทายจะมีชื่อแรกของผู้รับมากกว่าทั่วไป"สวัสดี!". Aspose.Wordsวางข้อมูลจากแหล่งภายนอกเช่นฐานข้อมูลหรือแฟ้มลงในฟิลด์เหล่านี้และจัดรูปแบบข้อมูล เอกสารผลลัพธ์จะถูกบันทึกไว้ในโฟลเดอร์ที่ระบุ.

Aspose.Wordsใช้ฟังก์ชันการทำงานมาตรฐานMail Mergeและก้าวหน้าไปหลายขั้นตอนข้างหน้า,เปลี่ยนมันเป็นโซลูชันการรายงานที่เต็มเปี่ยมที่ช่วยให้คุณสามารถสร้างเอกสารที่ซับซ้อนมากขึ้นเช่นรายงาน,แคตตาล็อก,สินค้าคงคลัง,และใบแจ้งหนี้. นี่คือข้อดีบางประการของโซลูชันการรายงานAspose.Words:

- รายงานการออกแบบในMicrosoft Wordโดยใช้ฟิลด์มาตรฐานMail Merge
- กำหนดพื้นที่ในเอกสารที่มีการเจริญเติบโต,เช่นแถวลำดับโดยละเอียด
- แทรกภาพในระหว่างmail merge
- ดำเนินการตรรกะที่กำหนดเองการควบคุมการจัดรูปแบบหรือแทรกเนื้อหาที่ซับซ้อนโดยใช้ตัวจัดการเหตุการณ์Mail Merge
- กรอกเอกสารด้วยข้อมูลจากแหล่งข้อมูลทุกประเภท

## กลไกและส่วนประกอบหลักของMail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Wordsให้ความสามารถในการโหลดเอกสารในต่างๆ[รูปแบบที่รองรับ](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)และจากนั้นช่วยให้ผู้ใช้สามารถดำเนินการMail Merge.

โดยปกติเอกสารที่โหลดช่วยให้คุณสามารถจัดเก็บฟิลด์ผสานตัวอย่างเช่นเอกสารในรูปแบบDOCX แต่มีรูปแบบที่ไม่เก็บฟิลด์ดังกล่าวตัวอย่างเช่นTXT ถ้าAspose.Wordsสนับสนุนการโหลดรูปแบบไฟล์ดังกล่าวคุณสามารถเพิ่มฟิลด์ผสานกับโมเดลเอกสารโดยตรงบันทึกเอกสารใน[รูปแบบที่รองรับ](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)ที่สะดวกและดำเนินการMail Merge.

การดำเนินการMail Mergeจะรวม*mail merge template*ของคุณและ*data source*ของคุณเพื่อสร้างแต่ละบุคคล*merged documents*.

## เทมเพลตMail Mergeคืออะไร {#what-is-a-mail-merge-template}

เป้าหมายของการใช้การดำเนินการmail mergeโดยใช้เทมเพลตผสานคือการทำให้กระบวนการสร้า.

มีหลายวิธีในการสร้างและออกแบบเทมเพลตผสาน คุณสามารถใช้Microsoft Wordและแม่แบบผสานไม่จำเป็นต้องเป็นแม่แบบMicrosoft Wordซึ่งเป็นเอกสารในรูปแบบDOTหรือDOTXอาจเป็นเอกสารปกติในรูปแบบDOCหรือDOCX คุณต้องแทรกฟิลด์พิเศษบางอย่างที่เรียกว่าฟิลด์ผสานลงในเทมเพลตนี้ในสถานที่ที่คุณต้องการ หรือคุณสามารถสร้างเทมเพลตผสานโดยใช้คลาสของ[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

เทมเพลตการผสานประกอบด้วยข้อความหลักซึ่งควรจะเหมือนกันในเอกสารออกทั้งหมดหลังจากที่คุณดำเนินการMail Merge คุณสามารถใช้รูปแบบใดก็ได้สำหรับเทมเพลตของคุณหากมีความสามารถในการเพิ่มฟิลด์ผ ฟิลด์ผสานทั้งหมดภายในเทมเพลตของคุณจะถูกกรอกจากแหล่งข้อมูลของคุณในระหว่างการดำเนินการMail Merge.

## แหล่งข้อมูลสำหรับการดำเนินงานMail Merge {#data-source-types-for-a-mail-merge-operation}

Aspose.WordsMail Mergeaccepแหล่งข้อมูลต่างๆ นี้สามารถเป็นได้ทั้งDataTable, DataView, DataSet, IDataReader, อาร์เรย์ของค่าที่สนับสนุนโดยADO.NETหรือแหล่งข้อมูลที่กำหนดเองที่แสดงโดยการใช้งาน[IMailMergeDataSource](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/).

แหล่งข้อมูลประกอบด้วยข้อมูลทั้งหมดที่ถูกดึงในระหว่างการดำเนินการMail Mergeเพื่อปรับแต่งอีเม แหล่งข้อมูลที่สามารถสร้างขึ้นด้วยตนเองหรือสร้างขึ้นโดยการรายงานจากฐานข้อมูลที่มีอ หากคุณมีข้อมูลในรูปแบบXMLคุณสามารถโหลดและผสานกับDataSet การดำเนินงานMail Mergeจะผ่านระเบียนแหล่งข้อมูลทั้งหมดและแทรกลงในฟิลด์Mail Mergeในเอกสาร คุณสามารถใช้อินเทอร์เฟซmail mergeบางอย่างเช่น[IMailMergeDataSourceRoot](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasourceroot/)เพื่อผสานข้อมูลจากแหล่งข้อมูลใดๆรวมถึงแบบสอบถามLINQไฟล์XMLหรือวัตถุทางธุรกิจ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโหลดตารางข้อมูลเป็นแหล่งข้อมูลสำหรับการดำเนินการMail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ExecuteMailMergeWithRegions-ExecuteMailMergeWithRegions.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Orders.docx).

{{% /alert %}}

## ผสานเอกสารของการดำเนินการMail Merge {#merged-documents-of-a-mail-merge-operation}

เอกสารที่ผสานเป็นผลมาจากการดำเนินการMail Mergeเมื่อคุณผสานแม่แบบกับแหล่งข้อมูล ฟิลด์ผสานทั้งหมดภายในเอกสารที่ผสานจะถูกแทนที่ด้วยข้อมูลจริงจากแหล่งข้อมูลของคุณ.

รูปภาพต่อไปนี้แสดงตัวอย่างของเทมเพลตผสานกับฟิลด์ที่ผสานก่อนดำเนินการดำเนินการMail Merge.

![mail-merge-and-reporting-aspose-words-java-1](/words/java/mail-merge-and-reporting/mail-merge-and-reporting-1.jpg)

รูปภาพต่อไปนี้แสดงตัวอย่างของเอกสารที่ผสานเอาต์พุตอันเป็นผลมาจากการดำเนินการMail Merge.

![mail-merge-and-reporting-aspose-words-java-2](/words/java/mail-merge-and-reporting/mail-merge-and-reporting-2.jpg)

## ดูเพิ่มเติม

- [ทำงานกับแม่แบบMailผสานในคำ](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)