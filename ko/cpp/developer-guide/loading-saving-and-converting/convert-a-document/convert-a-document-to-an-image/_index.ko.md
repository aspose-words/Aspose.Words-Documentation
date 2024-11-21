---
title: 문서를 이미지로 변환 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서를 이미지로 변환
linktitle: 문서를 이미지로 변환
type: docs
description: "문서를 이미지 형식으로 변환(JPG, PNG,등). 문서 미리보기를 만들거나 송장을 보낼 문서 스캔을 만듭니다."
weight: 43
url: /ko/cpp/convert-a-document-to-an-image/
timestamp: 2024-01-30-16-22-34
---

때로는 다음과 같은 다른 형식의 문서 대신 이미지를 가져와야 합니다. DOCX 또는 PDF. 예를 들어,당신은 당신의 웹 사이트 또는 응용 프로그램에 문서 페이지의 미리보기를 추가하거나 송장을 보낼 수있는 문서의"스캔"을 만들어야합니다. 당신이 어떤에서 문서를 변환해야 할 수도 있습니다 때이다 [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) 이미지에,다시,어떤 [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## 이미지 형식으로 변환

이미 설명한 모든 변환 예제와 마찬가지로 새 문서를 만들거나 기존 문서를 지원되는 형식으로 로드하고 필요한 내용을 변경한 다음 사용 가능한 이미지 형식으로 저장해야 합니다., JPEG, PNG,또는 BMP.

다음 코드 예제에서는 변환하는 방법을 보여 줍니다 DOCX 에 JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## 이미지로 변환할 때 저장 옵션 지정

Aspose.Words 당신을 제공합니다 [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) 문서를 다양한 이미지 형식으로 저장하는 방법을 더 잘 제어 할 수있는 클래스. 이 클래스의 일부 속성은 다음과 같은 기본 클래스의 속성을 상속하거나 오버로드합니다 [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) 또는 [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/),하지만 이미지 저장에 특화된 옵션도 있습니다.

그것은 사용하여 이미지 형식으로 변환 할 페이지를 지정할 수 있습니다 [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/) 재산. 예를 들어 첫 번째 페이지 또는 명확한 페이지에 대한 미리보기 만 필요한 경우 적용 할 수 있습니다.

또한 다음 속성을 사용하여 출력 이미지 품질 및 픽셀 형식을 제어할 수도 있습니다 – [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/),그리고 다음 속성을 사용하여 이미지 색상 설정을 설정합니다. – [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

특정 형식에 적용되는 속성도 있습니다., [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) 또는 [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

다음 코드 예제에서는 몇 가지 추가 설정을 적용하여 첫 번째 문서 페이지의 미리 보기를 만드는 방법을 보여 줍니다:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
