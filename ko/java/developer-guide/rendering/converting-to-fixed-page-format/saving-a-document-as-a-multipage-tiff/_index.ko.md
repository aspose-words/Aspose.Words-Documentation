---
title: Java에서 다중 페이지TIFF로 문서 저장
second_title: Aspose.WordsJava
articleTitle: 다중 페이지로 문서 저장TIFF
linktitle: 다중 페이지로 문서 저장TIFF
description: "TIFF형식의 예에서 설명하는 래스터 이미지로 문서를 변환합니다. TIFF이 표시되는 방법을 확인하려면Java을 사용하여 해상도,페이지 수,이미지 이진화 등의 추가 옵션을 지정해야합니다."
type: docs
weight: 30
url: /ko/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

문서 작업을 할 때 문서를 래스터 이미지 파일로 변환해야 하는 경우가 많습니다. 이것은 특히 문서를 읽을 수 있고 인쇄할 수 있지만 편집할 수 없는 형식으로 제시해야 하는 경우에 적합합니다. 예를 들어 문서의 첫 페이지의 래스터 이미지를 미리 보기로 사용할 수 있습니다. 이 문서에서는 가장 많이 사용되는 이미지 형식 중 하나인TIFF형식의 예를 사용하여 문서를 래스터 이미지로 변환하는 방법을 설명합니다.

## DOC을 다중 페이지TIFF로 변환

Aspose.Words에서DOC에서TIFF로의 변환은"저장"경로와 관련 파일 확장자를[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions)메소드에 전달하는 것만으로 한 줄의 코드로 수행 할 수 있습니다. **Save**메서드는 경로에 지정된 파일 이름 확장명에서`SaveFormat`를 자동으로 파생합니다. 다음 예제에서는 문서를TIFF형식으로 변환하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## TIFF렌더링 시 추가 옵션 지정

렌더링 결과에 영향을 미치는 추가 옵션을 지정해야 하는 경우가 많습니다. 이를 위해 문서가 이미지에 표시되는 방식을 결정하는 속성이 포함된 [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) 클래스를 사용합니다. 다음을 지정할 수 있습니다.

- 형식을 저장하여 사용 가능한 옵션 목록([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))을 결정합니다.
- 해상도([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- 페이지 수([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/),[PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- 색상 및 조명 설정([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- 이미지 품질([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- 이미지를 이진화하는 데 사용되는 방법([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod),[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- 생성 된 이미지의 픽셀 형식([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows메타 파일 처리 기준Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- **ImageSaveOptions**클래스에서 볼 수 있는 추가 옵션

다음 예제에서는 구성된 옵션을 사용하여DOC을TIFF으로 변환하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## TIFF이진화에 대한 임계값

TIFF이미지는[PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat)속성을Format1bppIndexed픽셀 형식 유형으로,[TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression)속성을{3 또는 4 로 설정하여 흑백 형식으로 저장할 수 있습니다.

이미지 세분화를 위해Aspose.Words는 가장 간단한 방법인 임계값을 사용합니다. 이 메서드는 임계값을 사용하여 회색 스케일TIFF이미지를 이진 이미지로 변환합니다. 따라서 문서를TIFF파일 형식으로 변환해야 할 때[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering)속성을 통해TIFF이진화에 대한 임계값을 얻거나 설정할 수 있습니다. 이 속성의 기본값은 128 로 설정되며 이 값이 높을수록 이미지가 어두워집니다.

다음 예제에서는 지정된 임계값으로TIFF이진화를 수행하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

아래에서TIFF이진화가 다양한 임계값에서 수행된 이미지를 비교할 수 있습니다:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
