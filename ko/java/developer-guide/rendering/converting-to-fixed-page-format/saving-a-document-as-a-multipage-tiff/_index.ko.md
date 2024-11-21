---
title: Multipage TIFF로 문서 저장 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: Multipage TIFF로 문서 저장
linktitle: Multipage TIFF로 문서 저장
description: "TIFF 형식의 예에서 논의되는 래스터 이미지로 문서를 변환합니다. TIFF가 표시된 방법을 결정하려면 추가 옵션을 지정해야 합니다. 해상도, 페이지 수, 이미지 binarization 등 Java·"
type: docs
weight: 30
url: /ko/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

문서 작업을 할 때, 당신은 종종 래스터 이미지 파일 (s)에 문서를 변환해야합니다. 읽을 수 있고 인쇄할 수 있지만 편집할 수 없는 형식으로 문서를 제시해야 하는 경우 특히 관련 사항입니다. 예를 들어, 문서의 첫 페이지의 래스터 이미지를 미리 볼 수 있습니다. 이 문서는 TIFF 형식의 예를 사용하여 래스터 이미지로 문서를 변환하는 방법을 설명합니다 – 더 많은 인기 이미지 형식 중 하나입니다.

## DOC를 Multi-Page TIFF로 변환

내 계정 Aspose.Words, DOC에서 TIFF로의 변환은 코드의 한 줄과 함께 수행 할 수 있습니다, 단순히 "save to" 경로와 관련된 파일 확장을 전달하여 [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) 방법. 더 보기 **Save** 자동적으로 derives `SaveFormat` 경로에 지정된 파일 이름 확장에서. 다음 예제는 TIFF 형식으로 문서를 변환하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## TIFF 렌더링시 추가 옵션 지정

렌더링 결과에 영향을 미치는 추가 옵션을 지정해야 합니다. 이 목적을 위해, 사용 [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) 문서가 이미지에 표시되는 방법을 결정하는 속성을 포함하는 클래스. 다음을 지정할 수 있습니다:

- 사용 가능한 옵션 목록을 결정하는 형식을 저장 ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/)·
- 해결책 ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution)·
- 페이지 수 ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount)·
- 색상 및 조명 설정 ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast)·
- 이미지 품질 ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions)·
- 이미지의 binarize에 사용되는 방법 ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering)·
- 생성 된 이미지의 픽셀 형식 (pixel format)[PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat)·
- - - Windows metafiles 처리 Aspose.Words (주)[MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer)·
- 당신이 볼 수있는 추가 옵션 **ImageSaveOptions** 수업시간

다음 예제는 DOC를 TIFF로 변환하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## TIFF Binarization에 대한 위협

TIFF 이미지는 1bpp b/w 형식으로 저장할 수 있습니다. [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) Format1bppIndexed 픽셀 형식 유형 및 속성 [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) Ccitt3 또는 Ccitt4의 속성.

이미지 세그먼트를 위해, Aspose.Words 가장 간단한 방법을 사용하여 - 문턱. 이 방법은 임계값을 사용하여 회색 스케일 TIFF 이미지를 변환합니다. 따라서 문서가 TIFF 파일 형식으로 변환되어야 할 때 TIFF binarization의 임계값을 얻을 수 있거나 설정할 수 있습니다. [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) 호텔 위치 이 속성의 기본 값은 128로 설정되며, 이 값은 더 짙은 이미지입니다.

다음 예제는 지정된 임계값으로 TIFF Binarization을 수행하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

아래에서 TIFF binarization가 다양한 임계 값에서 수행 한 이미지를 비교할 수 있습니다

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
