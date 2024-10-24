---
title: 아시아 타이포그래피 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 아시아 타이포그래피 작업
linktitle: 아시아 타이포그래피 작업
description: "아시아 타이포그래피를 사용하여 작업 C++. 아시아어와 라틴어 텍스트 사이의 공간 조정 C++."
type: docs
weight: 240
url: /ko/cpp/working-with-asian-typography/
---

아시아 타이포그래피는 아시아 언어로 작성된 문서의 텍스트 단락에 대한 옵션의 집합입니다.

Aspose.Words 를 사용하여 아시아 타이포그래피를 지원합니다 [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) 클래스와 그 속성 중 일부.

## 자동으로 아시아어와 라틴어 텍스트 또는 숫자 사이의 공간을 조정

동아시아 텍스트와 라틴 텍스트를 모두 사용하여 서식 파일을 디자인하고 두 텍스트 유형 사이의 공백을 제어하여 양식 서식 파일의 모양을 개선하려는 경우 이 두 텍스트 유형 사이의 공백을 자동으로 조정하도록 양식 서식 파일을 구성할 수 있습니다. 이를 위해 다음을 사용할 수 있습니다 [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) 그리고 [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) 의 속성 `ParagraphFormat` 수업

다음 코드 예제에서는 사용 방법을 보여 줍니다 **AddSpaceBetweenFarEastAndAlpha** 그리고 **AddSpaceBetweenFarEastAndDigit** 속성:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## 줄 바꿈 옵션 설정

단락 속성 대화 상자의 아시아 타이포그래피 탭 Microsoft Word 줄 바꿈 그룹이 있습니다. 이 그룹의 옵션은 다음을 사용하여 설정할 수 있습니다 [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) 의 속성 **ParagraphFormat** 수업

다음 코드 예제에서는 이러한 속성을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
