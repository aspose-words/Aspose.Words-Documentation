---
title: ประเภทของMail MergeการทำงานในC#
second_title: Aspose.Wordsสำหรับ.NET
articleTitle: ประเภทของการดำเนินการMail Merge
linktitle: ประเภทของการดำเนินการMail Merge
type: docs
description: "ดำเนินการสองประเภทที่แตกต่างกันของMail Mergeการดำเนินงาน:ง่ายMail MergeและMail Mergeด้วยภูมิภาคโดยใช้C# ง่ายMail Mergeทำซ้ำเอกสารทั้งหมดต่อแต่ละระเบียนแหล่งข้อมูลในขณะที่Mail Mergeกับภูมิภาคจะทำซ้ำเฉพาะภูมิภาคที่กำหนดต่อเร็กคอร์ดเท่านั้น."
keywords: "how to execute Mail Merge c#"
weight: 20
url: /th/net/types-of-mail-merge-operations/
timestamp: 2024-07-11-08-07-06
---

แนวคิดหลักของMail Mergeคือการสร้างเอกสารหรือเอกสารหลายฉบับโดยอัตโนมัติตามเทมเพลตแ Aspose.Wordsช่วยให้คุณสามารถดำเนินการสองประเภทที่แตกต่างกันของการดำเนินงานMail Merge:ง่ายMail MergeและMail Mergeกับ.

ตัวอย่างที่พบบ่อยที่สุดของการใช้ง่ายMail Mergeคือเมื่อคุณต้องการส่งเอกสารสำหรับลูกค้าที่แตกต่าง การทำเช่นนี้,คุณต้องสร้างฟิลด์ผสานเช่น*First Name*และ*Last Name*ในเทมเพลตของคุณ,และจากนั้นกรอกข้อมูล ในขณะที่ตัวอย่างที่พบบ่อยที่สุดของการใช้Mail Mergeกับภูมิภาคคือเมื่อคุณต้องการที่จะส่งเอกสารที่มี นเทมเพลตของคุณเองสำหรับการสั่งซื้อแต่ละครั้งเพื่อเติมเต็มข้อมูลที่จำเป็นทั้งหมดสำหรั.

ความแตกต่างหลักระหว่างการดำเนินการผสานทั้งสองอย่างคือMail Merge(ไม่มีภูมิภาค)ทำซ้ำเอกสารทั้งหมดต่อแต่ละระเบียนแหล่งข้อมูลในขณะที่Mail Mergeกับภูมิภาคจะทำซ้ำเฉพาะภูมิภาคที่กำหนดต่อเร็กคอร์ดเท่านั้น คุณสามารถคิดถึงการดำเนินการอย่างง่ายMail Mergeเป็นกรณีเฉพาะของการรวมกับภูมิภาคที่มีภูมิภ.

{{% alert color="primary" %}}

คลาส[MailMerge](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/)แสดงถึงฟังก์ชันการทำงานMail Merge ด้วยคุณสมบัติของมันคุณสามารถปรับแต่งลักษณะการทำงานที่จำเป็นก่อนที่จะดำเนินการMail Merge.

{{% /alert %}}

## ง่ายMail Mergeการดำเนินงาน {#simple-mail-merge-operation}

ง่ายMail Mergeใช้ในการกรอกข้อมูลMail Mergeinsideในเทมเพลตของคุณด้วยข้อมูลที่จำเป็นจากแหล่งข้อมูลขอ มันจึงคล้ายกับคลาสสิกMail MergeในMicrosoft Word.

คุณสามารถเพิ่มฟิลด์ผสานอย่างน้อยหนึ่งฟิลด์ในเทมเพลตของคุณและดำเนินการอย่างง่ายMail Merge ขอแนะนำให้ใช้หากเทมเพลทของคุณไม่มีพื้นที่ผสาน.

ข้อจำกัดหลักของการใช้ชนิดนี้เป็นเนื้อหาเอกสารทั้งหมดจะถูกทำซ้ำสำหรับแต่ละระเบียน.

### วิธีการดำเนินการอย่างง่ายMail Mergeการดำเนินการ {#how-to-execute-a-simple-mail-merge-operation}

