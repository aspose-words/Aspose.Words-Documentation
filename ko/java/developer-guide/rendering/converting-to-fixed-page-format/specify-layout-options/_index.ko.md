---
title: 지정된 레이아웃 옵션 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 지정 배치 옵션
linktitle: 지정 배치 옵션
description: "문서에 지정된 매개 변수에 따라 다양한 레이아웃을 가진 출력 문서를 생성 Java·"
type: docs
weight: 10
url: /ko/java/specify-layout-options/
---

Aspose.Words 지정된 매개 변수에 따라 다양한 레이아웃으로 출력 문서를 만들 수 있습니다. [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) 호텔 위치 **Document**· 이 재산은 몇몇을 닮았습니다 Microsoft Word 이 문서에 설명된 사용자 인터페이스 메뉴 옵션.

같은 매개 변수의 전체 목록 [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) 페이지 번호를 다시 시작 하는 연속 섹션에서 페이지 번호를 계산, 또는 [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) "Use Printer metrics to lay out document" 호환성 옵션을 무시하려면, [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) 클래스 페이지.

## Formatting 표시

Aspose.Words 다음 속성을 사용하여 포맷 표시를 관리 할 수 있습니다:

- - - [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) - 아 `Boolean` 숨겨진 텍스트가 렌더링되는지 여부를 지정합니다.
- - - [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) - 아 `Boolean` 단락 문자가 렌더링되는지 지정하는 값.

아래 예제에서 설명 된 페이지는 세 단락을 포함합니다. 두 번째는 숨겨진. 사용자가 변경할 수 있습니다. **ShowHiddenText** 이 숨겨진 텍스트를 페이지에 표시 할 수있는 옵션. 또한, 각 단락은 끝에서 단락 표가 있습니다. 단락표는 보통 볼 수 없습니다 **ShowParagraphMarks** 속성에 설정할 수 있습니다.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

내 계정 Microsoft Word, 이 매개 변수는 다음과 같이 "File → Options → Display" 대화 상자를 사용하여 설정됩니다

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## 댓글 및 개정

이름 * Aspose.Words, 문서 코멘트를 렌더링 할 수 있습니다. Microsoft Word· 댓글이 렌더링되는지 지정하려면 [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) 호텔 위치

내 계정 Microsoft Word, 이 매개 변수는 다음과 같이 "Track Changes Options" 대화 상자를 사용하여 설정됩니다

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

또한, Aspose.Words 문서의 개정을 표시할 수 있습니다. 사용 방법 [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) 호텔 위치 **LayoutOptions** 문서 개정이 표시된지 정의하는 클래스. 외관을 제어하기 위해 (색상, 개정 바 색상 등), 사용 [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) 수업.

또한 내용에 대한 의견으로 표시된 개정이 있습니다. 이 목적을 위해, 사용 [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) 이름 * [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) 가치.

다음과 같은 코드 예제는 개정 표시를 사용자 정의하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

아래 이미지는 방법을 보여줍니다 Aspose.Words 의견과 삭제 개정을 렌더링:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## 고급 Typography 렌더링을위한 텍스트 모양

더 보기 [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) 텍스트 쉐이핑 기능을 설정할 수 있습니다. `OpenType` 기능 지원.

다음 주요 사례에서 문서 처리에 대한 텍스트 형성을 사용합니다

- 문서는 Kerning, Numeral Shaping, Numeral Forms 또는 Ligatures를 사용합니다.
- 문서는 아랍, Khmer, 태국, 등과 같은 복잡한 스크립트를 사용합니다.

{{% alert color="primary" %}}

텍스트 쉐이핑은 문서의 PDF 또는 XPS·

{{% /alert %}}
