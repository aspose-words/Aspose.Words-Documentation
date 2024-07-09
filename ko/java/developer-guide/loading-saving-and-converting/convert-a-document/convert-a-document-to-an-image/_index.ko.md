---
title: 문서를 이미지로 변환 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 문서를 이미지로 변환
linktitle: 문서를 이미지로 변환
type: docs
description: "이미지 형식으로 문서를 변환 (JPG, PNG 등). 문서 미리보기를 만들거나 문서 스캔을 생성하여 송장 보내기 Java·"
weight: 35
url: /ko/java/convert-a-document-to-an-image/
---

때로는 DOCX 또는 PDF와 같은 다른 형식의 문서 대신 이미지를 얻을 필요가있다. 예를 들어, 웹 사이트 또는 응용 프로그램에 문서 페이지의 미리보기를 추가하거나 청구서를 보내려면 문서의 "scan"를 작성해야합니다. 문서를 변환해야 할 때 [지원된 짐 체재](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) 이미지, 다시, 어떤 [지원되는 저장 체재](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)·

## 이미지 형식으로 변환

이미 설명된 모든 변환 예제와 마찬가지로, 새 문서를 작성하거나 지원되는 형식에서 기존 하나를 로드해야 하며, 필요한 변경을 만들고, 예를 들어, JPEG, PNG 또는 BMP를 사용할 수 있는 이미지 형식으로 저장할 수 있습니다.

DOCX를 JPEG로 변환하는 방법은 다음과 같습니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Image로 변환 할 때 Save Options를 지정하십시오

Aspose.Words 너와 함께 [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) 문서가 다양한 이미지 형식으로 저장되는 방법에 대한 더 많은 제어를 제공하는 클래스. 이 클래스의 일부 속성 상속 또는 과부하 속성과 같은 기본 클래스 [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) 또는 [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), 그러나 이미지 저장에 특정한 선택권이 있습니다.

페이지를 지정할 수 있습니다 이미지 형식으로 변환 [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) 호텔 위치 예를 들어, 첫 번째 또는 잘못된 페이지에 대한 미리보기 만 필요한 경우 적용 할 수 있습니다.

다음과 같은 속성을 사용하여 출력 이미지 품질과 픽셀 형식을 제어 할 수 있습니다. [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), 또한 다음과 같은 속성을 사용하여 이미지 색상 설정을 설정 - [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor)·

예를 들어 특정 형식으로 적용하는 속성도 있습니다. [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) 또는 [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression)·

다음 코드 예제는 추가 설정을 적용하여 첫 번째 문서 페이지 미리보기를 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
