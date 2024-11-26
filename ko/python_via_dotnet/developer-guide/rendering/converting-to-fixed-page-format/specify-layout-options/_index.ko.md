---
title: Python에서 레이아웃 옵션 지정
second_title: Python via .NET용 Aspose.Words
articleTitle: 레이아웃 옵션 지정
linktitle: 레이아웃 옵션 지정
description: "Python를 사용하여 다양한 문서 레이아웃에 대한 레이아웃 옵션을 지정합니다."
type: docs
weight: 10
url: /ko/python-net/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words를 사용하면 [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) 클래스의 속성에 지정된 매개변수에 따라 다양한 레이아웃으로 출력 문서를 생성할 수 있습니다. 이러한 속성 중 일부는 Microsoft Word 사용자 인터페이스 메뉴 옵션과 유사합니다. 이에 대해서는 이 문서에서 설명합니다.

페이지 번호 매기기를 다시 시작하는 연속 섹션에서 페이지 번호를 계산하기 위한 [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) 또는 "프린터 메트릭을 사용하여 문서 레이아웃" 호환성 옵션을 무시하기 위한 [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/)와 같은 매개변수의 전체 목록은 [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) 클래스 페이지를 참조하세요.

## 서식 지정 표시

Aspose.Words를 사용하면 다음 속성을 사용하여 서식 표시를 관리할 수 있습니다

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) – 숨겨진 텍스트를 렌더링할지 여부를 지정하는 `Boolean` 값입니다.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) – 단락 표시 문자를 렌더링할지 여부를 지정하는 `Boolean` 값입니다.

아래 예에 표시된 페이지에는 세 개의 단락이 포함되어 있습니다. 두 번째는 숨겨져 있습니다. 사용자는 [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) 옵션을 변경하여 페이지에 숨겨진 텍스트를 표시할 수 있습니다. 또한 각 문단의 끝에는 문단 표시가 있습니다. 단락 기호는 일반적으로 [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) 속성이 렌더링되도록 설정되어 있지 않으면 표시되지 않습니다.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

Microsoft Word에서 이러한 매개변수는 다음과 같이 "파일 → 옵션 → 표시" 대화 상자를 사용하여 설정됩니다

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## 의견 및 개정

Aspose.Words를 사용하면 Microsoft Word와 동일하게 보이는 문서 주석을 렌더링할 수 있습니다. 주석 렌더링 여부를 지정하려면 [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) 속성을 사용하십시오.

Microsoft Word에서 이 매개변수는 아래와 같이 "변경 사항 추적 옵션" 대화 상자를 사용하여 설정됩니다

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

또한 Aspose.Words를 사용하면 문서의 개정판을 표시할 수 있습니다. [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) 클래스의 [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) 속성을 사용하여 문서 개정 내용을 표시할지 여부를 정의합니다. 모양(수정본 강조 색상, 수정본 막대 색상 등)을 제어하려면 [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/) 클래스를 사용하세요.

개정 내용을 콘텐츠에 대한 설명으로 표시할 수도 있습니다. 이를 위해 [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) 속성과 [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons) 값을 사용합니다.

다음 코드 예제에서는 개정 표시를 사용자 정의하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

아래 이미지는 Aspose.Words가 주석 및 삭제 개정을 렌더링하는 방법을 보여줍니다

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>
