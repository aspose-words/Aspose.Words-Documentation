---
title: Android ผ่าน Java ความแตกต่าง
second_title: Aspose.Words
articleTitle: Aspose.Words สําหรับ Android ผ่าน Java จํากัด API ความแตกต่าง
linktitle: Aspose.Words สําหรับ Android ผ่าน Java จํากัด API ความแตกต่าง
description: "Aspose.Words สําหรับ Android ผ่าน Java คุณสมบัติและ API ความแตกต่างเมื่อเทียบกับปกติ Aspose.Words สําหรับ Java รุ่น"
type: docs
weight: 50
url: /th/java/aspose-words-for-android-via-java-limitations-and-api-differences/
---

## ข้อจํากัดของ Aspose.Words สําหรับ Android ผ่าน Java API เทียบกับ Aspose.Words สําหรับ Java API

1 * Document. print * methods ไม่ว่าง
1 บันทึกใน **TIFF** ถึง **BMP** ยังไม่รองรับรูปแบบแฟ้ม *SaveFormat.TIFF* ถึง *SaveFormat.BMP* มีในสาธารณะ Aspose.Words สําหรับ Android ผ่าน Java API, แต่ *UnsupportedOperationException* จะถูกโยนเมื่อใช้รูปแบบการบันทึกเหล่านี้
1 การอ่าน **TIFF** ยังไม่รองรับรูปภาพ
1 เซ็น **ODT** ยังไม่รองรับเอกสาร
1 ไม่รองรับบาร์โค้ด
1 ไม่รองรับการไล่ระดับเส้นโค้ง
1 ไม่รองรับการพิมพ์

## สาธารณะ API ความแตกต่าง

- แอนดรอยด์ กราฟฟิค บิตแมพถูกใช้แทนจาวา.awt. image. beffered รูปภาพ
- แอนดรอยด์ กราฟฟิค Canvas ใช้แทน Java.awat. image.graphics2D;
- แอนดรอยด์ กราฟฟิค รูปหลายเหลี่ยม F ใช้แทนจาวา awt.geom.Rectangle2D. ทศนิยม;
- แอนดรอยด์ กราฟฟิค F ใช้แทน Java.awt.geom. Point2D. ทศนิยม;
- แอนดรอยด์ กราฟฟิค Reet ใช้แทน Java.awt สี่เหลี่ยม;
- แอนดรอยด์ กราฟฟิค จุดถูกใช้แทนจาวา จุด

ดูที่สาธารณะต่อไปนี้ API วิธีการ:

1 Com.asposite. words.Document builder:
   1. แทรกตัวพิมพ์เล็ก- ใหญ่
   1. แทรก Image( ไบต์, สองเท่า, สองเท่า)
   1. แทรก Image( bitmap, int, left, int, int, left, ดับเบิล, สองเท่า, สองเท่า, Int)
   1. แทรกตัวพิมพ์เล็ก- ใหญ่
   1. แทรก OLLObject (inputSteam, สตริง, บูเลียน, บิตแมพ)
   1. แทรก OLLObject( sturing, hulean, Holean, Bitmap)
   1. แทรก OLLObject( sting, สตริง, บูเลียน, บูเลน, บิตแมพ)
1 Com.asposite. words.IBarcodeGenerator:
   1. บิตแมพได้รับบาร์โค้ด รูปภาพ
   1. บิตแมพได้รับบาร์โค้ดเก่า รูปภาพ
1 com.asposite. words.Imagedata:
   1. ตั้งค่าโครงการ
   1.บิตแมพที่จะนําเข้า
1 com.asposite. words.Imagefailed MerningArgs:
   1. บิตแมพ( ข้อความ)
   1. ตั้งค่าโครงการ
1. com.aspost. words.Document:
   1. แอนดรอยด์. กราฟิก. พ.ศ. F แปล TOScale (in, Canvas, Fload, Fload, Ploop, Pload) โยนยกเว้น
   1. ลอยแปลง TOSize (in, Canvas, ลอย, ลอย, ลอย, ลอย, ลอย) โยนยกเว้น
