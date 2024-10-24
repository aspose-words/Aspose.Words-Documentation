---
title: 문서를 다중 페이지로 저장 TIFF 그 안에 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서를 다중 페이지로 저장 TIFF
linktitle: 문서를 다중 페이지로 저장 TIFF
description: "문서를 여러 페이지로 변환 TIFF 사용 C++. 이미지에 문서가 표시되는 방법을 확인하려면 해상도,페이지 수,이미지 이진화 등 추가 옵션을 지정해야합니다."
type: docs
weight: 40
url: /ko/cpp/saving-a-document-as-a-multipage-tiff/
---

문서 작업을 할 때 문서를 래스터 이미지 파일로 변환해야 하는 경우가 많습니다. 이것은 특히 문서를 읽을 수 있고 인쇄할 수 있지만 편집할 수 없는 형식으로 제시해야 하는 경우에 적합합니다. 예를 들어 문서의 첫 페이지의 래스터 이미지를 미리 보기로 사용할 수 있습니다. 이 문서에서는 다음 예제를 사용하여 문서를 래스터 이미지로 변환하는 방법을 설명합니다 TIFF 형식-더 인기있는 이미지 형식 중 하나입니다.

## 변환 DOC 다중 페이지로 TIFF

그 안에 Aspose.Words,변환 DOC 에 TIFF "저장 대상"경로와 관련 파일 확장자를 [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) 방법 그 **Save** 방법은 자동으로 `SaveFormat` 경로에 지정된 파일 이름 확장명에서 다음 예제에서는 문서를 변환 하는 방법을 보여 줍니다. TIFF 형식:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## 렌더링 시 추가 옵션 지정 TIFF

당신은 종종 렌더링 결과에 영향을 미치는 추가 옵션을 지정해야합니다. 이를 위해 다음을 사용하십시오 [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) 이미지에 문서가 표시되는 방식을 결정하는 속성을 포함하는 클래스입니다. 다음을 지정할 수 있습니다:

- 형식을 저장하여 사용 가능한 옵션 목록을 결정합니다.[SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- 해상도([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- 페이지 수([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- 색상 및 조명 설정([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- 이미지 품질([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- 이미지를 이진화하는 데 사용되는 방법([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- 생성 된 이미지의 픽셀 형식([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows 메타 파일 처리 기준 Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- 당신이 볼 수있는 추가 옵션 **ImageSaveOptions** 클래스

다음 예제에서는 변환하는 방법을 보여 줍니다 DOC 에 TIFF 구성된 옵션:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## 에 대한 임계 값 TIFF 이진화

A TIFF 이미지를 저장할 수 있습니다 1설정하여 흑백 형식 [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) 형식을 지정할 속성1bppIndexed 픽셀 형식 유형 및 `TiffCompression` 3 또는 4 중 하나에 대한 재산.

이미지 세분화, Aspose.Words 가장 간단한 방법 인 임계 값을 사용합니다. 이 방법은 그레이 스케일을 변환합니다 TIFF 임계값을 사용하여 이미지를 이진 이미지로 변환합니다. 따라서 문서를 변환해야 할 때 TIFF 파일 형식,그것은 얻거나 임계 값을 설정할 수 있습니다 TIFF 이진화 [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/) 재산. 이 속성의 기본값은 128 로 설정되며 이 값이 높을수록 이미지가 어두워집니다.

다음 예제에서는 수행 방법을 보여 줍니다 TIFF 지정된 임계값을 가진 이진화:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

아래에서 이미지를 비교할 수 있습니다 TIFF 이진화는 다양한 임계값에서 수행되었습니다.:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
