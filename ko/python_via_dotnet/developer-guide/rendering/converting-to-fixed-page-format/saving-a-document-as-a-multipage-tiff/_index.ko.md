---
title: 문서를 다중 페이지 TIFF로 저장
second_title: Python via .NET용 Aspose.Words
articleTitle: 문서를 다중 페이지 TIFF로 저장
linktitle: 문서를 다중 페이지 TIFF로 저장
description: "Python를 사용하여 문서를 여러 페이지로 구성된 TIFF로 변환합니다. 문서가 이미지에 표시되는 방식을 결정하려면 해상도, 페이지 수, 이미지 이진화 등의 추가 옵션을 지정해야 합니다."
type: docs
weight: 30
url: /ko/python-net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

문서 작업을 할 때 문서를 래스터 이미지 파일로 변환해야 하는 경우가 많습니다. 이는 문서를 읽고 인쇄할 수 있지만 편집할 수 없는 형식으로 표시해야 하는 경우 특히 중요합니다. 예를 들어 문서 첫 번째 페이지의 래스터 이미지를 미리보기로 사용할 수 있습니다. 이 문서에서는 가장 널리 사용되는 이미지 형식 중 하나인 TIFF 형식의 예를 사용하여 문서를 래스터 이미지로 변환하는 방법을 설명합니다.

## DOC를 다중 페이지 TIFF로 변환

Aspose.Words에서는 "저장 대상" 경로와 관련 파일 확장자를 [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) 메소드에 전달하기만 하면 한 줄의 코드로 DOC에서 TIFF로의 변환을 수행할 수 있습니다. [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) 메서드는 경로에 지정된 파일 이름 확장자에서 [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/)을 자동으로 파생합니다. 다음 예에서는 문서를 TIFF 형식으로 변환하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## TIFF 렌더링 시 추가 옵션 지정

렌더링 결과에 영향을 미치는 추가 옵션을 지정해야 하는 경우가 많습니다. 이를 위해 문서가 이미지에 표시되는 방식을 결정하는 속성이 포함된 [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) 클래스를 사용하십시오. 다음을 지정할 수 있습니다

- 사용 가능한 옵션 목록을 결정하기 위한 형식 저장([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- 해상도([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- 페이지 수([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- 색상 및 조명 설정([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- 이미지 품질([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- 이미지를 이진화하는 데 사용되는 방법([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- 생성된 이미지의 픽셀 형식([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Aspose.Words([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))로 처리되는 Windows 메타파일
- [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) 클래스에서 볼 수 있는 추가 옵션

다음 예에서는 구성된 옵션을 사용하여 DOC를 TIFF로 변환하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## TIFF 이진화에 대한 임계값

[pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) 속성을 [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) 픽셀 형식 유형으로 설정하고 [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) 속성을 [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) 또는 [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4)로 설정하면 TIFF 이미지를 1bpp 흑백 형식으로 저장할 수 있습니다.

이미지 분할을 위해 Aspose.Words는 가장 간단한 방법인 임계값을 사용합니다. 이 방법은 임계값을 사용하여 회색조 TIFF 이미지를 이진 이미지로 변환합니다. 따라서 문서를 TIFF 파일 형식으로 변환해야 하는 경우 [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/) 속성을 통해 TIFF 이진화에 대한 임계값을 가져오거나 설정할 수 있습니다. 이 속성의 기본값은 128로 설정되어 있으며, 이 값이 높을수록 이미지가 어두워집니다.

다음 예에서는 지정된 임계값을 사용하여 TIFF 이진화를 수행하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

아래에서는 다양한 임계값에서 TIFF 이진화가 수행된 이미지를 비교할 수 있습니다

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="문서를 여러 페이지로 저장-tiff-aspose-words-net" style="width:800px"/>