1 Com.aspostive. words. สืบค้นเมื่อ:
   1. แอนดรอยด์. กราฟิก. RetF ได้รับ Rectanguage () จะโยนยกเว้น
1 com.asposite. words. NodeRenderBase:
   1. แอนดรอยด์. graphic. pointF. getsize inPoints ()
   1. แอนดรอยด์. กราฟิก. RetF ได้รับ Opague Bounds In Points ()
   1. Public Android.graphic.PointF. get Size InPixels (float, flope)
   1. แอนดรอยด์. กราฟิก. Retriet รับ Bounds InPixels (float, float)
   1. แอนดรอยด์. กราฟิก. Rect getopaque Bounds InPixels (float, float)
   1. แอนดรอยด์. กราฟิก. พ.ศ. F แปล Toscale( Canvas, Fload, Pload, Fload, Follow)
   1. ลอยแปลง TOSize (canvas, ลอย, ลอย, ลอย, ลอย)
1 Com.asposite. words.pageinfo:
   1. แอนดรอยด์. กราฟิก. PointF. รับข้อมูลอินฟิเชลส์ (float, float)
   1. แอนดรอยด์. graphic. pointF. getsize inPoints ()
1. com. access. คํา. รูปร่าง ฐาน:
   1. แอนดรอยด์. กราฟิก. การปรับค่า RetF ด้วย Effects (android.graphics.RectF)
   1. แอนดรอยด์. กราฟิก. RetF ได้รับ Bounds ()
   1. แอนดรอยด์. กราฟิก. RetF ได้ค่า Bounds InPoints
   1. แอนดรอยด์. กราฟิก. RetF ได้รับ Bounds with effects () แล้ว
   1. แอนดรอยด์. กราฟิก. ได้รับค่าที่ตั้งไว้
   1. แอนดรอยด์. graphic. pointF. get cordSize ()
   1. แอนดรอยด์. graphic. pointF. getsize inPoints ()
   1. แอนดรอยด์. graphic. PointF. ท้องถิ่น To Part (android.graphics.PointF)
   1. เซตบูลส์ (androids.graphics.RectF)
   1. เซต Coridorigin(android.graphics.Point)
   1. เซต CroordSize (android.graphics.PointF)
1 Com.aspostive. words.Thumb graphing graphations:
   1. แอนดรอยด์. graphic. pointF. get Thumbulseize ()
   1. เซต Thumb valuesize (android. graphics.PointF)

## Aspose.Words สําหรับ Android ผ่าน Java สิ่งที่ต้องการเพิ่มเติม

ในการใช้คุณสมบัติการเณรแบบเมตร และการโหลดเอกสารหรือภาพโดย http/ftp โพรโทคอล ควรเพิ่มสิทธิ์ในการเรียกโปรแกรมของพวกเขาก่อน
* <uses-perputation android: name="android. perternet"*

## สาธารณะ API ตัวอย่าง

{{< highlight csharp >}}
public void testPublicAPI1() throws Exception
    {
        final String imagePath = "myImage.pmg";
        Bitmap image = null;
        try
        {
            image = BitmapFactory.decodeFile(imagePath);
            DocumentBuilder builder = new DocumentBuilder();
            builder.insertImage(image);
        }
        finally
        {
            if (image != null)
                image.recycle();
        }
    }
{{< /highlight >}}

{{< highlight csharp >}}
public void testPublicAPI2() throws Exception
    {
        String gTestDocumentPath = "testDoc.docx";
        String outFile = "out.png";
        Document doc = new Document(gTestDocumentPath);
        Bitmap image = null;
        FileOutputStream fos = null;
        try
        {
            image = Bitmap.createBitmap(1000, 1000, Bitmap.Config.ARGB_8888);
            Canvas gr = new Canvas(image);
            gr.rotate(45);
            doc.renderToSize(0, gr, 0, 0, image.getWidth(), image.getHeight());
            fos = new FileOutputStream(outFile);
            image.compress(Bitmap.CompressFormat.PNG, 100, fos);
        }
        finally
        {
            if (fos != null)
                fos.close();
            if (image != null)
                image.recycle();
        }
    }
{{< /highlight >}}
