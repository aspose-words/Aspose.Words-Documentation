---
title: Java에서 문서를 이미지로 변환
second_title: Aspose.WordsJava
articleTitle: 문서를 이미지로 변환
linktitle: 문서를 이미지로 변환
type: docs
description: "문서를 이미지 형식(JPG,PNG등)으로 변환합니다. 문서 미리보기를 만들거나Java을 사용하여 송장을 보낼 문서 스캔을 만듭니다."
weight: 35
url: /ko/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

때때로DOCX또는PDF와 같은 다른 형식의 문서 대신 이미지를 가져와야 합니다. 예를 들어,당신은 당신의 웹 사이트 또는 응용 프로그램에 문서 페이지의 미리보기를 추가하거나 송장을 보낼 수있는 문서의"스캔"을 만들어야합니다. 이 경우[지원된 짐 체재](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)의 문서를 다시[지원되는 저장 형식](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)의 이미지로 변환해야 할 수 있습니다.

## 이미지 형식으로 변환

이미 설명한 모든 변환 예제와 마찬가지로 새 문서를 만들거나 기존 문서를 지원되는 형식으로 로드하고 필요한 내용을 변경한 다음 사용 가능한 이미지 형식(예:JPEG,PNG또는BMP)으로 저장해야 합니다.

다음 코드 예제에서는DOCX을JPEG로 변환하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## 이미지로 변환할 때 저장 옵션 지정

Aspose.Words는[ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/)클래스를 제공합니다. 이 클래스의 일부 속성은[FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)또는[SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/)와 같은 기본 클래스의 속성을 상속하거나 오버로드하지만 이미지 저장과 관련된 옵션도 있습니다.

[PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet)속성을 사용하여 이미지 형식으로 변환할 페이지를 지정할 수 있습니다. 예를 들어 첫 번째 페이지 또는 명확한 페이지에 대한 미리보기 만 필요한 경우 적용 할 수 있습니다.

또한 다음 속성을 사용하여 출력 이미지 품질 및 픽셀 형식을 제어할 수도 있습니다– [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), 다음 속성을 사용하여 이미지 색상 설정을 설정합니다– [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

[JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality)또는[TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression)과 같은 특정 형식에 적용되는 속성도 있습니다.

다음 코드 예제에서는 몇 가지 추가 설정을 적용하여 첫 번째 문서 페이지의 미리 보기를 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
