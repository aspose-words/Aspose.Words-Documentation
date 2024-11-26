---
title: 레이아웃 옵션 지정 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 레이아웃 옵션 지정
linktitle: 레이아웃 옵션 지정
description: "다양한 문서 레이아웃에 대한 레이아웃 옵션을 지정합니다."
type: docs
weight: 20
url: /ko/cpp/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words 에 지정된 매개 변수에 따라 다양한 레이아웃으로 출력 문서를 만들 수 있습니다. [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) 의 재산 **Document**. 이 속성은 Microsoft Word 이 문서에서 설명하는 사용자 인터페이스 메뉴 옵션.

다음과 같은 매개 변수의 전체 목록을 보려면 [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/) 페이지 번호 매기기를 다시 시작하는 연속 섹션에서 페이지 번호를 계산하려면,또는 [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/) "프린터 메트릭을 사용하여 문서 배치"호환성 옵션을 무시하려면 다음을 참조하십시오 [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) 클래스 페이지.

## 서식 표시

Aspose.Words 다음 속성을 사용하여 서식 표시를 관리할 수 있습니다:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) - `Boolean` 숨겨진 텍스트를 렌더링할지 여부를 지정하는 값입니다.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/) - `Boolean` 단락 기호 문자를 렌더링할지 여부를 지정하는 값입니다.

아래 예에 묘사된 페이지에는 세 개의 단락이 있습니다. 두 번째는 숨겨져 있습니다. 사용자는 **ShowHiddenText** 이 숨겨진 텍스트를 페이지에 표시하는 옵션. 또한 각 단락에는 끝에 단락 표시가 있습니다. 단락 표시는 일반적으로 **ShowParagraphMarks** 속성을 렌더링하도록 설정되어 있습니다.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

그 안에 Microsoft Word,이러한 매개 변수는 다음과 같이"파일 30 개 옵션 30 개 디스플레이"대화 상자를 사용하여 설정됩니다.:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## 의견 및 수정

함께 Aspose.Words,다음과 같이 보이는 문서 주석을 렌더링할 수 있습니다 Microsoft Word. 주석이 렌더링되는지 여부를 지정하려면 다음을 사용합니다 [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/) 재산.

그 안에 Microsoft Word,이 매개 변수는 아래와 같이"변경 사항 추적 옵션"대화 상자를 사용하여 설정됩니다:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

또한, Aspose.Words 문서에 수정본을 표시할 수 있습니다. 사용 [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) 의 재산 **LayoutOptions** 문서 개정판 표시 여부를 정의하는 클래스입니다. 외모를 제어하기 위해(개정 강조 색상,개정 바 색상 등)),사용 [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) 수업

또한 개정을 콘텐츠에 대한 주석으로 표시할 수도 있습니다. 이를 위해 다음을 사용하십시오 [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/) 재산 및 [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/) 가치.

다음 코드 예제에서는 수정본 표시를 사용자 지정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

아래 이미지는 방법을 보여줍니다 Aspose.Words 댓글 및 수정 삭제 렌더링:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## 고급 타이포그래피 렌더링을위한 텍스트 셰이퍼

그 [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) 속성을 사용하면 텍스트 쉐이핑 기능뿐만 아니라 텍스트 쉐이핑 기능을 설정할 수 있습니다. `OpenType` 기능 지원.

다음과 같은 주요 경우에 문서 처리에 텍스트 쉐이핑을 사용합니다:

- 문서는 커닝,숫자 모양,숫자 형식 또는 합자를 사용합니다.
- 문서는 아랍어,크메르어,태국어 등과 같은 복잡한 스크립트를 사용합니다.

{{% alert color="primary" %}}

텍스트 쉐이핑은 문서를 내보낼 때만 활성화됩니다. PDF 또는 XPS.

{{% /alert %}}
