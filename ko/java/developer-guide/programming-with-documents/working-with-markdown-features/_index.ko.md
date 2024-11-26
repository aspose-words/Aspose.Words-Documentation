---
title: Java의Markdown기능 작업
second_title: Aspose.WordsJava
articleTitle: Markdown기능 사용
linktitle: Markdown기능 사용
description: "Java를 사용하여Markdown기능을 구현하는 방법. 모든 기능은 해당 스타일 또는 직접 포맷으로 표시됩니다."
type: docs
weight: 420
url: /ko/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

이 항목에서는Aspose.Words을 사용하여Markdown기능을 구현하는 방법에 대해 설명합니다. Markdown는HTML로 쉽게 변환할 수 있는 일반 텍스트의 서식을 지정하는 간단한 방법입니다. Aspose.Words은 다음Markdown기능을 지원합니다:

- 제목
- 인용구
- 수평 규칙
- 대담한 강조
- 기울임 꼴 강조

Markdown기능 구현은 대부분Aspose.WordsAPI의`CommonMark`사양을 따르며 모든 기능은 해당 스타일 또는 직접 포맷으로 표시됩니다. 즉,

- 굵게 및 기울임 꼴은`Font.Bold`및`Font.Italic`으로 표시됩니다.
- 제목은Heading 1-Heading 6스타일의 단락입니다.
- 따옴표는 스타일 이름에"따옴표"가 있는 단락입니다.
- HorizontalRule은`HorizontalRule`모양의 단락입니다.

{{% alert color="primary" %}}

이 문서에서 설명하는Markdown를Aspose.Words문서 객체 모델(DOM)으로 번역하는 뉘앙스가 있습니다 [Markdown를 문서 객체 모델로 변환(DOM)](/words/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown강조 표시가 있는 문서

이 섹션에서는 다음과 같이 강조된markdown문서를 생성하는 방법을 보여 줍니다:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

다음 코드 조각은 위에 주어진markdown문서를 생성하는 데 사용할 수 있습니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown제목이 있는 문서

이 섹션에서는 아래와 같이 제목이 있는markdown문서를 생성하는 방법을 보여 줍니다:

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

다음 코드 조각은 위의markdown문서를 생성하는 데 사용할 수 있습니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown블록 따옴표가 있는 문서

이 섹션에서는 아래와 같이 블록 따옴표가 있는markdown문서를 생성하는 방법을 보여 줍니다:

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

다음 코드 조각은 위의markdown문서를 생성하는 데 사용할 수 있습니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown수평 규칙이 있는 문서

이 섹션에서는 아래와 같이 수평 규칙이 있는markdown문서를 생성하는 방법을 보여 줍니다:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

다음 코드 조각은 위에 주어진markdown문서를 생성하는 데 사용할 수 있습니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Markdown문서 읽기

다음 코드 조각은markdown문서를 읽는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Markdown저장 옵션 지정

Aspose.WordsAPI[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)클래스를 제공하여 문서를Markdown형식으로 저장하는 동안 추가 옵션을 지정합니다.

다음 코드 예제에서는 다양한Markdown저장 옵션을 지정하는 방법을 보여 주었습니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Markdown으로 내보내는 동안 테이블 내부의 콘텐츠를 정렬하는 방법

Aspose.WordsAPIMarkdown문서로 내보내는 동안 테이블의 내용을 정렬하는 정렬 방향을 정의하는[TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/)열거를 제공합니다. 다음 코드 예제에서는 테이블 내에서 콘텐츠를 정렬하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
