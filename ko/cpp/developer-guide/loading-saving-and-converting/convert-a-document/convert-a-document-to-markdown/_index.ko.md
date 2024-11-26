---
title: 문서를 다음으로 변환 Markdown 그 안에 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서를 다음으로 변환 Markdown
linktitle: 문서를 다음으로 변환 Markdown
type: docs
description: "지원되는 로드 형식의 문서를 다음과 같이 변환합니다 Markdown 그리고 그 반대도 마찬가지입니다. C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /ko/cpp/convert-a-document-to-markdown/
timestamp: 2024-10-21-08-52-03
---

Markdown 텍스트를 마크업하고 추가로 변환하는 데 사용되는 인기있는 형식입니다. HTML, PDF, DOCX,또는 다른 형식. 많은 개발자가 문서 작성,블로그 게시 기사 준비,프로젝트 설명 등을 위해이 형식을 선택합니다.

Markdown 이 형식으로 작업하기 쉽고 다른 형식으로 아주 간단하게 변환 할 수 있기 때문에 인기가 있습니다. 이 이유 로, Aspose.Words 문서를 변환 할 수있는 기능을 제공합니다. [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) 에 Markdown 그리고 그 반대도 마찬가지입니다 – Aspose.Words 또한 가장 인기있는 지원 [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

이제 작업에 대한 기능 Markdown 형식은 적극적으로 문서 편리하고 편안한 작업을위한 더 많은 기회를 제공하기 위해 개발되고있다.

## 문서 변환

문서를 다음으로 변환하려면 Markdown,지원되는 모든 형식으로 문서를 로드하거나 프로그래밍 방식으로 새 문서를 만들면 됩니다. 그런 다음 문서를 저장해야 합니다 Markdown 형식

다음 코드 예제에서는 변환하는 방법을 보여 줍니다 DOCX 에 Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

문서를 내보낼 때 이미지를 저장할 실제 폴더를 지정할 수도 있습니다 Markdown 형식 기본적으로, Aspose.Words 문서 파일이 저장된 동일한 폴더에 이미지를 저장하지만 다음을 사용하여 이 동작을 재정의할 수 있습니다 [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) 재산.

다음을 통해 폴더 지정 **ImagesFolder** 또한 문서를 스트림에 저장하고 Aspose.Words 이미지를 저장할 폴더가 없습니다.

지정된 경우 **ImagesFolder** 존재하지 않습니다,그것은 자동으로 생성됩니다.

다음 코드 예제에서는 문서를 스트림에 저장할 때 이미지 폴더를 지정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## 로 변환 할 때 저장 옵션 지정 Markdown

Aspose.Words 사용할 수있는 기능을 제공합니다 [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) 문서를 저장할 때 고급 옵션으로 작업 할 클래스 Markdown 형식 대부분의 속성은 다른 속성 내에 이미 존재하는 속성을 상속하거나 오버로드합니다 [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/) 네임스페이스 클래스. 그 외에도, Markdown 형식도 추가되었습니다. 예를 들어, [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) 테이블의 콘텐츠 정렬을 제어하는 속성 또는 [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) 그리고 [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) 문서를 변환 할 때 이미지가 저장되는 방법을 제어하려면 Markdown 형식

## 지원 Markdown 특징

Aspose.Words 현재 다음을 지원합니다 Markdown 주로 다음과 같은 기능 `CommonMark` 에 있는 명세 Aspose.Words API 그리고 적절한 스타일이나 직접적인 포맷으로 표현됩니다.:

* 제목은 제목이 있는 단락입니다 1 -제목 6 스타일
* 인용문은 스타일 이름에"인용문"이 있는 단락입니다
* IndentedCode 단락은"IndentedCode"스타일 이름으로
* FencedCode 단락은"FencedCode"스타일 이름으로
* InlineCode 함께 실행"InlineCode"그 안에 `Font` 스타일 이름
* 수평 규칙은 `HorizontalRule` 모양
* 대담한 강조
* 기울임 꼴 강조
* StrikeThrough 포맷
* 목록은 번호가 매겨 지거나 글 머리 기호로 된 단락입니다
* 표는 `Table` 클래스
* 링크는 `FieldHyperlink` 클래스

다음 예제에서는 일부 스타일을 사용하여 문서를 만들고 다음 문서에 저장하는 방법을 보여 줍니다 Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

이 코드 예제의 결과는 아래에 나와 있습니다.

![markdown-example-aspose-words-cpp](markdown-example.png)

## 유용한 팁

몇 가지 뉘앙스와 흥미로운 경우가 있습니다.당신이 함께 일할 수있는 것을 배웠습니다 Markdown 더 유연하고 편리하게 파일. 예를 들어,:

* SetextHeading 즉,여러 줄 제목을 만들 수 있습니다 Markdown,일반 제목은 Markdown 단 한 줄일뿐입니다. SetextHeading "제목 엔"스타일을 기반으로하며 그 수준은 다음과 같을 수 있습니다 1 또는 2. 만약 엔"제목 엔"보다 크거나 같음 2,그러면 대응하는 SetextHeading "제목"을 기반으로 합니다. 2"라고 적혀있죠. 1".
* 글 머리 기호 목록의 첫 번째 수준에 대한 다른 마커("-", "+" 또는 "*",기본 마커는 "-".)및 순서 목록에 대한 다른 유형의 번호 매기기("." 또는 ")",기본 마커는 ".").
