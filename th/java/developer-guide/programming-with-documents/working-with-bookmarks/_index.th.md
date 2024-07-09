---
title: ทํางานกับที่คั่นหน้าใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับที่คั่นหน้า
linktitle: ทํางานกับที่คั่นหน้า
description: "เข้าใจหลักการของที่คั่นหน้าและวิธีการใช้ที่คั่นหน้าในโปรแกรมของคุณ Java."
type: docs
weight: 180
url: /th/java/working-with-bookmarks/
---

ที่คั่นหน้าระบุในตัว Microsoft Word บันทึก สถาน ที่ หรือ ชิ้น ส่วน ต่าง ๆ ที่ คุณ ตั้ง ชื่อ และ ระบุ ชื่อ สําหรับ การ อ้างอิง ใน อนาคต. ตัว อย่าง เช่น คุณ อาจ ใช้ ข้อ ความ ที่ ระบุ ข้อ ความ ที่ คุณ ต้องการ แก้ไข ใน ภาย หลัง. แทนที่จะเลื่อนไปยังเอกสารเพื่อค้นหาข้อความ คุณสามารถไปยังมันได้ โดยใช้กล่องที่คั่นหน้า

ด้วย Aspose.Words, คุณสามารถใช้ที่คั่นหน้าในรายงานหรือเอกสาร เพื่อแทรกข้อมูลบางอย่างเข้าไปในที่คั่นหน้า หรือปรับใช้รูปแบบพิเศษกับเนื้อหาของที่คั่นหน้าได้ คุณสามารถใช้ที่คั่นหน้าเพื่อรับข้อความจากตําแหน่งที่ต้องการในเอกสารของคุณได้

การกระทําที่สามารถทําได้ในคั่นหน้าโดยใช้ Aspose.Words เป็นเหมือนกับอันที่คุณใช้ Microsoft Word. คุณสามารถใส่คั่นหน้าใหม่, ลบ, ย้ายไปยังที่คั่นหน้า, หรือตั้งชื่อที่คั่นหน้า, รับหรือตั้งข้อความที่แนบมาด้วย

## แทรกที่คั่นหน้า

ใช้ [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) ถึง [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) เพื่อสร้างที่คั่นหน้าโดยใช้เครื่องหมายเริ่มและสิ้นสุดตามรูปแบบ อย่าลืมส่งชื่อที่คั่นหน้าเดียวกันไปยังทั้งสองวิธี ที่คั่นหน้าในเอกสารสามารถซ้อนทับกันและตัดช่วงใด ๆ ได้ จะไม่สนใจการสร้างที่คั่นหน้าหรือที่คั่นหน้าที่ซ้ํากันเมื่อบันทึกเอกสาร

{{% alert color="primary" %}}

พื้นที่สีขาวทั้งหมดในที่คั่นหน้า ถูกแทนที่ด้วยเครื่องหมายเน้น ข้อห้ามนี้มาจากรูปแบบของคํา MSS เนื่องจากที่คั่นหน้าในรูปแบบคําแบบ MSS เช่น DCX หรือ DOC จะไม่สามารถมีช่องว่างสีขาวได้ อย่างไรก็ตาม PDF อนุญาตให้ทําคั่นหน้าดังกล่าวได้ ตอนนี้ ถ้าคุณต้องการใช้ที่คั่นหน้าใน PDF XPS หรือ SWF points คุณสามารถใช้มันกับช่องว่างสีขาว

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้ แสดงให้เห็นว่าจะสร้างที่คั่นหน้าใหม่อย่างไร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## ที่คั่นหน้า

บาง ครั้ง จําเป็น ต้อง นํา มา ใช้ เพื่อ ได้ มา ซึ่ง การ เก็บ รักษา ไว้ ในที่คั่นหน้า เพื่อ ทํา ให้ บริสุทธิ์ หรือ เพื่อ จุด ประสงค์ อื่น ๆ. ใช้ **ไม่. get Range** คุณสมบัติที่ได้รับจากโหนดใด ๆ ของเอกสารที่จะคืนค่าเป็น **Range** วัตถุที่แสดงถึงส่วนของเอกสารที่อยู่ในโหนดนี้ ใช้วัตถุนี้เพื่อเรียกข้อมูล **BookmarkCollection** จากนั้นใช้ตัวทําดัชนีของคลังสื่อเพื่อหาที่คั่นหน้าที่ระบุไว้

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มตัวอย่างของตัวอย่างต่อไปนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีการทําคั่นหน้าจากคลังที่คั่นหน้า:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการเรียกหรือตั้งค่าชื่อที่คั่นหน้าและข้อความ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการทําคั่นหน้าตาราง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

หากคุณเปลี่ยนชื่อที่คั่นหน้าเป็นชื่อที่มีอยู่ในเอกสารอยู่แล้ว จะไม่มีการสร้างข้อผิดพลาดใด ๆ และจะทําการจัดเก็บที่คั่นหน้าตัวแรกไว้เมื่อคุณบันทึกเอกสาร

โปรดสังเกตว่า ที่คั่นหน้าบางตัวในเอกสารได้ถูกมอบหมายให้สร้างช่องข้อมูล ย้ายไปยังที่คั่นหน้าดังกล่าวและแทรกข้อความมีแทรกข้อความลงในรหัสฟอร์ม แม้ ว่า การ ทํา เช่น นี้ จะ ไม่ ทํา ให้ ช่อง รูป แบบ เป็น โมฆะ แต่ จะ ไม่ สามารถ เห็น ข้อ ความ ที่ แทรก เข้า มา ได้ เพราะ เป็น ส่วน หนึ่ง ของ รหัส สนาม.

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีการเข้าใช้คอลัมน์ของตารางที่คั่นหน้า:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## ย้ายไปยังที่คั่นหน้า

หากคุณต้องการใส่เนื้อหาที่อุดมไปด้วย (ไม่เพียงแค่ข้อความธรรมดา) ลงในที่คั่นหน้า คุณควรใช้ [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) ย้ายเคอร์เซอร์ไปยังที่คั่นหน้าแล้วใช้ **DocumentBuilder** วิธีการและคุณสมบัติต่าง ๆ ที่จะแทรกเนื้อหา

## แสดงเนื้อหาที่คั่นหน้า

ที่คั่นหน้าทั้งหมด `IF` ใช้ช่องข้อมูล Aspose.Words. มันอาจจะเป็นแบบนั้น `IF` สนามมีสนามรวมในการแสดงออก ((ตั้งของ Office*) และขึ้นอยู่กับมูลค่าของการรวมสนาม, `IF` แสดงหรือซ่อนเนื้อหาของที่คั่นหน้าในเอกสารคํา

ตัวอย่างรหัสต่อไปนี้ จะแสดง/ ซ่อนที่คั่นหน้าอย่างไร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
