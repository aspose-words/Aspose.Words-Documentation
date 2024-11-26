---
title: การทำงานกับรูปภาพใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับรูปภาพ
linktitle: การทำงานกับรูปภาพ
description: "สร้างและจัดการรูปภาพในรูปแบบต่างๆ ในเอกสารโดยใช้ Python"
type: docs
weight: 300
url: /th/python-net/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ช่วยให้ผู้ใช้สามารถทำงานกับรูปภาพได้อย่างยืดหยุ่น ในบทความนี้ คุณสามารถสำรวจความเป็นไปได้บางประการในการทำงานกับรูปภาพเท่านั้น

## การแทรกรูปภาพ

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) มีวิธีการ [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) มากเกินไปซึ่งช่วยให้คุณสามารถแทรกรูปภาพแบบอินไลน์หรือแบบลอยได้ หากรูปภาพเป็นเมตาไฟล์ EMF หรือ WMF รูปภาพนั้นจะถูกแทรกลงในเอกสารในรูปแบบเมตาไฟล์ รูปภาพอื่นๆ ทั้งหมดจะถูกจัดเก็บในรูปแบบ PNG วิธี **แทรก_รูปภาพ** สามารถใช้รูปภาพจากแหล่งต่างๆ ได้:

- จากไฟล์หรือ `URL` โดยส่งพารามิเตอร์สตริง
- จากสตรีมโดยส่งพารามิเตอร์ `Stream`
- จากอาร์เรย์ไบต์โดยการส่งผ่านพารามิเตอร์อาร์เรย์ไบต์

สำหรับแต่ละวิธีของ **แทรก_รูปภาพ** มีการโอเวอร์โหลดเพิ่มเติมซึ่งทำให้คุณสามารถแทรกรูปภาพด้วยตัวเลือกต่อไปนี้:
- อินไลน์หรือลอยอยู่ในตำแหน่งเฉพาะ เช่น **แทรก_รูปภาพ**
- ระดับเปอร์เซ็นต์หรือขนาดที่กำหนดเอง นอกจากนี้ วิธีการ [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) ยังส่งคืนออบเจ็กต์ [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ที่เพิ่งสร้างและแทรก เพื่อให้คุณสามารถแก้ไขคุณสมบัติของ [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) เพิ่มเติมได้

### การแทรกรูปภาพอินไลน์

ส่งสตริงเดียวที่แสดงไฟล์ที่มีรูปภาพไปที่ [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) เพื่อแทรกรูปภาพลงในเอกสารเป็นกราฟิกอินไลน์

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกรูปภาพอินไลน์ที่ตำแหน่งเคอร์เซอร์ลงในเอกสาร:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### การแทรกรูปภาพแบบลอย (ตำแหน่งที่แน่นอน)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกรูปภาพแบบลอยจากไฟล์หรือ `URL` ในตำแหน่งและขนาดที่ระบุ:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg",
    aw.drawing.RelativeHorizontalPosition.MARGIN,
    100,
    aw.drawing.RelativeVerticalPosition.MARGIN,
    100,
    200,
    100,
    aw.drawing.WrapType.SQUARE)

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_floating_image.doc")
{{< /highlight >}}

## วิธีแยกรูปภาพออกจากเอกสาร

