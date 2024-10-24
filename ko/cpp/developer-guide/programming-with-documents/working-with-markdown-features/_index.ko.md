---
title: 함께 작업 Markdown 기능 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 함께 작업 Markdown 특징
linktitle: 함께 작업 Markdown 특징
description: "구현 방법 Markdown 기능 사용 C++. 모든 기능은 해당 스타일 또는 직접 포맷으로 표시됩니다."
type: docs
weight: 420
url: /ko/cpp/working-with-markdown-features/
---

이 항목에서는 구현 방법에 대해 설명합니다 Markdown 기능 사용 Aspose.Words. Markdown 쉽게 변환 할 수있는 일반 텍스트의 서식을 지정하는 간단한 방법입니다 HTML. Aspose.Words 다음을 지원합니다 Markdown 특징:

- 제목
- 인용구
- 수평 규칙
- 대담한 강조
- 기울임 꼴 강조

그 Markdown 기능 구현은 대부분 다음과 같습니다 `CommonMark` 안으로 명세 Aspose.Words API 그리고 모든 기능은 해당 스타일 또는 직접 형식으로 표시됩니다. 즉,

- 대문자와 이태릭은 다음과 같이 표시됩니다. `Font.Bold` 그리고 `Font.Italic`.
- 제목은 제목이 있는 단락입니다 1 -제목 6 스타일
- 따옴표는 스타일 이름에"따옴표"가 있는 단락입니다.
- HorizontalRule 이 단락은 HorizontalRule 모양.

{{% alert color="primary" %}}

번역의 뉘앙스가 있습니다 Markdown 에 Aspose.Words 문서 개체 모델(DOM),기사에서 설명 [번역 Markdown 객체 모델을 문서화하려면(DOM)](/words/cpp/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown 강조 표시가 있는 문서

이 섹션에서는 다음을 생성하는 방법을 보여 줍니다 markdown 아래와 같이 강조된 문서:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

다음 코드 조각은 위의 주어진 것을 생성하는 데 사용될 수 있습니다. markdown 문서

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cpp" >}}


## Markdown 제목이 있는 문서

이 섹션에서는 다음을 생성하는 방법을 보여 줍니다 markdown 아래와 같이 제목이 있는 문서:

{{< highlight csharp >}}
The following produces headings:
# Heading1
## Heading2
### Heading3
#### Heading4
##### Heading5
###### Heading6
# **Bold Heading1**
{{< /highlight >}}

다음 코드 조각은 위의 주어진 것을 생성하는 데 사용될 수 있습니다. markdown 문서

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cpp" >}}

## Markdown 블록 따옴표가 있는 문서

이 섹션에서는 다음을 생성하는 방법을 보여 줍니다 markdown 아래에 주어진 블록 따옴표가있는 문서:

{{< highlight csharp >}}
We support blockquotes in Markdown:
>*Lorem*
>*ipsum*
>The quotes can be of any level and can be nested:
>>>Quote level 3
>>>
>>>>Nested quote level 4
>
>*Back to first level*
>### Headings are allowed inside Quotes
>{{< /highlight >}}

다음 코드 조각은 위의 주어진 것을 생성하는 데 사용될 수 있습니다. markdown 문서

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cpp" >}}

## Markdown 수평 규칙이 있는 문서

이 섹션에서는 다음을 생성하는 방법을 보여 줍니다 markdown 아래와 같이 수평 규칙이 있는 문서:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

다음 코드 조각은 위의 주어진 것을 생성하는 데 사용될 수 있습니다. markdown 문서

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.cpp" >}}

## 읽기 Markdown 문서

다음 코드 조각은 다음을 읽는 방법을 보여줍니다 markdown 문서

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cpp" >}}

## 지정 Markdown 저장 옵션

Aspose.Words API 제공 [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) 문서를 저장하는 동안 추가 옵션을 지정하는 클래스 Markdown 형식

다음 코드 예제에서는 다양한 항목을 지정하는 방법을 보여 주었습니다 Markdown 저장 옵션.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cpp" >}}

## 내보내는 동안 테이블 내부의 콘텐츠를 정렬하는 방법 Markdown

Aspose.Words API 제공 TableContentAlignment 표의 내용을 정렬하는 선형 방향을 정의하는 열거형으로 Markdown 문서 다음 코드 예제에서는 테이블 내에서 콘텐츠를 정렬하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cpp" >}}
