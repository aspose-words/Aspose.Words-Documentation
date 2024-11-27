---
title: Mail Mergeแม่แบบจากMustacheไวยากรณ์ในC#
second_title: Aspose.Wordsสำหรับ.NET
articleTitle: Mail Mergeแม่แบบจากMustacheไวยากรณ์
linktitle: Mail Mergeแม่แบบจากMustacheไวยากรณ์
type: docs
description: "สร้างแม่แบบด้วยMustacheไวยากรณ์โดยใช้C# Mustacheไวยากรณ์เป็นตัวเลือกเดียวที่จะใช้กับแม่แบบที่ไม่มีฟิลด์(HTMLหรือTXT) ด้วยWordแม่แบบ,คุณมีสองตัวเลือก:ฟิลด์หรือMustacheไวยากรณ์."
keywords: "mail merge template mustache syntax c#"
weight: 40
url: /th/net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-07-11-08-07-06
---

Aspose.Wordsช่วยให้คุณสร้างเทมเพลตที่มีไวยากรณ์mustacheนอกเหนือจากเทมเพลตที่คุ้นเคย Mustacheเป็นตัวแปรทางเลือกของไวยากรณ์แม่แบบที่ประกอบด้วยชื่อแท็กที่ล้อมรอบด้วยและได้รับก.

ไวยากรณ์Mustacheเป็นตัวเลือกเดียวที่จะใช้กับเทมเพลตที่ไม่มีฟิลด์เช่นHTMLและTXTเทมเพลต ด้วยWordแม่แบบ,คุณมีสองตัวเลือกอย่างใดอย่างหนึ่งที่จะใช้ฟิลด์หรือMustacheไวยากรณ์.

ไวยากรณ์Mustacheรองรับแท็ก*foreach*ซึ่งเป็นทางเลือกสำหรับการใช้Mail Mergeกับภูมิภาค ดังนั้นประโยชน์คือการที่คุณสามารถใช้mustacheไวยากรณ์ถ้าด้วยเหตุผลบางอย่างที่คุณไม่สามารถ.

คุณยังสามารถรวมฟิลด์Mail Mergeกับฟิลด์เพิ่มเติมบางฟิลด์โดยใช้แท็ก*foreach*ตามที่แสดงในภาพด้านล่าง.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## สร้างเทมเพลตMustache

จุดสำคัญแรกที่จะชี้แจงคือMustacheไม่ได้เป็นเครื่องยนต์เทมเพลต Mustacheเป็นตัวแปรไวยากรณ์อื่นที่สามารถใช้ได้สำหรับแม่แบบใดๆใน[load format](https://reference.aspose.com/words/net/aspose.words/loadformat/)ได้รับการสนับสนุนโดยAspose.Words คุณเพียงแค่ต้องรวมไวยากรณ์บางอย่างและสอดคล้องกับข้อกำหนดMustache.

สมมติว่าคุณจำเป็นต้องส่งอีเมลเดียวกันไปยังผู้รับ 50 เพื่อปรับแต่งคำอวยพรด้วยชื่อแรกที่สอ คุณสามารถแทนที่ชื่อแรกของผู้รับโดยตัวยึดตำแหน่งบางส่วนดังต่อไปนี้:

> Dear {{FirstName}}
>
> I hereby...

คำถามที่นี่:วิธีที่คุณสามารถสร้าง 50 อีเมล์จาก 1 เดี่ยวMustacheแม่แบบ? เพื่อตอบคำถามนั้นคุณต้องดำเนินการMail Mergeกับภูมิภาคเพื่อเติมวงเล็บปีกกาหยิกสำหรับตัวยึดตำแ.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

ดังที่คุณสังเกตเห็นจากตัวอย่างข้างต้นในMustacheคุณจำเป็นต้องใช้เครื่องมือจัดฟันแบบหยิกสำหรับตัวยึดที่มีลักษณะเหมือนmustacheเมื่อคุณหมุนวงเล็บปีกกา 90 องศาตามเข็มนาฬิกา.

{{% /alert %}}

## ทำงานกับMustacheไวยากรณ์

Mustacheจะแสดงเป็นลำดับตรรกะน้อยลงเนื่องจากขาดคำสั่งการควบคุมใดๆที่เฉพาะเจาะจงเช่น*for*ลูปและ*if*และ*else*เงื่อนไข แต่คุณสามารถใช้รายการการประมวลผลแท็กส่วนและแลมบ์ดาเพื่อให้บรรลุการประเมิน ดังนั้นเพื่อรวมไวยากรณ์MustacheภายในMail Mergeการดำเนินการ,คุณจะต้องใช้คุณสมบัติ[UseNonMergeFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/usenonmergefields/)และตั้งค่าเป็น*True*.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทนที่แท็กMustacheด้วยข้อมูลที่ระบุ:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "mustache-syntax-using-data-table.cs" >}}

คุณสามารถสังเกตเห็นความแตกต่างระหว่างเอกสารก่อนที่จะประมวลผลMail Mergeกับภูมิภาคพร้อมกับใช้คุณสมบัติ**UseNonMergeFields**:

<img src="mustache-syntax-1.png" alt="mustache_syntax" style="width:400px"/>

{{% alert color="primary" %}}

ส่วนเริ่มต้นด้วยปอนด์และจบลงด้วยเครื่องหมายทับ นั่นคือ`{{#foreach list}}`เริ่มส่วน"โฟร์"ในขณะที่`{{/foreach list}}`สิ้นสุดลง.

{{% /alert %}}

และหลังจากใช้Mail Mergeกับภูมิภาค:

<img src="mustache-syntax-2.png" alt="mustache_syntax_result" style="width:300px"/>

## ใช้ฟิลด์`IF`เพื่อสร้างMail Mergeอัจฉริยะ

Aspose.Wordsอนุญาตให้คุณใช้Mail Mergeฟิลด์และMustacheแท็กที่มีคำสั่ง`IF` ฟิลด์`IF`สามารถใช้ในเอกสารMail Mergeเพื่อระงับช่องว่างและเครื่องหมายจุลภาคที่ไม่ต้องการหากฟิลด์ว่างเปล่า.

สูตรฟิลด์`IF`แสดงด้านล่าง:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

ที่นี่เงื่อนไขสามารถเป็นฟิลด์ผสานหรือแท็กMustache.

ตัวอย่างเช่นคุณสามารถใช้ฟิลด์`IF`หากคุณต้องการแทรก"ของเขา","เธอ","เขา"หรือ"เธอ"ขึ้นอยู่กับเพศดังต่อไปนี้:

**{ IF { MERGEFIELD Gender } = "MALE" "ข้อความจริง" "ข้อความเท็จ"}**

**{ IF "{{ GENDER }}" = "MALE" "ข้อความจริง" "ข้อความเท็จ"}**

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการดำเนินการMail Mergeด้วยMustacheแท็กและ`IF`ฟิลด์:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "use-if-else-mustache.cs" >}}

คุณสามารถสังเกตเห็นความแตกต่างระหว่างเอกสารก่อนที่จะใช้คุณสมบัติ**UseNonMergeFields**:

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

และหลังจากใช้คุณสมบัติ**UseNonMergeFields**:

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
