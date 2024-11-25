---
title: เปรียบเทียบเอกสารในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: เปรียบเทียบเอกสาร
linktitle: เปรียบเทียบเอกสาร
type: docs
description: "เปรียบเทียบเอกสารสองฉบับในรูปแบบที่สนับสนุนและแสดงการเปลี่ยนแปลงเนื้อหาโดยใช้C++ คุณสามารถใช้ตัวเลือกขั้นสูงเมื่อเปรียบเทียบ."
weight: 60
url: /th/cpp/compare-documents/
timestamp: 2024-01-27-14-07-04
---

การเปรียบเทียบเอกสารเป็นกระบวนการที่ระบุการเปลี่ยนแปลงระหว่างสองเอกสารแ กระบวนการนี้เปรียบเทียบเอกสารสองเอกสารใดๆรวมถึงรุ่นของเอกสารที่เฉพาะเจาะจงหนึ่งจากนั้นการเปลี่ยนแปลงระหว่างเอกสารทั้งสองจะแสดงเป็นการแก้ไขในเอกสารแรก.

วิธีการเปรียบเทียบจะทำได้โดยการเปรียบเทียบคำในระดับตัวอักษรหรือระดับคำ ถ้าคำมีการเปลี่ยนแปลงอย่างน้อยหนึ่งตัวอักษรในผลลัพธ์ความแตกต่างจะแสดงเป็นการเ กระบวนการของการเปรียบเทียบนี้เป็นงานปกติในอุตสาหกรรมทางกฎหมายและการเงิน.

คุณสามารถใช้Aspose.Wordsเพื่อเปรียบเทียบเอกสารและรับการเปลี่ยนแปลงเนื้อหาในการจัดรูปแบบ.

บทความนี้อธิบายวิธีการเปรียบเทียบเอกสารและวิธีการระบุคุณสมบัติการเปรียบเทียบขั้นสู.

{{% alert color="primary" %}}

**ลองออนไลน์**

