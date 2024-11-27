---
title: Mail MergeและการรายงานในPython
second_title: Aspose.WordsสำหรับPython via .NET
articleTitle: Mail Mergeและการรายงาน
linktitle: Mail Mergeและการรายงาน
type: docs
description: "Mail Mergeเป็นคุณลักษณะที่เป็นที่นิยมสำหรับการสร้างเอกสารได้อย่างรวดเร็วโดยใช้Python Aspose.WordsสำหรับPython via .NETใช้ฟังก์ชันการทำงานมาตรฐานMail Mergeและก้าวหน้าไปหลายขั้นตอนข้างหน้า,เปลี่ยนมันเป็นโซลูชันการรายงานที่เต็มเปี่ยมที่ช่วยให้คุณสามารถสร้างเอกสารที่ซับซ้อนมากขึ้นเช่นรายงาน,แคตตาล็อก,สินค้าคงคลัง,และใบแจ้งหนี้."
keywords: "how to use Mail Merge python"
weight: 30
url: /th/python-net/mail-merge-and-reporting/
timestamp: 2024-01-27-14-07-04
---

Mail Mergeเป็นคุณลักษณะที่เป็นที่นิยมสำหรับการสร้างเอกสารได้อย่างรวดเร็วและง่ายดายเช่นตัวอั Aspose.Wordsช่วยให้คุณสามารถสร้างเอกสารจากแม่แบบที่มีฟิลด์Mail Merge.

ฟิลด์Mail Mergeเป็นฟิลด์ที่คุณสามารถแทรกลงในแม่แบบmail mergeเพื่อรวมค่าที่เฉพาะเจาะจงจากแหล่งข้อมูล นแม่แบบอีเมลเพื่อให้คำทักทายจะมีชื่อแรกของผู้รับมากกว่าทั่วไป"สวัสดี!". Aspose.Wordsวางข้อมูลจากแหล่งภายนอกเช่นฐานข้อมูลหรือแฟ้มลงในฟิลด์เหล่านี้และจัดรูปแบบข้อมูล เอกสารผลลัพธ์จะถูกบันทึกไว้ในโฟลเดอร์ที่ระบุ.

Aspose.Wordsใช้ฟังก์ชันการทำงานมาตรฐานMail Mergeและก้าวหน้าไปหลายขั้นตอนข้างหน้า,เปลี่ยนมันเป็นโซลูชันการรายงานที่เต็มเปี่ยมที่ช่วยให้คุณสามารถสร้างเอกสารที่ซับซ้อนมากขึ้นเช่นรายงาน,แคตตาล็อก,สินค้าคงคลัง,และใบแจ้งหนี้. นี่คือข้อดีบางประการของโซลูชันการรายงานAspose.Words:

- รายงานการออกแบบในMicrosoft Wordโดยใช้ฟิลด์มาตรฐานMail Merge
- กำหนดพื้นที่ในเอกสารที่กำลังเติบโตเช่นแถวลำดับโดยละเอียด(ปัจจุบันไม่รองรับในเวอร์ชันPython)
- แทรกภาพในระหว่างmail merge
- ดำเนินการตรรกะที่กำหนดเองควบคุมการจัดรูปแบบหรือแทรกเนื้อหาที่ซับซ้อนโดยใช้ตัวจัดการเหตุการณ์Mail Merge(ปัจจุบันไม่รองรับในเวอร์ชันPython)
- กรอกเอกสารที่มีข้อมูลจากแหล่งข้อมูลประเภทใดๆ(ปัจจุบันไม่ได้รับการสนับสนุนในรุ่นPythonเฉพาะแหล่งข้อมูลอาร์เรย์ได้รับการสนับสนุน)

{{% alert color="primary" %}}

โมดูล[aspose.words.mailmerging](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/)ถูกใช้เพื่อทำงานกับการรวมจดหมาย.

{{% /alert %}}

## กลไกและส่วนประกอบหลักของการดำเนินงานMail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Wordsให้ความสามารถในการโหลดเอกสารในต่างๆ[supported formats](https://reference.aspose.com/words/python-net/aspose.words/loadformat/)และจากนั้นช่วยให้ผู้ใช้สามารถดำเนินการMail Merge.

