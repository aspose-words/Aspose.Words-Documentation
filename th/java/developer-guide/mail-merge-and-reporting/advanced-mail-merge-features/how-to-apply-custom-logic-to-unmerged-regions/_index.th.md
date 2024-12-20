﻿---
title: วิธีการใช้ลอจิกแบบกำหนดเองกับพื้นที่ที่ไม่รวม
second_title: Aspose.WordsสำหรับJava
articleTitle: วิธีการใช้ลอจิกแบบกำหนดเองกับพื้นที่ที่ไม่รวม
linktitle: วิธีการใช้ลอจิกแบบกำหนดเองกับพื้นที่ที่ไม่รวม
type: docs
description: "ใช้ตรรกะแบบกำหนดเองกับพื้นที่ที่ไม่รวมระหว่างการดำเนินการMail Mergeโดยใช้Java."
weight: 70
url: /th/java/how-to-apply-custom-logic-to-unmerged-regions/
timestamp: 2024-01-27-14-07-04
---

มีบางสถานการณ์ที่ไม่ต้องการลบพื้นที่ที่ไม่ได้รวมออกจากเอกสารในระหว่างMail Mergeหรือผลลัพธ์ในเอกสารที่ดูไม่สมบูรณ์ มื่อการขาดงานของข้อมูลการป้อนข้อมูลควรจะแสดงให้กับผู้ใช้ในรูปแบบของข้อความแทน.

บทความนี้ไม่มีการอ้างอิงจากเอกสารอ้างอิงหรือแหล่งข้อมูลโปรดช่วยพัฒนาบทความนี้โด ถ้าพื้นที่นี้ไม่ได้ใช้แล้วชื่อและตารางจะยังคงอยู่หลังจากที่ภูมิภาคจะถูกลบออกซึ่งจะมีลักษณ.

บทความนี้จัดเตรียมโซลูชันการกำหนดวิธีการจัดการพื้นที่ที่ไม่ได้ใช้ในเอกสารด้วยตนเอง รหัสฐานสำหรับการทำงานนี้จะถูกจัดมาและสามารถนำกลับมาใช้ได้อย่างง่ายดายในโค.

ตรรกะที่จะนำไปใช้กับแต่ละพื้นที่ถูกกำหนดภายในคลาสที่ใช้อินเทอร์เฟซ[IFieldMergingCallback](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/) ในทำนองเดียวกันตัวจัดการMail Mergeสามารถตั้งค่าเพื่อควบคุมวิธีการรวมแต่ละฟิลด์ตัวจัดการนี้สาม ภายในตัวจัดการนี้คุณสามารถตั้งค่ารหัสเพื่อเปลี่ยนข้อความของภูมิภาคเอาโหนดหรือแถวที่ว่างเปล่าและเซลล์ฯลฯ.

ในตัวอย่างนี้เราจะใช้เอกสารที่แสดงด้านล่าง พื้นที่ที่ซ้อนกันและพื้นที่ที่อยู่ภายในตาราง

![apply-custom-logic-to-unmerged-regions-aspose-words-java](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-1.png)

