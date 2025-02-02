---
title: 문서를 이미지로 변환
second_title: Python via .NET용 Aspose.Words
articleTitle: 문서를 이미지로 변환
linktitle: 문서를 이미지로 변환
type: docs
description: "문서를 이미지 형식(JPG, PNG 등)으로 변환합니다. Python를 사용하여 송장을 보내려면 문서 미리보기를 생성하거나 문서 스캔을 생성하세요."
weight: 43
url: /ko/python-net/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

때로는 DOCX나 PDF와 같은 다른 형식의 문서 대신 이미지를 가져와야 하는 경우도 있습니다. 예를 들어 웹사이트나 애플리케이션에 문서 페이지의 미리보기를 추가하거나 송장을 보내기 위해 문서의 "스캔"을 생성해야 합니다. 이는 [지원되는 로드 형식](https://reference.aspose.com/words/python-net/aspose.words/loadformat/)의 문서를 다시 [지원되는 저장 형식](https://reference.aspose.com/words/python-net/aspose.words/saveformat/)의 이미지로 변환해야 할 때입니다.

## 이미지 형식 {#convert-to-image-format}로 변환

이미 설명한 모든 변환 예제와 마찬가지로 새 문서를 만들거나 지원되는 형식으로 기존 문서를 로드하고 필요한 변경을 수행한 다음 JPEG, PNG 또는 BMP와 같은 사용 가능한 이미지 형식으로 저장해야 합니다.

다음 코드 예제에서는 PDF를 JPEG로 변환하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## 이미지 {#specify-save-options-when-converting-to-an-image}로 변환할 때 저장 옵션 지정

Aspose.Words는 문서가 다양한 이미지 형식으로 저장되는 방식을 더 효과적으로 제어할 수 있는 [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) 클래스를 제공합니다. 이 클래스의 일부 속성은 [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) 또는 [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/)와 같은 기본 클래스의 속성을 상속하거나 오버로드하지만 이미지 저장과 관련된 옵션도 있습니다.

[page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/) 속성을 사용하여 이미지 형식으로 변환할 페이지를 지정할 수 있습니다. 예를 들어 첫 번째 페이지나 특정 페이지에 대한 미리보기만 필요한 경우 적용할 수 있습니다.

또한 [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) 속성을 사용하여 출력 이미지 품질 및 픽셀 형식을 제어할 수 있을 뿐만 아니라 [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/) 속성을 사용하여 이미지 색상 설정을 설정할 수도 있습니다.

[jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) 또는 [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/)와 같은 특정 형식에 적용되는 속성도 있습니다.

다음 코드 예제에서는 몇 가지 추가 설정을 적용하여 첫 번째 문서 페이지의 미리 보기를 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