เมื่อเทมเพลตของคุณพร้อมแล้วคุณสามารถเริ่มดำเนินการอย่างง่ายMail Merge Aspose.Wordsช่วยให้คุณสามารถดำเนินการอย่างง่ายMail Mergeโดยใช้[Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/#execute/)ที่แตกต่างกันที่ยอมรับวัตถุข้อมูลต่างๆเป็น.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการดำเนินการอย่างง่ายMail Mergeโดยใช้วิธีการอย่างใดอย่างหนึ่ง[Execute](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "execute-simple-mail-merge.cs" >}}

คุณสามารถสังเกตเห็นความแตกต่างระหว่างเอกสารก่อนที่จะดำเนินการอย่างง่ายmail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template" style="width:300px"/>

และหลังจากที่ดำเนินการอย่างง่ายmail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge" style="width:300px"/>

### วิธีการสร้างเอกสารที่ผสาน

ในAspose.WordsการดำเนินงานมาตรฐานMail Mergeจะเติมเพียงเอกสารเดียวที่มีเนื้อหาจากแหล่งข้อมูลของคุณ ดังนั้นคุณจะต้องดำเนินการดำเนินการMail Mergeหลายครั้งเพื่อสร้างเอกสารที่รวมหลายเป็นเอาต์พุ.

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีสร้างเอกสารที่รวมหลายรายการระหว่างการดำเนินการMail Merge:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "produce-multiple-documents.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

## Mail Mergeกับภูมิภาค

คุณสามารถสร้างภูมิภาคต่างๆในเทมเพลตของคุณเพื่อให้มีพื้นที่พิเศษที่คุณสามารถกรอกข้อมู ใช้Mail Mergeกับพื้นที่หากคุณต้องการแทรกตารางแถวที่มีข้อมูลซ้ำเพื่อให้เอกสารของคุณเติบโตได้อย่.

คุณสามารถสร้างพื้นที่ที่ซ้อนกัน(เด็ก)รวมทั้งผสานพื้นที่ ข้อได้เปรียบหลักของการใช้ประเภทนี้คือการเพิ่มชิ้นส่วนภายในเอกสารแบบไดนามิก ดูรายละเอียดเพิ่มเติมในบทความถัดไป"ซ้อนMail Mergeกับภูมิภาค".

{{% alert color="primary" %}}

สามารถหาข้อมูลเกี่ยวกับภูมิภาคMail Mergeได้โดยใช้ชั้นเรียน[MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

### วิธีการประมวลผลMail Mergeกับภูมิภาค

ภูมิภาคMail Mergeเป็นส่วนเฉพาะภายในเอกสารที่มีจุดเริ่มต้นและจุดสิ้นสุด จุดทั้งสองจุดจะแสดงเป็นMail Mergeฟิลด์ที่มีชื่อเฉพาะ*"TableStart:XXX"*และ*"TableEnd:XXX"* เนื้อหาทั้งหมดที่รวมอยู่ในภูมิภาคMail Mergeจะถูกทำซ้ำโดยอัตโนมัติสำหรับทุกระเบียนในแหล่งข้อมูล.

Aspose.Wordsอนุญาตให้คุณประมวลผลMail Mergeกับพื้นที่โดยใช้พื้นที่ต่างๆ[Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/)ที่ยอมรับวัตถุข้อมูลต่างๆเป็นแหล่งข้อมูล.

ในฐานะที่เป็นขั้นตอนแรก,เราจำเป็นต้องสร้าง`DataSet`ที่จะผ่านมันในภายหลังเป็นพารามิเตอร์การป้อนข้อมูลไปยังวิธีการ`ExecuteWithRegions`:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "create-data-set.cs" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการรันMail Mergeกับภูมิภาคโดยใช้วิธีการ[ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/):

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "mail-merge-with-regions.cs" >}}

คุณสามารถสังเกตเห็นความแตกต่างระหว่างเอกสารก่อนที่จะประมวลผลMail Mergeกับภูมิภาค:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

และหลังจากดำเนินการMail Mergeกับภูมิภาค:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

### ข้อจำกัดของMail Mergeกับภูมิภาค

มีประเด็นสำคัญบางอย่างที่คุณต้องพิจารณาเมื่อดำเนินการMail Mergeกับภูมิภาค:

* จุดเริ่มต้น*TableStart:Orders*และจุดสิ้นสุด*TableEnd:Orders*ทั้งสองต้องอยู่ในแถวหรือเซลล์เดียวกัน ตัวอย่างเช่นถ้าคุณเริ่มผสานพื้นที่ในเซลล์ของตารางคุณต้องสิ้นสุดพื้นที่ผสานในแถวเดียวกั.
* ชื่อฟิลด์ผสานต้องตรงกับชื่อคอลัมน์ในDataTableของคุณ เว้นแต่คุณจะระบุฟิลด์ที่แม็พไว้Mail Mergeที่มีพื้นที่จะไม่ประสบความสำเร็จสำหรับฟิลด์ผสานที่มีชื่อที่แต.

ถ้าหนึ่งในกฎเหล่านี้เสียคุณจะได้รับผลลัพธ์ที่ไม่คาดคิดหรือข้อยกเว้นอาจจะโยน.

{{% alert color="primary" %}}

หากคุณไม่ได้ใช้พื้นที่Mail Mergeแล้วมันจะคล้ายกับMicrosoft Wordmail mergeและเนื้อหาเอกสารทั้งหมดจะถูกทำซ้ำสำหรับแต่ละระเบียนในแหล่งข้อมูล.

{{% /alert %}}