คุณสามารถเปรียบเทียบสองเอกสารออนไลน์โดยใช้ [เปรียบเทียบเอกสารออนไลน์](https://products.aspose.app/words/comparison) กเขา.

โปรดทราบว่าวิธีการเปรียบเทียบ,อธิบายไว้ด้านล่าง,ถูกนำมาใช้ในเครื่องมือนี้เพื่อให้ได้ผลลัพธ์ที่เท่าเทียมกัน. ดังนั้นคุณจะได้รับผลลัพธ์เดียวกันแม้โดยใช้เครื่องมือเปรียบเทียบออนไลน์หรือโดยใช้วิธีการเปรียบเทียบในAspose.Words.

{{% /alert %}}

## ข้อจำกัดและรูปแบบไฟล์ที่สนับสนุน{#limitations-and-supported-file-formats}

การเปรียบเทียบเอกสารเป็นคุณลักษณะที่ซับซ้อนมาก มีส่วนที่แตกต่างกันของการรวมกันเนื้อหาที่จะต้องมีการวิเคราะห์ที่จะรับรู้ความแตกต่างทั้ เหตุผลสำหรับความซับซ้อนนี้เนื่องจากข้อเท็จจริงที่ว่าAspose.Wordsมีจุดมุ่งหมายเพื่อให้ได้ผลลัพธ์การเปรียบเทียบเช่นเดียวกับอัลกอริทึมการเปรียบเทียบMicrosoft Word.

ข้อจำกัดทั่วไปสำหรับเอกสารสองเอกสารที่ถูกเปรียบเทียบคือต้องไม่มีการแก้ไขก่อนที่จะเรียกวิธีเปรียบเทียบเนื่องจากมีข้อจำกัดนี้อยู่ในMicrosoft Word.

{{% alert color="primary" %}}

โปรดทราบว่าคุณสามารถเปรียบเทียบใดๆสองเอกสารภายใน [รูปแบบไฟล์ที่รองรับ](/words/cpp/supported-document-formats/). คุณสามารถเปรียบเทียบวัตถุเอกสารและแม้กระทั่งคุณสามารถสร้างวัตถุเหล่านั้นจากรอย.

{{% /alert %}}

## เปรียบเทียบสองเอกสาร{#compare-two-documents}

เมื่อคุณเปรียบเทียบเอกสารความแตกต่างของเอกสารหลังจากเดิมแสดงค่าเป็นการปรับ เมื่อคุณปรับเปลี่ยนเอกสารการแก้ไขแต่ละรายการจะมีการแก้ไขของตัวเองหลังจากรันวิธี.

Aspose.Wordsช่วยให้คุณสามารถระบุความแตกต่างของเอกสารโดยใช้วิธีการ[Compare](https://reference.aspose.com/words/cpp/aspose.words/document/compare/)ซึ่งจะคล้ายกับคุณลักษณะMicrosoft Wordเปรียบเทียบเอกสาร นแปลงรวมทั้งการปรับเปลี่ยนการจัดรูปแบบเช่นการเปลี่ยนแปลงแบบอักษรการเปลี่ยนระ.

อันเป็นผลมาจากการเปรียบเทียบเอกสารที่สามารถกำหนดเป็นเท่ากันหรือไม่เท่ากัน คำว่า"เท่ากับ"เอกสารหมายความว่าวิธีการเปรียบเทียบไม่สามารถแสดงการเปลี่ยนแปลงเ มหมายความว่าทั้งข้อความเอกสารและการจัดรูปแบบข้อความเหมือนกัน แต่อาจมีความแตกต่างอื่นๆระหว่างเอกสาร ตัวอย่างเช่นMicrosoft Wordสนับสนุนเฉพาะการแก้ไขรูปแบบสำหรับรูปแบบเท่านั้นและคุณไม่สามารถแท ดังนั้นเอกสารสามารถมีชุดรูปแบบที่แตกต่างกันและวิธีการ**Compare**ยังคงไม่มีการแก้ไข.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตรวจสอบว่าเอกสารสองเท่ากันหรือไม่:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareForEqual.cpp" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพียงแค่ใช้วิธีการ`Compare`กับสองเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareWhenDocumentHasRevisions.cpp" >}}

## ระบุตัวเลือกการเปรียบเทียบขั้นสูง{#specify-advanced-comparing-properties}

มีคุณสมบัติที่แตกต่างกันของ[CompareOptions](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/)คลาสที่คุณสามารถใช้เมื่อคุณต้องการเปรียบเทียบเอกสาร.

ตัวอย่างเช่นAspose.Wordsอนุญาตให้คุณละเว้นการเปลี่ยนแปลงที่เกิดขึ้นในระหว่างการดำเนินการเ คุณสามารถเลือกคุณสมบัติที่เหมาะสมสำหรับประเภทออบเจกต์เช่น[IgnoreHeadersAndFooters](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignorecomments/), และคนอื่นๆโดยการตั้งค่าให้"จริง".

นอกจากนี้Aspose.Wordsให้คุณ[Granularity](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_granularity/)ซึ่งคุณสามารถระบุว่าจะติดตามการเปลี่ยนแปลงตามอักขระหรือด้วยคำ.

คุณสมบัติทั่วไปอีกประการหนึ่งคือทางเลือกที่เอกสารที่จะแสดงการเปลี่ยนแปลงการเปรีย ตัวอย่างเช่นกล่องโต้ตอบ"เปรียบเทียบเอกสาร"ในMicrosoft Wordมีตัวเลือก"แสดงการเปลี่ยนแปลง–ซึ่งจะส่งผลต่อผลการเปรียบเทียบ Aspose.Wordsให้คุณสมบัติ[Target](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_target/)ที่ทำหน้าที่จุดประสงค์นี้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัติการเปรียบเทียบขั้นสูง:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cpp" >}}