เพื่อเป็นการสาธิตอย่างรวดเร็ว เราสามารถเรียกใช้ฐานข้อมูลตัวอย่างบนเอกสารตัวอย่างโดยเปิดใช้งานแฟล็ก [MailMergeCleanupOptions.REMOVE_UNUSED_REGIONS](https://reference.aspose.com/words/java/com.aspose.words/mailmergecleanupoptions/) คุณสมบัติจะลบภูมิภาคที่ไม่รวมออกจากเอกสารโดยอัตโนมัติระหว่างการ mail merge.

แหล่งข้อมูลประกอบด้วยสองระเบียนสำหรับภูมิภาค**StoreDetails**แต่จงใจจะมีข้อมูลใดๆสำหรับเด็ก**ContactDetails**ภูมิภาค นอกจากนี้พื้นที่**Suppliers**ไม่มีแถวข้อมูลใดๆเช่นกัน ทำให้พื้นที่ที่ไม่ได้ใช้ยังคงอยู่ในเอกสาร ผลลัพธ์หลังจากการรวมเอกสารกับแหล่งข้อมูลนี้อยู่ด้านล่าง

![merged-regions-aspose-words-java](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-2.png)

ดังที่ระบุไว้ในภาพคุณจะเห็นว่าภูมิภาค**ContactDetails**สำหรับเรกคอร์ดที่สองและ**Suppliers**ภูมิภาคถูกลบออกโดยอัตโนมัติโดยเครื่องยนต์Mail Mergeเนื่องจากไม่มีข้อมูล อย่างไรก็ตามมีปัญหาบางอย่างที่ทำให้เอกสารที่ส่งออกนี้ดูไม่สมบูรณ์:

- พื้นที่**ContactDetails**ยังคงทิ้งย่อหน้าไว้ด้วยข้อความ"รายละเอียดการติดต่อ".
- ในกรณีเดียวกันมีข้อบ่งชี้ว่ามีหมายเลขโทรศัพท์ไม่มีเพียงพื้นที่ว่างซึ่งอาจนำไปสู่ความสับส.
- ตารางและหัวเรื่องที่เกี่ยวข้องกับพื้นที่**Suppliers**ยังคงอยู่หลังจากพื้นที่ภายในตารางถูกลบออก.

เทคนิคที่ให้ไว้ในบทความนี้แสดงให้เห็นถึงวิธีการใช้ตรรกะแบบกำหนดเองกับแต่ละภูมิภาค.

**การแก้ปัญหา**

เมื่อต้องการใช้ตรรกะกับแต่ละพื้นที่ที่ไม่ได้ใช้ในเอกสารด้วยตนเองเราใช้ประโยชน์จากคุณลักษณะที่มีอยู่แล้วในAspose.Words.

เครื่องยนต์Mail Mergeให้คุณสมบัติในการลบพื้นที่ที่ไม่ได้ใช้ผ่านธง**MailMergeCleanupOptions.RemoveUnusedRegions** สามารถปิดใช้งานเพื่อไม่ให้พื้นที่ดังกล่าวถูกแตะต้องในระหว่างmail merge นี้ช่วยให้เราสามารถออกจากพื้นที่ที่ไม่รวมในเอกสารและจัดการกับพวกเขาด้วยตนเองแ.

จากนั้นเราสามารถใช้ประโยชน์จากคุณสมบัติ**MailMerge.FieldMergingCallback**เป็นวิธีการที่จะใช้ตรรกะที่กำหนดเองของเราเองกับภูมิภาคที่ไม่รวมเหล่านี้ในระหว่างMail Mergeผ่านการใช้คลาสจัดการการใช้อินเตอร์เฟซ**IFieldMergingCallback**.

รหัสนี้ภายในคลาสตัวจัดการเป็นคลาสเดียวที่คุณจะต้องปรับเปลี่ยนเพื่อควบคุมตรรกะที่ใช้กั รหัสอื่นๆในตัวอย่างนี้สามารถนำกลับมาใช้ได้โดยไม่ต้องปรับเปลี่ยนในโครงการใดๆ.

โครงการตัวอย่างนี้แสดงให้เห็นถึงเทคนิคนี้ มันเกี่ยวข้องกับขั้นตอนต่อไปนี้:

1. ประมวลผลMail Mergeบนเอกสารโดยใช้แหล่งข้อมูลของคุณ ธง**MailMergeCleanupOptions.RemoveUnusedRegions**ถูกปิดใช้งานสำหรับตอนนี้เราต้องการให้ภูมิภาคยังคงอยู่เพื่อให้เราสามารถจัดการกับ ภูมิภาคใดๆที่ไม่มีข้อมูลจะถูกทิ้งไว้ในเอกสาร.
1. เรียกวิธีการ**ExecuteCustomLogicOnEmptyRegions** วิธีการนี้มีอยู่ในตัวอย่างนี้ นินการซึ่งอนุญาตให้เรียกตัวจัดการที่ระบุสำหรับแต่ละพื้นที่ที่ไม่รวม วิธีนี้สามารถนำมาใช้ใหม่และสามารถคัดลอกไม่ได้เปลี่ยนแปลงไปยังโครงการใดๆที่ต้องใวิธีนี้ดำเนินการขั้นตอนต่อไปนี้:
   1. ตั้งค่าตัวจัดการที่ระบุโดยผู้ใช้ในคุณสมบัติ**MailMerge.FieldMergingCallback**.
   1. เรียกวิธีการ**CreateDataSourceFromDocumentRegions**ที่ยอมรับของผู้ใช้**Document**และ**ArrayList**ที่มีชื่อพื้นที่ เมธอดนี้จะสร้างแหล่งข้อมูลแบบจำลองที่มีตารางสำหรับแต่ละพื้นที่ที่ไม่รวมในเอกสาร.
   1. รันMail Mergeบนเอกสารโดยใช้แหล่งข้อมูลแบบจำลอง เมื่อMail Mergeถูกเรียกใช้กับแหล่งข้อมูลนี้จะอนุญาตให้เรียกใช้ตัวจัดการที่ผู้ใช้ระบุสำหรับแต่ละพื้น

**รหัส**

การใช้งานสำหรับวิธีการ**ExecuteCustomLogicOnEmptyRegions**จะพบด้านล่าง วิธีนี้ยอมรับพารามิเตอร์หลาย:

1. ออบเจกต์[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)ที่มีพื้นที่ที่ไม่รวมซึ่งจะถูกจัดการโดยตัวจัดการที่ผ่าน.
1. คลาสตัวจัดการที่กำหนดตรรกะที่จะนำไปใช้กับพื้นที่ที่ไม่รวม การจัดการนี้จะต้องใช้ [IFieldMergingCallback](https://www.aspose.com/api/java/words/com.aspose.words/interfaces/IFieldMergingCallback) อินเตอร์เฟซ.
1. ผ่านการใช้เกินที่เหมาะสมวิธีการยังสามารถยอมรับพารามิเตอร์ที่สาม-รายการของชื่อภู หากระบุสิ่งนี้แล้วจะมีเพียงชื่อพื้นที่ที่เหลืออยู่ในเอกสารที่ระบุในรายการเท่านั้นที่จะถูกจัดก ภูมิภาคอื่นๆที่พบจะไม่ถูกเรียกโดยตัวจัดการและลบออกโดยอัตโนมัติ เมื่อมีการระบุการโอเวอร์โหลดที่มีพารามิเตอร์เพียงสองพารามิเตอร์ทุกพื้นที่ที่เหลืออยู่ในเ.

**งคุณ**

แสดงวิธีรันลอจิกแบบกำหนดเองบนพื้นที่ที่ไม่ได้ใช้โดยใช้ตัวจัดการที่ระบุ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ExecuteCustomLogicOnUnusedRegions.java" >}}

{{% alert color="primary" %}}

หากคุณพิจารณาการรันวิธีการ**ExecuteCustomLogicOnEmptyRegions**อย่างต่อเนื่องกับตัวจัดการที่แตกต่างกัน(เช่นตัวจัดการแต่ละ.

{{% /alert %}}

**งคุณ**

กำหนดวิธีที่ใช้ในการจัดการพื้นที่ที่ไม่รวมด้วยตนเอง.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ManuallyHandleUnmergedRegions.java" >}}

วิธีการนี้เกี่ยวข้องกับการค้นหาพื้นที่ที่ไม่ได้รวมทั้งหมดในเอกสาร วิธีนี้ทำได้โดยใช้วิธีการ**MailMerge.GetFieldNames** เมธอดนี้จะส่งคืนฟิลด์ที่ผสานทั้งหมดในเอกสารรวมถึงเครื่องหมายจุดเริ่มต้นและจุดสิ้นสุดของพื้นที่(แสดงโดยฟิลด์ผสานกับคำนำหน้า*TableStart*หรือ*TableEnd*).

เมื่อพบฟิลด์`TableStart`ผสานนี้จะถูกเพิ่มเป็น**DataTable**ใหม่ใน**DataSet** รรวมกับระเบียนหลายรายการ)ตารางจะสร้างและเพิ่มก็ต่อเมื่อไม่มีอยู่แล้วใน**DataSet**.

เมื่อพบจุดเริ่มต้นภูมิภาคที่เหมาะสมและเพิ่มลงในฐานข้อมูลแล้ว ฟิลด์ถัดไป (ซึ่งสอดคล้องกับฟิลด์แรกในภูมิภาค) จะถูกเพิ่มลงใน **DataTable** จำเป็นต้องเพิ่มเฉพาะฟิลด์แรกสำหรับแต่ละฟิลด์ในภูมิภาคที่จะผสานและส่งไปยังตัวจัดการ.

นอกจากนี้เรายังตั้งค่าฟิลด์ของฟิลด์แรกเป็น"FirstField"เพื่อให้ง่ายต่อการใช้ตรรกะกับฟิลด์แรกหรืออื่ โดยรวมนี้มันหมายความว่ามันไม่จำเป็นที่จะยากรหัสชื่อของฟิลด์แรกหรือใช้รหัสพิเศษเพื่อ.

รหัสด้านล่างแสดงให้เห็นถึงวิธีการทำงานของระบบนี้ เอกสารที่แสดงในช่วงเริ่มต้นของบทความนี้จะถูกจดจำด้วยแหล่งข้อมูลเดียวกันแต่คราวนี้.

**งคุณ**

แสดงวิธีจัดการพื้นที่ที่ไม่รวมหลังจากMail Mergeด้วยโค้ดที่ผู้ใช้กำหนด.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-HandleUnmergedRegionsAfterMailMerge.java" >}}


รหัสดำเนินการที่แตกต่างกันตามชื่อของพื้นที่ที่ดึงข้อมูลโดยใช้คุณสมบัติ**FieldMergingArgs.TableName** โปรดทราบว่าขึ้นอยู่กับเอกสารและภูมิภาคของคุณคุณสามารถรหัสตัวจัดการเพื่อเรียกใช้ตรรกะขึ้นอยู่กับแต่ละภูมิภาคหรือรหัสที่ใช้กับทุกพื้นที่ที่ไม่ได้รวมในเอกสารหรือการรวมกันของทั้งสอง.

ตรรกะสำหรับภูมิภาค**ContactDetails**เกี่ยวข้องกับการเปลี่ยนข้อความของแต่ละฟิลด์ในภูมิภาค**ContactDetails**ด้วยข้อคว ชื่อของแต่ละฟิลด์จะตรงกันภายในตัวจัดการโดยใช้คุณสมบัติ**FieldMergingArgs.FieldName**.

กระบวนการที่คล้ายกันจะถูกนำไปใช้กับภูมิภาค**Suppliers**ด้วยการเพิ่มรหัสพิเศษเพื่อจัดการตารางที่ รหัสจะตรวจสอบว่าภูมิภาคอยู่ภายในตาราง(ตามที่มันอาจจะถูกลบออกแล้ว) หากเป็นเช่นนั้นมันจะลบตารางทั้งหมดออกจากเอกสารรวมทั้งย่อหน้าที่นำหน้าตราบใดที่มีการจัดรูปแบบด้วยรูปแบบหัวเรื่องเช่น"Heading 1".

**งคุณ**

แสดงวิธีกำหนดลอจิกแบบกำหนดเองในตัวจัดการการดำเนินการIFieldMergingCallbackที่ถูกดำเนินการสำหรับพื้.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-EmptyRegionsHandler.java" >}}

ผลของรหัสข้างต้นจะแสดงด้านล่าง รกจะถูกแทนที่ด้วยข้อความที่ให้ข้อมูลและการลบของตารางและส่วนหัวช่วยให้เอกสารที่.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-2](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-3.png)


รันในทุกพื้นที่ที่ไม่ได้ใช้แทนที่จะเป็นเพียงภูมิภาคที่เฉพาะเจาะจงโดยการลบการตรวจสอบชื่ ในกรณีนี้หากภูมิภาคใดๆภายในตารางไม่รวมกับข้อมูลใดๆทั้งภูมิภาคและตารางคอนเทนเนอร์.

เราสามารถแทรกโค้ดที่แตกต่างกันในตัวจัดการเพื่อควบคุมวิธีการจัดการภูมิภาคที่ไม่มีกา บทความนี้ไม่มีการอ้างอิงจากเอกสารอ้างอิงหรือแหล่งข้อมูลโปรดช่วยพัฒนาบทความนี้โด ย่อหน้าอื่นๆเหล่านี้จะถูกลบออกเนื่องจากจะยังคงอยู่ในภูมิภาคหลังจากการรวมข้อความขอ.

ข้อความการแทนที่จะถูกผสานลงในฟิลด์แรกโดยการตั้งค่าข้อความที่ระบุไว้ในคุณสมบัติ**FieldMergingArgs.Text** ข้อความจากคุณสมบัตินี้ถูกรวมเข้ากับฟิลด์โดยเครื่องยนต์Mail Merge.

รหัสนี้ใช้เฉพาะฟิลด์แรกในพื้นที่โดยการตรวจสอบคุณสมบัติ**FieldMergingArgs.FieldValue** ค่าฟิลด์ของฟิลด์แรกในพื้นที่ถูกทำเครื่องหมายด้วย"FirstField" นี้ทำให้ตรรกะชนิดนี้ง่ายต่อการใช้ในหลายภูมิภาคเนื่องจากไม่มีรหัสพิเศษเป็นสิ่งจำเป็น.

**งคุณ**

แสดงวิธีแทนที่พื้นที่ที่ไม่ได้ใช้ด้วยข้อความและลบย่อหน้าพิเศษ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ReplaceAnUnusedRegionWithAMessage.java" >}}

เอกสารผลลัพธ์หลังจากที่รหัสข้างต้นได้รับการดำเนินการจะแสดงด้านล่าง พื้นที่ที่ไม่ได้ใช้จะถูกแทนที่ด้วยข้อความที่ระบุว่าไม่มีระเบียนที่จะแสดง.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-3](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-4.png)


