---
title: C#에서 레이아웃 옵션 지정
second_title: .NET용 Aspose.Words
articleTitle: 레이아웃 옵션 지정
linktitle: 레이아웃 옵션 지정
description: "C#를 사용하여 다양한 문서 레이아웃에 대한 레이아웃 옵션을 지정합니다."
type: docs
weight: 10
url: /ko/net/specify-layout-options/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words를 사용하면 [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) 클래스의 속성에 지정된 매개변수에 따라 다양한 레이아웃으로 출력 문서를 생성할 수 있습니다. 이러한 속성 중 일부는 일부 Microsoft Word 사용자 인터페이스 메뉴 옵션과 유사합니다. 이에 대해서는 이 문서에서 설명합니다.

페이지 번호 매기기를 다시 시작하는 연속 섹션에서 페이지 번호를 계산하는 [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/)나 "프린터 메트릭을 사용하여 문서 레이아웃" 호환성 옵션을 무시하는 [IgnorePrinterMetrics](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/)와 같은 매개변수의 전체 목록은 [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) 클래스 페이지를 참조하세요.

## 서식 지정 표시

Aspose.Words를 사용하면 다음 속성을 사용하여 서식 표시를 관리할 수 있습니다

- [ShowHiddenText](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showhiddentext/) – 숨겨진 텍스트를 렌더링할지 여부를 지정하는 `Boolean` 값입니다.
- [ShowParagraphMarks](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showparagraphmarks/) – 단락 표시 문자를 렌더링할지 여부를 지정하는 `Boolean` 값입니다.

아래 예에 표시된 페이지에는 세 개의 단락이 포함되어 있습니다. 두 번째는 숨겨져 있습니다. 사용자는 **ShowHiddenText** 옵션을 변경하여 페이지에 숨겨진 텍스트를 표시할 수 있습니다. 또한 각 문단의 끝에는 문단 표시가 있습니다. 단락 기호는 일반적으로 **ShowParagraphMarks** 속성이 렌더링되도록 설정되어 있지 않으면 표시되지 않습니다.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

Microsoft Word에서 이러한 매개변수는 다음과 같이 "파일 → 옵션 → 표시" 대화 상자를 사용하여 설정됩니다

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## 의견 및 개정

Aspose.Words를 사용하면 Microsoft Word와 동일하게 보이는 문서 주석을 렌더링할 수 있습니다. 주석 렌더링 여부를 지정하려면 [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) 속성을 사용하십시오.

Microsoft Word에서 이 매개변수는 아래와 같이 "변경 사항 추적 옵션" 대화 상자를 사용하여 설정됩니다

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

또한 Aspose.Words를 사용하면 문서의 개정판을 표시할 수 있습니다. **LayoutOptions** 클래스의 [RevisionOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/revisionoptions/) 속성을 사용하여 문서 개정 내용을 표시할지 여부를 정의합니다. 모양(수정본 강조 색상, 수정본 막대 색상 등)을 제어하려면 [RevisonOptions](https://reference.aspose.com/words/net/aspose.words.layout/revisionoptions/) 클래스를 사용하세요.

개정 내용을 콘텐츠에 대한 설명으로 표시할 수도 있습니다. 이를 위해 [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) 속성과 [ShowInBalloons](https://reference.aspose.com/words/net/aspose.words.layout/commentdisplaymode/) 값을 사용합니다.

다음 코드 예제에서는 개정 표시를 사용자 정의하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

아래 이미지는 Aspose.Words가 주석 및 삭제 개정을 렌더링하는 방법을 보여줍니다

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## 고급 타이포그래피 렌더링을 위한 텍스트 셰이퍼

[TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) 속성을 사용하면 텍스트 모양 기능과 `OpenType` 기능 지원을 설정할 수 있습니다.

다음과 같은 주요 경우에 문서 처리를 위해 텍스트 모양을 사용합니다

- 문서에서 커닝, 숫자 모양, 숫자 형식 또는 합자를 사용합니다.
- 문서에 아랍어, 크메르어, 태국어 등과 같은 복잡한 스크립트가 사용됩니다.

{{% alert color="primary" %}}

텍스트 모양은 문서를 PDF 또는 XPS로 내보낼 때만 활성화됩니다.

{{% /alert %}}
