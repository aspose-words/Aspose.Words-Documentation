---
title: Android 이름 * Java 기타
second_title: Aspose.Words
articleTitle: Aspose.Words 제품정보 Android 이름 * Java 제한 및 API 기타
linktitle: Aspose.Words 제품정보 Android 이름 * Java 제한 및 API 기타
description: "Aspose.Words 제품정보 Android 이름 * Java 특징 및 API 정기적인 차이 Aspose.Words 제품정보 Java 버전."
type: docs
weight: 50
url: /ko/java/aspose-words-for-android-via-java-limitations-and-api-differences/
---

## 제한 사항 Aspose.Words 제품정보 Android 이름 * Java API 관련 기사 Aspose.Words 제품정보 Java API

1. 명세 *Document.print *methods는 유효하지 않습니다.
1. 명세 제품 정보 **TIFF** · **BMP** 형식은 지원되지 않습니다, 비록 *SaveFormat.TIFF* · *SaveFormat.BMP* 본문 바로가기 Aspose.Words 제품정보 Android 이름 * Java API, 그러나 *UnsupportedOperationException* 이 저장 형식이 사용될 때 thrown입니다.
1. 명세 이름 * **TIFF** 이미지는 지원되지 않습니다.
1. 명세 이름 * **ODT** 문서는 아직 지원되지 않습니다.
1. 명세 바코드는 지원되지 않습니다.
1. 명세 곡선을 따라 Gradients는 지원되지 않습니다
1. 명세 인쇄는 지원되지 않습니다

## 한국어 API 기타

- 안드로이드. 그래픽. 비트맵은 java.awt.image.Buffered 대신 사용됩니다. 이미지;
- 안드로이드. 그래픽. 캔버스는 java.awt.image.Graphics2D 대신 사용됩니다
- 안드로이드. 그래픽. 지원하다 F는 java.awt.geom.Rectangle2D 대신 사용됩니다. 부유물;
- android.graphics.포인트 F는 java.awt.geom.Point2D 대신 사용됩니다. 부유물;
- 안드로이드. 그래픽. Rect는 java.awt 대신 사용됩니다. 장방형;
- 안드로이드. 그래픽. 점은 java.awt 대신 사용됩니다. 지점.

본문 바로가기 API 방법:

1. 명세 com.aspose.words.DocumentBuilder:
   1. 삽입 이미지 (Bitmap)
   1. 삽입 이미지 (Bitmap, 두 배, 두 배)
   1. 삽입 이미지 (Bitmap, int, 두 배, int, 두 배, 두 배, int)
   1. insertOleImage(비트맵)
   1. insertOleObject(InputStream, String, boolean, 비트맵)
   1. insertOleObject(String, boolean, boolean, 비트맵)
   1. insertOleObject(String, String, boolean, boolean, 비트맵)
1. 명세 com.aspose.words.IBarcodeGenerator:
   1. 비트 맵 getBarcode 이미지 (BarcodeParameters)
   1. 비트 맵 getOldBarcode 이미지 (BarcodeParameters)
1. 명세 com.aspose.words.Image데이터:
   1. setImage (비트맵)
   1. 비트맵 toImage()
1. 명세 com.aspose.words.ImageFieldMergingArgs:
   1. 비트맵 getImage()
   1. setImage (비트맵)
1. com.aspose.words.Document:
   1. android.graphics.포인트 F renderToScale (int, Canvas, float, float, float)는 예외를 던져
   1. float 렌더링ToSize (int, 캔버스, 플로트, 플로트, 플로트) 예외를 던져
1. 명세 com.aspose.words.LayoutEnumerator:
   1. 기계적 인조 인간.graphics. RectF getRectangle() 예외를 던져
1. 명세 com.aspose.words.NodeRendererBase:
   1. android.graphics.PointF getSizeInPoints()
   1. 기계적 인조 인간.graphics. RectF getOpaqueBounds인포인트()
   1. 공공 android.graphics.PointF getSizeInPixels(float, float)
   1. 기계적 인조 인간.graphics. Rect getBoundsInPixels(퍼스트, 플로트)
   1. 기계적 인조 인간.graphics. Rect getOpaqueBoundsInPixels(풀, 플로트)
   1. android.graphics.포인트 F renderToScale (캔버스, 플로트, 플로트, 플로트)
   1. 플로트 렌더링ToSize (캔버스, 플로트, 플로트, 플로트)
1. 명세 com.aspose.words.PageInfo:
   1. android.graphics.PointF getSizeInPixels (풀, 부유물)
   1. android.graphics.PointF getSizeInPoints()
1. com.aspose.words. 제품 정보 자료:
   1. 기계적 인조 인간.graphics. RectF AdjustWithEffects (android.graphics.RectF)
   1. 기계적 인조 인간.graphics. RectF 겟소리()
   1. 기계적 인조 인간.graphics. RectF getBounds인포인트()
   1. 기계적 인조 인간.graphics. RectF getBoundsWithEffects()
   1. 기계적 인조 인간.graphics. 포인트 getCoordOrigin()
   1. 기계적 인조 인간.graphics.PointF getCoordSize()
   1. android.graphics.PointF getSizeInPoints()
   1. android.graphics.PointF 로컬ToParent(android.graphics.PointF)
   1. setBounds(android.graphics.RectF)
   1. setCoordOrigin (android.graphics.Point)
   1. setCoordSize (android.graphics.PointF)를 설정합니다
1. 명세 com.aspose.words.ThumbnailGeneratingOptions:
   1. 기계적 인조 인간.graphics.PointF getThumbnailSize()
   1. setThumbnailSize (android.graphics.PointF)를 설정합니다

## Aspose.Words 제품정보 Android 이름 * Java 추가 요구 사항

licensing 기능 및 로드 문서 또는 이미지를 사용하려면 http/ftp 프로토콜 사용자가 해당 응용 프로그램에 다음 권한을 추가해야합니다
*<uses-permission android:name="android.permission.INTERNET" />*

## 한국어 API 이름 *

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