รูปภาพทั้งหมดจะถูกจัดเก็บไว้ในโหนด [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ในรูปแบบ [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) หากต้องการแยกรูปภาพทั้งหมดหรือรูปภาพที่มีประเภทเฉพาะออกจากเอกสาร ให้ทำตามขั้นตอนเหล่านี้:

- ใช้วิธี [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) เพื่อเลือกโหนด [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ทั้งหมด
- วนซ้ำผ่านการรวบรวมโหนดที่เกิดขึ้น
- ตรวจสอบคุณสมบัติบูลีน [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/)
- แยกข้อมูลภาพโดยใช้คุณสมบัติ [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/)
- บันทึกข้อมูลภาพเป็นไฟล์

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแยกรูปภาพจากเอกสารและบันทึกเป็นไฟล์:

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [ที่นี่](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx)

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx)

{{% /alert %}}

## วิธีแทรกบาร์โค้ดในแต่ละหน้าของเอกสาร

ตัวอย่างนี้สาธิตให้คุณเพิ่มบาร์โค้ดที่เหมือนกันหรือต่างกันในหน้าทั้งหมดหรือเฉพาะเจาะจงของเอกสาร Word ไม่มีวิธีโดยตรงในการเพิ่มบาร์โค้ดในทุกหน้าของเอกสาร แต่คุณสามารถใช้วิธี [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) และ [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) เพื่อย้ายไปยังส่วนหรือส่วนหัว/ส่วนท้าย และแทรกรูปภาพบาร์โค้ดตามที่คุณเห็นในโค้ดต่อไปนี้

ตัวอย่างโค้ดต่อไปนี้ แทรกภาพบาร์โค้ดในแต่ละหน้าของเอกสาร

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## ล็อคอัตราส่วนภาพของภาพ

อัตราส่วนภาพของรูปทรงเรขาคณิตคืออัตราส่วนของขนาดในมิติต่างๆ คุณสามารถล็อคอัตราส่วนภาพของภาพโดยใช้ [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) ค่าเริ่มต้นของอัตราส่วนภาพของรูปร่างจะขึ้นอยู่กับ [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/) เป็น `True` สำหรับ [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) และ `False` สำหรับรูปร่างประเภทอื่นๆ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับอัตราส่วนภาพ:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## วิธีรับขอบเขตของรูปร่างตามจริงเป็นคะแนน

หากคุณต้องการให้กล่องขอบเขตจริงของรูปร่างตามที่แสดงผลบนเพจ คุณสามารถทำได้โดยใช้คุณสมบัติ [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัตินี้:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## ครอบตัดรูปภาพ

การครอบตัดรูปภาพมักหมายถึงการลบส่วนนอกที่ไม่ต้องการของรูปภาพออกเพื่อช่วยปรับปรุงการจัดเฟรม นอกจากนี้ยังใช้สำหรับการลบบางส่วนของภาพเพื่อเพิ่มโฟกัสไปที่พื้นที่เฉพาะ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการบรรลุเป้าหมายนี้โดยใช้ Aspose.Words API:

{{< highlight python >}}
# The path to the documents directory.
inputPath = docs_base.images_dir + "Logo.jpg"
outputPath = docs_base.artifacts_dir + "cropped_logo.jpg"

self.crop_image(inputPath,outputPath, 100, 90, 200, 200)
{{< /highlight >}}

{{< highlight python >}}
@staticmethod
def crop_image(inPath : str, outPath : str, left : int, top : int, width : int, height : int) :
    
    doc = aw.Document();
    builder = aw.DocumentBuilder(doc)
    
    croppedImage = builder.insert_image(inPath)
    
    src_width_points = croppedImage.width
    src_height_points = croppedImage.height
    
    croppedImage.width = aw.ConvertUtil.pixel_to_point(width)
    croppedImage.height = aw.ConvertUtil.pixel_to_point(height)
    
    widthRatio = croppedImage.width / src_width_points
    heightRatio = croppedImage.height / src_height_points
    
    if (widthRatio< 1) :
        croppedImage.image_data.crop_right = 1 - widthRatio
    
    if (heightRatio< 1) :
        croppedImage.image_data.crop_bottom = 1 - heightRatio
    
    leftToWidth = aw.ConvertUtil.pixel_to_point(left) / src_width_points
    topToHeight = aw.ConvertUtil.pixel_to_point(top) / src_height_points
    
    croppedImage.image_data.crop_left = leftToWidth
    croppedImage.image_data.crop_right = croppedImage.image_data.crop_right - leftToWidth
    
    croppedImage.image_data.crop_top = topToHeight
    croppedImage.image_data.crop_bottom = croppedImage.image_data.crop_bottom - topToHeight
    
    croppedImage.get_shape_renderer().save(outPath, aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG))
{{< /highlight >}}

## การบันทึกภาพเป็น WMF

Aspose.Words มีฟังก์ชันในการบันทึกรูปภาพที่มีอยู่ในเอกสารเป็นรูปแบบ [WMF](https://docs.fileformat.com/image/wmf/) ในขณะที่แปลง DOCX เป็น RTF

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการบันทึกรูปภาพเป็น WMF ด้วยตัวเลือกการบันทึก RTF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