เป็นอีกตัวอย่างหนึ่ง,เราสามารถแทรกรหัสด้านล่างแทนรหัสเดิมจัดการ**SuppliersRegion**. นี้จะแสดงข้อความภายในตารางและผสานเซลล์แทนการเอาตารางออกจากเอกสาร เนื่องจากภูมิภาคอยู่ในตารางที่มีหลายเซลล์,มันดูดีกว่าที่จะมีเซลล์ของตารางรวมกันและข้อ.

**งคุณ**

แสดงวิธีผสานเซลล์ระดับบนทั้งหมดของพื้นที่ที่ไม่ได้ใช้และแสดงข้อความภายในตาราง.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-MergeAllTheParentCellsOfAnUnusedRegion.java" >}}

เอกสารผลลัพธ์หลังจากที่รหัสข้างต้นได้รับการดำเนินการจะแสดงด้านล่าง.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-4](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-5.png)


สุดท้าย,เราสามารถเรียกวิธีการ**ExecuteCustomLogicOnEmptyRegions**และระบุชื่อตารางที่ควรจะจัดการภายในวิธีการจัดการข.

**งคุณ**

แสดงวิธีระบุเฉพาะพื้นที่`ContactDetails`ที่จะจัดการผ่านคลาสตัวจัดการ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-HandleTheContactDetailsRegion.java" >}}

การโทรเกินพิกัดนี้ด้วยArrayListที่ระบุจะสร้างแหล่งข้อมูลซึ่งมีเฉพาะแถวข้อมูลสำหรับพื้นที่ที่ระบุ ภูมิภาคอื่นที่ไม่ใช่ภูมิภาค`ContactDetails`จะไม่ถูกจัดการและจะถูกลบออกโดยอัตโนมัติโดยเครื่องยนต์Mail Mergeแทน ผลของการโทรข้างต้นโดยใช้รหัสในตัวจัดการเดิมของเราจะแสดงด้านล่าง

![apply-custom-logic-to-unmerged-regions-aspose-words-java-5](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-6.png)
