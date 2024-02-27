---
title: C#에서 Markdown 기능 작업
second_title: .NET용 Aspose.Words
articleTitle: Markdown 기능 작업
linktitle: Markdown 기능 작업
description: "C#를 사용하여 Markdown 기능을 구현하는 방법. 모든 기능은 해당 스타일 또는 직접 형식으로 표시됩니다."
type: docs
weight: 420
url: /ko/net/working-with-markdown-features/
---

이 항목에서는 Aspose.Words를 사용하여 Markdown 기능을 구현하는 방법에 대해 설명합니다. Markdown는 HTML로 쉽게 변환할 수 있는 일반 텍스트의 형식을 지정하는 간단한 방법입니다. Aspose.Words는 다음 Markdown 기능을 지원합니다

- 제목
- 인용부호
- 수평 규칙
- 대담한 강조
- 이탤릭체 강조

Markdown 기능 구현은 대부분 Aspose.Words API의 `CommonMark` 사양을 따르며 모든 기능은 해당 스타일 또는 직접 형식으로 표시됩니다. 의미하는 것은

- 볼드체와 이탤릭체는 `Font.Bold`, `Font.Italic`로 표시됩니다
- 제목은 제목 1 - 제목 6 스타일의 단락입니다
- 인용문은 스타일 이름에 "인용문"이 붙은 문단입니다
- 수평규칙(HorizontalRule)은 수평규칙 형태의 문단입니다.

{{% alert color="primary" %}}

[Markdown를 Document Object Model(DOM)로 번역](/words/ko/net/translate-markdown-to-document-object-model/) 문서에 설명된 대로 Markdown를 Aspose.Words Document Object Model(DOM)로 변환하는 데에는 미묘한 차이가 있습니다.

{{% /alert %}}

## 강조점이 있는 Markdown 문서

이 섹션에서는 아래와 같이 강조된 markdown 문서를 생성하는 방법을 보여줍니다

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

다음 코드 조각을 사용하여 위에 제공된 markdown 문서를 생성할 수 있습니다.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

## 제목이 있는 Markdown 문서

이 섹션에서는 아래와 같은 제목을 사용하여 markdown 문서를 생성하는 방법을 보여줍니다

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

다음 코드 조각을 사용하여 위에 제공된 markdown 문서를 생성할 수 있습니다.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

## 블록 인용문이 포함된 Markdown 문서

이 섹션에서는 아래와 같이 블록 인용문을 사용하여 markdown 문서를 생성하는 방법을 보여줍니다

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

다음 코드 조각을 사용하여 위에 제공된 markdown 문서를 생성할 수 있습니다.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## 수평선이 있는 Markdown 문서

이 섹션에서는 아래와 같이 수평선을 사용하여 markdown 문서를 생성하는 방법을 보여줍니다

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

다음 코드 조각을 사용하여 위에 제공된 markdown 문서를 생성할 수 있습니다.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## Markdown 문서 읽기

다음 코드 조각은 markdown 문서를 읽는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## Markdown 저장 옵션 지정

Aspose.Words API는 문서를 Markdown 형식으로 저장하는 동안 추가 옵션을 지정할 수 있는 [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) 클래스를 제공합니다.

다음 코드 예제에서는 다양한 Markdown 저장 옵션을 지정하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## Markdown로 내보내는 동안 테이블 내부의 콘텐츠를 정렬하는 방법

Aspose.Words API는 Markdown 문서로 내보내는 동안 테이블의 내용을 정렬하기 위한 정렬 방향을 정의하는 [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) 열거형을 제공합니다. 다음 코드 예제에서는 테이블 내부의 콘텐츠를 정렬하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
