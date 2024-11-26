---
title: การทำงานกับบุ๊กมาร์กในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับบุ๊กมาร์ก
linktitle: การทำงานกับบุ๊กมาร์ก
description: "การทำความเข้าใจแนวคิดบุ๊กมาร์กและวิธีที่บุ๊กมาร์กสามารถใช้ในโปรแกรมของคุณโดยใช้Java."
type: docs
weight: 180
url: /th/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

บุ๊กมาร์กระบุในMicrosoft Wordเอกสารสถานที่หรือเศษส่วนที่คุณตั้งชื่อและระบุสำหรับการอ้างอิงในอนาคต ตัวอย่างเช่นคุณอาจใช้บุ๊กมาร์กเพื่อระบุข้อความที่คุณต้องการแก้ไขในภายหลัง แทนที่จะเลื่อนผ่านเอกสารเพื่อค้นหาข้อความคุณสามารถไปที่เอกสารได้โดยใช้กล่องโต้ตอ.

ด้วยAspose.Wordsคุณสามารถใช้บุ๊กมาร์กในรายงานหรือเอกสารเพื่อแทรกข้อมูลบางอย่างลงในบุ๊กมาร์ คุณยังสามารถใช้บุ๊กมาร์กเพื่อดึงข้อความจากตำแหน่งที่ตั้งบางอย่างในเอกสารของคุณได้.

การดำเนินการที่สามารถทำได้ด้วยบุ๊กมาร์กที่ใช้Aspose.Wordsจะเหมือนกับที่คุณสามารถทำได้ด้วยMicrosoft Word คุณสามารถแทรกบุ๊คมาร์คใหม่ลบย้ายไปยังบุ๊คมาร์คได้รับหรือตั้งชื่อบุ๊คมาร์คได้รับหรือตั้งข้อ.

## แทรกบุ๊กมาร์ก

ใช้[startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String)และ[endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String)เพื่อสร้างบุ๊กมาร์กโดยการทำเครื่องหมายจุดเริ่มต้นและจุดสิ้นสุดตามลำดับ อย่าลืมที่จะผ่านชื่อบุ๊คมาร์คเดียวกันกับทั้งสองวิธี ที่คั่นหน้าในเอกสารสามารถทับซ้อนกันและขยายช่วงใดๆ บุ๊คมาร์คที่เกิดขึ้นไม่ดีหรือบุ๊คมาร์คที่มีชื่อที่ซ้ำกันจะถูกละเว้นเมื่อเอกสารจะถูกบันทึกไว้.

{{% alert color="primary" %}}

ช่องว่างสีขาวทั้งหมดในบุ๊คมาร์คถูกแทนที่ด้วยขีด ข้อจำกัดนี้มาจากรูปแบบคำMSเนื่องจากบุ๊กมาร์กในรูปแบบคำMSเช่นDOCXหรือDOCไม่สามารถมีช่องว่าง อย่างไรก็ตามPDFอนุญาตให้บุ๊กมาร์กดังกล่าว ดังนั้นตอนนี้,ถ้าคุณต้องการใช้ที่คั่นหน้าในPDF,XPSหรือSWFเค้าร่าง,คุณสามารถใช้มันด้วยช่องว่างสีขาว.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างบุ๊กมาร์กใหม่:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## ขอรับที่คั่นหน้า

บางครั้งก็เป็นสิ่งจำเป็นเพื่อขอรับคอลเลกชันที่คั่นหน้าซ้ำผ่านที่คั่นหน้าหรือเพื่อวัตถุประสง ใช้คุณสมบัติ**Node.getRange**ที่แสดงโดยโหนดเอกสารใดๆที่ส่งกลับวัตถุ**Range**ที่แสดงส่วนของเอกสารที่อยู่ในโหนด ใช้วัตถุนี้เพื่อดึงข้อมูล**BookmarkCollection**แล้วใช้ตัวทำดัชนีคอลเล็กชันเพื่อรับบุ๊กมาร์กที่เฉพาะเจาะจง.

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างต่อไปนี้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการขอรับบุ๊กมาร์กจากคอลเล็กชันบุ๊กมาร์ก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการรับหรือตั้งค่าชื่อบุ๊กมาร์กและข้อความ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการบุ๊กมาร์กตาราง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

หากคุณเปลี่ยนชื่อของบุ๊กมาร์กเป็นชื่อที่มีอยู่แล้วในเอกสาร,จะไม่มีข้อผิดพลาดจะถูกสร้างขึ้นและเฉพาะบุ๊กมาร์กแรกจะถูกเก็บไว้เมื่อคุณบันทึกเอกสาร.

โปรดทราบว่าบุ๊กมาร์กบางอย่างในเอกสารถูกกำหนดให้กับเขตข้อมูลแบบฟอร์ม ย้ายไปยังบุ๊คมาร์คดังกล่าวและการแทรกข้อความที่มีแทรกข้อความลงในรหัสฟิลด์แบบฟอร์ม แม้ว่านี้จะไม่ทำให้ฟิลด์ฟอร์มเป็นโมฆะข้อความที่แทรกจะไม่สามารถมองเห็นได้เนื่องจาก.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเข้าถึงคอลัมน์ของตารางที่คั่นหน้า:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## ย้ายไปยังบุ๊กมาร์ก

หากคุณต้องการแทรกเนื้อหาที่สมบูรณ์(ไม่ใช่แค่ข้อความธรรมดา)ลงในบุ๊กมาร์กคุณควรใช้[moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String)เพื่อย้ายเคอร์เซอร์ไปยังบุ๊กมาร์กแล้วใช้**DocumentBuilder**วิธีการและคุณสมบัติเพื่อแทรกเนื้อหา.

## แสดงซ่อนเนื้อหาที่คั่นหน้า

ที่คั่นหน้าทั้งหมด(*including the bookmarked content*)สามารถถูกห่อหุ้มภายในส่วนที่แท้จริงของฟิลด์`IF`โดยใช้Aspose.Words สามารถในลักษณะที่ฟิลด์`IF`ประกอบด้วยฟิลด์ผสานซ้อนกันในนิพจน์(*Left of Operator*)และขึ้นอยู่กับค่าของฟิลด์ผสานฟิลด์`IF`จะแสดงหรือซ่อนเนื้อหาของบุ๊กมาร์กในเอกสารคำ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีแสดง/ซ่อนบุ๊กมาร์ก.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
