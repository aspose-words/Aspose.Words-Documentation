---
title: 일하기 Markdown 제품 설명 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 일하기 Markdown 제품 정보
linktitle: 일하기 Markdown 제품 정보
description: "구현 방법 Markdown 사용 방법 Java· 모든 기능은 해당 스타일 또는 직접 포맷으로 표현됩니다."
type: docs
weight: 420
url: /ko/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

이 주제는 구현 방법을 논의 Markdown 사용 방법 Aspose.Words· Markdown HTML로 쉽게 변환 할 수있는 일반 텍스트를 포맷하는 간단한 방법입니다. Aspose.Words 다음을 지원합니다 Markdown 특징:

- 헤드링
- 블록 체인
- 수평 규칙
- Bold 강조
- Italic 강조

더 보기 Markdown 기능 구현은 주로 다음과 같습니다. `CommonMark` 제품 사양 Aspose.Words API 그리고 모든 특징은 대응 작풍 또는 직접적인 체재로 대표됩니다. 어떤 의미

- Bold 및 Italic은 `Font.Bold` · `Font.Italic`·
- 제목은 제목 1 - 제목 6 스타일
- 인용은 스타일 이름의 "Quote"와 단락입니다
- HorizontalRule은 단락입니다. `HorizontalRule` 모양.

{{% alert color="primary" %}}

번역의 nuances Markdown 으로 Aspose.Words Document Object Model (주)DOM), 기사에 설명 [이름 * Markdown 이름 * Document Object Model (주)DOM·](/words/ko/java/translate-markdown-to-document-object-model/)·

{{% /alert %}}


## Markdown Emphases 문서

이 섹션은 당신에게 생산하는 방법을 보여줍니다. markdown 아래에 주어진 것과 같이 emphases를 가진 문서:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

다음 코드 스니펫은 위약을 생산하기 위해 사용될 수 있습니다. markdown 문서.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown 제목 내용

이 섹션은 당신에게 생산하는 방법을 보여줍니다. markdown 아래에 주어진대로 headings를 가진 문서:

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

다음 코드 스니펫은 위의 생산에 사용할 수 있습니다 markdown 문서.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown 블록 인용문

이 섹션은 당신에게 생산하는 방법을 보여줍니다. markdown 아래에 주어진 것과 같이 구획 따옴표로 문서:

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

다음 코드 스니펫은 위의 생산에 사용할 수 있습니다 markdown 문서.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown 수평한 규칙을 가진 문서

이 섹션은 당신에게 생산하는 방법을 보여줍니다. markdown 수평한 문서 아래와 같이 규칙:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

다음 코드 스니펫은 위약을 생산하기 위해 사용될 수 있습니다. markdown 문서.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## 자주 묻는 질문 Markdown 회사연혁

다음 코드 스니펫은 어떻게 읽는 방법을 보여줍니다 markdown 문서.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## 기타 제품 Markdown 옵션 저장

Aspose.Words API 제품정보 [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) 문서를 저장하면서 추가 옵션을 지정하는 클래스 Markdown 파일 형식.

다음 코드 예제는 다양한 지정 방법을 설명 Markdown 옵션 저장.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## 테이블 내부의 Align Content에 대한 방법 Markdown

Aspose.Words API 제품정보 [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) 테이블에 내용을 정렬하는 정렬 방향을 정의하는 열렬한 Markdown 문서. 다음 코드 예제는 테이블 내부의 내용을 정렬하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
