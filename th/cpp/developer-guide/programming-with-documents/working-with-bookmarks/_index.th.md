---
title: การทำงานกับบุ๊กมาร์กในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับบุ๊กมาร์ก
linktitle: การทำงานกับบุ๊กมาร์ก
description: "การทำความเข้าใจแนวคิดบุ๊กมาร์กและวิธีที่บุ๊กมาร์กสามารถใช้ในโปรแกรมของคุณโดยใช้C++."
type: docs
weight: 180
url: /th/cpp/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

บุ๊กมาร์กระบุในMicrosoft Wordเอกสารสถานที่หรือเศษส่วนที่คุณตั้งชื่อและระบุสำหรับการอ้างอิงในอนาคต ตัวอย่างเช่นคุณอาจใช้บุ๊กมาร์กเพื่อระบุข้อความที่คุณต้องการแก้ไขในภายหลัง แทนที่จะเลื่อนผ่านเอกสารเพื่อค้นหาข้อความคุณสามารถไปที่เอกสารได้โดยใช้กล่องโต้ตอ.

การดำเนินการที่สามารถทำได้ด้วยบุ๊กมาร์กที่ใช้Aspose.Wordsจะเหมือนกับที่คุณสามารถทำได้ด้วยMicrosoft Word คุณสามารถแทรกบุ๊คมาร์คใหม่ลบย้ายไปยังบุ๊คมาร์คได้รับหรือตั้งชื่อบุ๊คมาร์คได้รับหรือตั้งข้อ ด้วยAspose.Wordsคุณยังสามารถใช้บุ๊กมาร์กในรายงานหรือเอกสารเพื่อแทรกข้อมูลบางอย่างลงในบุ๊กม คุณยังสามารถใช้บุ๊กมาร์กเพื่อดึงข้อความจากตำแหน่งที่ตั้งบางอย่างในเอกสารของคุณได้.

## แทรกบุ๊กมาร์ก

ใช้[StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/)และ[EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/)เพื่อสร้างบุ๊กมาร์กโดยการทำเครื่องหมายจุดเริ่มต้นและจุดสิ้นสุดตามลำดับ อย่าลืมที่จะผ่านชื่อบุ๊คมาร์คเดียวกันกับทั้งสองวิธี ที่คั่นหน้าในเอกสารสามารถทับซ้อนกันและขยายช่วงใดๆ บุ๊คมาร์คที่เกิดขึ้นไม่ดีหรือบุ๊คมาร์คที่มีชื่อที่ซ้ำกันจะถูกละเว้นเมื่อเอกสารจะถูกบันทึกไว้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างบุ๊กมาร์กใหม่:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## ขอรับที่คั่นหน้า

บางครั้งก็เป็นสิ่งจำเป็นเพื่อขอรับคอลเลกชันที่คั่นหน้าซ้ำผ่านที่คั่นหน้าหรือเพื่อวัตถุประสง ใช้คุณสมบัติ[Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/)ที่แสดงโดยโหนดเอกสารใดๆที่ส่งกลับวัตถุ[Range](https://reference.aspose.com/words/cpp/aspose.words/range/)ที่แสดงส่วนของเอกสารที่อยู่ในโหนด ใช้วัตถุนี้เพื่อดึงข้อมูล[BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/)แล้วใช้ตัวทำดัชนีคอลเล็กชันเพื่อรับบุ๊กมาร์กที่เฉพาะเจาะจง.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการขอรับบุ๊กมาร์กจากคอลเล็กชันบุ๊กมาร์ก:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการรับหรือตั้งค่าชื่อบุ๊กมาร์กและข้อความ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการบุ๊กมาร์กตาราง:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

หากคุณเปลี่ยนชื่อของบุ๊กมาร์กเป็นชื่อที่มีอยู่แล้วในเอกสาร,จะไม่มีข้อผิดพลาดจะถูกสร้างขึ้นและเฉพาะบุ๊กมาร์กแรกจะถูกเก็บไว้เมื่อคุณบันทึกเอกสาร.

{{% alert color="primary" %}}

โปรดทราบว่าบุ๊กมาร์กบางอย่างในเอกสารถูกกำหนดให้กับเขตข้อมูลแบบฟอร์ม ย้ายไปยังบุ๊คมาร์คดังกล่าวและการแทรกข้อความที่มีแทรกข้อความลงในรหัสฟิลด์แบบฟอร์ม แม้ว่านี้จะไม่ทำให้ฟิลด์ฟอร์มเป็นโมฆะข้อความที่แทรกจะไม่สามารถมองเห็นได้เนื่องจาก.

{{% /alert %}}

## ย้ายไปยังบุ๊กมาร์ก

หากคุณต้องการแทรกเนื้อหาที่สมบูรณ์(ไม่ใช่แค่ข้อความธรรมดา)ลงในบุ๊กมาร์กคุณควรใช้[MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/)เพื่อย้ายเคอร์เซอร์ไปยังบุ๊กมาร์กแล้วใช้[DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)วิธีการและคุณสมบัติเพื่อแทรกเนื้อหา.

## แสดงซ่อนเนื้อหาที่คั่นหน้า

สามารถรวม Bookmark ทั้งหมด (*including the bookmarked content*) ไว้ในส่วน True ของฟิลด์ `IF` ได้โดยใช้ Aspose.Words โดยที่ฟิลด์ `IF` อาจมี Merge Field ซ้อนกันในนิพจน์ (*Left of Operator*) และขึ้นอยู่กับค่าของ Merge Field ฟิลด์ `IF` จะแสดงหรือซ่อนเนื้อหาของ Bookmark ในเอกสาร Word.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแสดง/ซ่อนบุ๊กมาร์ก:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
