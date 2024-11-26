---
title: Java에서 레이아웃 옵션 지정
second_title: Aspose.WordsJava
articleTitle: 레이아웃 옵션 지정
linktitle: 레이아웃 옵션 지정
description: "Java을 사용하여 문서에 지정된 매개 변수에 따라 다양한 레이아웃으로 출력 문서를 만듭니다."
type: docs
weight: 10
url: /ko/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words는**Document**의[LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/)속성에 지정된 매개 변수에 따라 다양한 레이아웃으로 출력 문서를 만들 수 있습니다. 이 속성은 이 문서에서 설명하는Microsoft Word사용자 인터페이스 메뉴 옵션과 유사합니다.

페이지 번호 매기기를 다시 시작하는 연속 섹션에서 페이지 번호를 계산하는[ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart)또는"프린터 메트릭을 사용하여 문서 배치"호환성 옵션을 무시하는[IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics)과 같은 전체 매개 변수 목록은[LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/)클래스 페이지를 참조하십시오.

## 서식 표시

Aspose.Words다음 속성을 사용하여 서식 표시를 관리할 수 있습니다:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText)–숨겨진 텍스트를 렌더링할지 여부를 지정하는`Boolean`값입니다.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks)–단락 기호 문자가 렌더링되는지 여부를 지정하는`Boolean`값입니다.

아래 예에 묘사된 페이지에는 세 개의 단락이 있습니다. 두 번째는 숨겨져 있습니다. 사용자는**ShowHiddenText**옵션을 변경하여 이 숨겨진 텍스트를 페이지에 표시할 수 있습니다. 또한 각 단락에는 끝에 단락 표시가 있습니다. **ShowParagraphMarks**속성을 렌더링하도록 설정하지 않으면 일반적으로 단락 표시가 표시되지 않습니다.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

Microsoft Word에서 이러한 매개 변수는 다음과 같이"파일,옵션,디스플레이"대화 상자를 사용하여 설정됩니다:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## 의견 및 수정

Aspose.Words를 사용하면Microsoft Word와 동일하게 보이는 문서 주석을 렌더링할 수 있습니다. 주석을 렌더링할지 여부를 지정하려면[ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/)속성을 사용합니다.

Microsoft Word에서 이 매개 변수는 아래와 같이"변경 내용 추적 옵션"대화 상자를 사용하여 설정됩니다:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

또한Aspose.Words을 사용하면 문서에 수정본을 표시할 수 있습니다. **LayoutOptions**클래스의[RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions)속성을 사용하여 문서 개정판 표시 여부를 정의합니다. 외모를 제어하기 위해(개정 강조 색상,개정 바 색상 등)),[RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/)클래스를 사용합니다.

또한 개정을 콘텐츠에 대한 주석으로 표시할 수도 있습니다. 이를 위해[CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode)속성과[ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/)값을 사용합니다.

다음 코드 예제에서는 수정본 표시를 사용자 지정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

아래 이미지는Aspose.Words이 주석 및 수정본 삭제를 렌더링하는 방법을 보여줍니다:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## 고급 타이포그래피 렌더링을위한 텍스트 셰이퍼

[TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/)속성을 사용하면`OpenType`기능 지원뿐만 아니라 텍스트 쉐이핑 기능을 설정할 수 있습니다.

다음과 같은 주요 경우에 문서 처리에 텍스트 쉐이핑을 사용합니다:

- 문서는 커닝,숫자 모양,숫자 형식 또는 합자를 사용합니다.
- 문서는 아랍어,크메르어,태국어 등과 같은 복잡한 스크립트를 사용합니다.

{{% alert color="primary" %}}

텍스트 쉐이핑은 문서를PDF또는XPS로 내보낼 때만 사용할 수 있습니다.

{{% /alert %}}
