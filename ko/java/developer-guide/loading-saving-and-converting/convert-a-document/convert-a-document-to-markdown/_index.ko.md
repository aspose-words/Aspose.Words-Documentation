---
title: Java에서 문서를Markdown으로 변환
second_title: Aspose.WordsJava
articleTitle: 문서를Markdown로 변환
linktitle: 문서를Markdown로 변환
type: docs
description: "지원되는 로드 형식의 문서를Markdown으로 변환하거나Java을 사용하여 그 반대로 변환합니다."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /ko/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown은 텍스트를 마크업하는 데 사용되는 인기있는 형식이며 추가로HTML, PDF, DOCX, 또는 다른 형식. 많은 개발자가 문서 작성,블로그 게시 기사 준비,프로젝트 설명 등을 위해이 형식을 선택합니다.

Markdown은 이 형식으로 작업하기 쉽고 다른 형식으로도 간단히 변환할 수 있기 때문에 인기가 많습니다. 이러한 이유로 Aspose.Words는 [지원되는 모든 부하 형식](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)의 문서를 Markdown으로 변환하고 그 반대로도 변환할 수 있는 기능을 제공합니다. Aspose.Words는 가장 인기 있는 [형식 저장](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)도 지원합니다.

이제Markdown형식으로 작업하기 위한 기능이 활발히 개발되어 문서를 편리하고 편안하게 작업할 수 있는 더 많은 기회를 제공하고 있습니다.

## 문서를Markdown로 변환

문서를Markdown으로 변환하려면 지원되는 형식으로 문서를 로드하거나 프로그래밍 방식으로 새 문서를 만들기만 하면 됩니다. 그럼 당신은Markdown형식으로 문서를 저장해야합니다.

다음 코드 예제에서는DOCX을Markdown으로 변환하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Markdown으로 변환할 때 저장 옵션을 지정합니다

Aspose.Words는Markdown형식으로 문서를 저장할 때[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)클래스를 사용하여 고급 옵션을 사용할 수 있는 기능을 제공합니다. 다른 상속 또는 오버로드 속성 외에도Markdown형식에 대한 특정 속성도 추가되었습니다. 예를 들어[TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/)속성은 테이블의 콘텐츠 정렬을 제어하거나[ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback)및[ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder)속성은 문서를Markdown형식으로 변환할 때 이미지가 저장되는 방법을 제어합니다.

## 지원되는Markdown기능

Aspose.Words은 현재Aspose.WordsAPI의`CommonMark`사양을 주로 따르고 적절한 스타일 또는 직접 서식으로 표시되는 다음Markdown기능을 지원합니다:

* 제목은Heading 1–Heading 6스타일의 단락입니다
* 인용문은 스타일 이름에"인용문"이 있는 단락입니다
* IndentedCode은 스타일 이름에"IndentedCode"이 있는 단락입니다
* FencedCode은 스타일 이름에"FencedCode"이 있는 단락입니다
* InlineCode은`Font`스타일 이름에"InlineCode"이 있는 실행입니다
* 가로 규칙은`HorizontalRule`모양의 단락입니다
* 대담한 강조
* 기울임 꼴 강조
* StrikeThrough서식 지정
* 목록은 번호가 매겨 지거나 글 머리 기호로 된 단락입니다
* 테이블은`Table`클래스로 표시됩니다
* 링크는`FieldHyperlink`클래스로 표시됩니다

다음 예제에서는 일부 스타일을 사용하여 문서를 만들고Markdown에 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

이 코드 예제의 결과는 아래에 나와 있습니다.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## 유용한 팁

Markdown파일로 더 유연하고 편리하게 작업 할 수있는 것을 배운 몇 가지 뉘앙스와 흥미로운 경우가 있습니다. 예를 들어,:

* SetextHeading을 사용하면Markdown에서 여러 줄 머리글을 만들 수 있지만Markdown의 일반 머리글은 한 줄만 만들 수 있습니다. SetextHeading은"제목 엔"스타일을 기반으로하며 레벨은 1 또는 2 일 수 있습니다. 만약 엔"제목 엔"이 2 보다 크거나 같다면,해당SetextHeading은"Heading 2"을 기반으로 하고,그렇지 않으면"Heading 1"을 기반으로 합니다.
* 글머리 기호 목록의 첫 번째 수준에 대한 다른 마커("-","+"또는"*",기본 마커는"-"입니다.)및 순서 목록에 대한 다양한 유형의 번호 매기기("."또는")",기본 마커는".").
