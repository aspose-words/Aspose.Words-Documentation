---
title: การทำงานกับบุ๊กมาร์กใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับบุ๊กมาร์ก
linktitle: การทำงานกับบุ๊กมาร์ก
description: "วิธีแทรก รับ ย้าย แสดงหรือซ่อนบุ๊กมาร์กโดยใช้ Python"
type: docs
weight: 180
url: /th/python-net/working-with-bookmarks/
---

บุ๊กมาร์กจะระบุตำแหน่งหรือส่วนต่างๆ ในเอกสาร Microsoft Word ที่คุณตั้งชื่อและระบุเพื่อใช้อ้างอิงในอนาคต ตัวอย่างเช่น คุณอาจใช้บุ๊กมาร์กเพื่อระบุข้อความที่คุณต้องการแก้ไขในภายหลัง แทนที่จะเลื่อนดูเอกสารเพื่อค้นหาข้อความ คุณสามารถไปที่เอกสารนั้นได้โดยใช้กล่องโต้ตอบบุ๊กมาร์ก

การดำเนินการที่สามารถทำได้ด้วยบุ๊กมาร์กโดยใช้ Aspose.Words จะเหมือนกับการดำเนินการที่คุณสามารถทำได้โดยใช้ Microsoft Word คุณสามารถแทรกบุ๊กมาร์กใหม่ ลบ ย้ายไปยังบุ๊กมาร์ก รับหรือตั้งชื่อบุ๊กมาร์ก รับหรือตั้งค่าข้อความที่อยู่ในนั้น ด้วย Aspose.Words คุณยังสามารถใช้บุ๊กมาร์กในรายงานหรือเอกสารเพื่อแทรกข้อมูลบางอย่างลงในบุ๊กมาร์ก หรือใช้การจัดรูปแบบพิเศษกับเนื้อหาได้ คุณยังสามารถใช้บุ๊กมาร์กเพื่อดึงข้อความจากตำแหน่งใดตำแหน่งหนึ่งในเอกสารของคุณได้

## แทรกบุ๊กมาร์ก

ใช้ [start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) และ [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/) เพื่อสร้างบุ๊กมาร์กโดยทำเครื่องหมายจุดเริ่มต้นและจุดสิ้นสุดตามลำดับ อย่าลืมส่งชื่อบุ๊กมาร์กเดียวกันให้กับทั้งสองวิธี บุ๊กมาร์กในเอกสารสามารถทับซ้อนกันและขยายช่วงใดก็ได้ บุ๊กมาร์กที่มีรูปแบบไม่ถูกต้องหรือบุ๊กมาร์กที่มีชื่อซ้ำกันจะถูกละเว้นเมื่อบันทึกเอกสาร

{{% alert color="primary" %}}

ช่องว่างสีขาวทั้งหมดในบุ๊กมาร์กถูกแทนที่ด้วยขีดล่าง ข้อจำกัดนี้มาจากรูปแบบ MS Word เนื่องจากบุ๊กมาร์กในรูปแบบ MS Word เช่น DOCX หรือ DOC ไม่สามารถมีช่องว่างได้ อย่างไรก็ตาม PDF อนุญาตให้ใช้บุ๊กมาร์กดังกล่าวได้ ตอนนี้ หากคุณต้องการใช้บุ๊กมาร์กในโครงร่าง PDF หรือ XPS คุณสามารถใช้บุ๊กมาร์กเหล่านั้นกับช่องว่างได้

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างบุ๊กมาร์กใหม่:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## รับบุ๊กมาร์ก

บางครั้งจำเป็นต้องได้รับคอลเลกชันบุ๊กมาร์กเพื่อทำซ้ำผ่านบุ๊กมาร์กหรือเพื่อวัตถุประสงค์อื่น ใช้คุณสมบัติ [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) ที่เปิดเผยโดยโหนดเอกสารใด ๆ ที่ส่งคืนออบเจ็กต์ [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) ที่แสดงถึงส่วนของเอกสารที่มีอยู่ในโหนดนี้ ใช้วัตถุนี้เพื่อดึงข้อมูล [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/) จากนั้นใช้ตัวสร้างดัชนีคอลเลกชันเพื่อรับบุ๊กมาร์กเฉพาะ

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างเหล่านี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการรับบุ๊กมาร์กจากคอลเลกชันบุ๊กมาร์ก:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีรับหรือตั้งชื่อบุ๊กมาร์กและข้อความ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการบุ๊กมาร์กตาราง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

หากคุณเปลี่ยนชื่อบุ๊กมาร์กเป็นชื่อที่มีอยู่แล้วในเอกสาร จะไม่สร้างข้อผิดพลาดและจะจัดเก็บเฉพาะบุ๊กมาร์กแรกเท่านั้นเมื่อคุณบันทึกเอกสาร

โปรดทราบว่าบุ๊กมาร์กบางส่วนในเอกสารถูกกำหนดให้กับช่องแบบฟอร์ม การย้ายไปที่บุ๊กมาร์กและการแทรกข้อความที่นั่นจะแทรกข้อความลงในโค้ดฟิลด์ของฟอร์ม แม้ว่าการดำเนินการนี้จะไม่ทำให้ฟิลด์แบบฟอร์มเป็นโมฆะ แต่ข้อความที่แทรกจะไม่ปรากฏให้เห็นเนื่องจากจะกลายเป็นส่วนหนึ่งของโค้ดฟิลด์

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเข้าถึงคอลัมน์ของตารางที่คั่นหน้า:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## ย้ายไปที่บุ๊กมาร์ก

หากคุณต้องการแทรกเนื้อหาที่หลากหลาย (ไม่ใช่แค่ข้อความธรรมดา) ลงในบุ๊กมาร์ก คุณควรใช้ [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) เพื่อย้ายเคอร์เซอร์ไปที่บุ๊กมาร์ก จากนั้นใช้วิธีการและคุณสมบัติ [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) เพื่อแทรกเนื้อหา

## แสดงซ่อนเนื้อหาบุ๊กมาร์ก

บุ๊กมาร์กทั้งหมด (*รวมถึงเนื้อหาที่บุ๊กมาร์ก*) สามารถห่อหุ้มไว้ในส่วน True ของช่อง `IF` ได้โดยใช้ Aspose.Words อาจเป็นในลักษณะที่ฟิลด์ `IF` มี Merge Field ที่ซ้อนกันในนิพจน์ (*ด้านซ้ายของตัวดำเนินการ*) และขึ้นอยู่กับค่าของ Merge Field ฟิลด์ `IF` จะแสดงหรือซ่อนเนื้อหาของบุ๊กมาร์กในเอกสาร Word

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแสดง/ซ่อนบุ๊กมาร์ก:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