โดยปกติเอกสารที่โหลดช่วยให้คุณสามารถจัดเก็บฟิลด์ผสานตัวอย่างเช่นเอกสารในรูปแบบDOCX แต่มีรูปแบบที่ไม่เก็บฟิลด์ดังกล่าวตัวอย่างเช่นTXT ถ้าAspose.Wordsสนับสนุนการโหลดรูปแบบไฟล์ดังกล่าวคุณสามารถเพิ่มฟิลด์ผสานกับโมเดลเอกสารโดยตรงบันทึกเอกสารใน[supported format](https://reference.aspose.com/words/python-net/aspose.words/saveformat/)ที่สะดวกและดำเนินการMail Merge.

การดำเนินการMail Mergeจะรวม*mail merge template*ของคุณและ*data source*ของคุณเพื่อสร้างแต่ละบุคคล*merged documents*.

## เทมเพลตMail Mergeคืออะไร {#what-is-a-mail-merge-template}

เป้าหมายของการใช้การดำเนินการmail mergeโดยใช้เทมเพลตผสานคือการทำให้กระบวนการสร้า.

มีหลายวิธีในการสร้างและออกแบบเทมเพลตผสาน คุณสามารถใช้Microsoft Wordและแม่แบบผสานไม่จำเป็นต้องเป็นแม่แบบMicrosoft Wordซึ่งเป็นเอกสารในรูปแบบDOTหรือDOTXอาจเป็นเอกสารปกติในรูปแบบDOCหรือDOCX คุณต้องแทรกฟิลด์พิเศษบางอย่างที่เรียกว่าฟิลด์ผสานลงในเทมเพลตนี้ในสถานที่ที่คุณต้องการ หรือคุณสามารถสร้างเทมเพลตผสานโดยใช้คลาสของ[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

เทมเพลตการผสานประกอบด้วยข้อความหลักซึ่งควรจะเหมือนกันในเอกสารออกทั้งหมดหลังจากที่คุณดำเนินการMail Merge คุณสามารถใช้รูปแบบใดก็ได้สำหรับเทมเพลตของคุณหากมีความสามารถในการเพิ่มฟิลด์ผ ฟิลด์ผสานทั้งหมดภายในเทมเพลตของคุณจะถูกกรอกจากแหล่งข้อมูลของคุณในระหว่างการดำเนินการMail Merge.

## ชนิดแหล่งข้อมูลสำหรับการดำเนินงานMail Merge {#data-source-types-for-a-mail-merge-operation}

ปัจจุบันAspose.WordsสำหรับPython via .NETMail Mergeaccepเฉพาะอาร์เรย์ของค่าเป็นแหล่งข้อมูลเท่านั้น ประเภทอื่นๆจะถูกเพิ่มเข้าไปในรุ่นอนาคต.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างเทมเพลตที่เรียบง่ายและเติมข้อมูลโดยใช้ฟังก์ชันMail Merge:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-SimpleMailMerge.py" >}}


## ผสานเอกสารของการดำเนินการMail Merge {#merged-documents-of-a-mail-merge-operation}

เอกสารที่ผสานเป็นผลมาจากการดำเนินการMail Mergeเมื่อคุณผสานแม่แบบกับแหล่งข้อมูล ฟิลด์ผสานทั้งหมดภายในเอกสารที่ผสานจะถูกแทนที่ด้วยข้อมูลจริงจากแหล่งข้อมูลของคุณ.

รูปภาพต่อไปนี้แสดงตัวอย่างของเทมเพลตผสานกับฟิลด์ที่ผสานก่อนดำเนินการดำเนินการMail Merge.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

รูปภาพต่อไปนี้แสดงตัวอย่างของเอกสารที่ผสานเอาต์พุตอันเป็นผลมาจากการดำเนินการMail Merge.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## ดูเพิ่มเติม

- [ทำงานกับMail Mergeแม่แบบในWord](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
