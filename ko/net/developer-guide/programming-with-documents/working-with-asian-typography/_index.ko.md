---
title: C#의 아시아 타이포그래피
second_title: .NET용 Aspose.Words
articleTitle: 아시아 타이포그래피 작업
linktitle: 아시아 타이포그래피 작업
description: "C#를 사용하여 아시아 타이포그래피로 작업합니다. C#에서 아시아 텍스트와 라틴 텍스트 사이의 간격을 조정합니다."
type: docs
weight: 240
url: /ko/net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

아시아 타이포그래피는 아시아 언어로 작성된 문서의 텍스트 단락에 대한 옵션 세트입니다.

Aspose.Words는 [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) 클래스와 해당 속성 중 일부를 사용하여 아시아 타이포그래피를 지원합니다.

## 아시아어와 라틴 문자 또는 숫자 사이의 간격을 자동으로 조정합니다

동아시아 및 라틴 텍스트가 모두 포함된 서식 파일을 디자인하고 두 텍스트 유형 사이의 공백을 제어하여 양식 서식 파일의 모양을 향상시키려는 경우 이러한 두 텍스트 유형 사이의 공백을 자동으로 조정하도록 양식 서식 파일을 구성할 수 있습니다.. 이를 달성하려면 `ParagraphFormat` 클래스의 [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) 및 [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) 속성을 사용할 수 있습니다.

다음 코드 예제에서는 **AddSpaceBetweenFarEastAndAlpha** 및 **AddSpaceBetweenFarEastAndDigit** 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## 줄 바꿈 옵션 설정

Microsoft Word 단락 속성 대화 상자의 아시아 타이포그래피 탭에는 줄 바꿈 그룹이 있습니다. 이 그룹의 옵션은 **ParagraphFormat** 클래스의 [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) 속성을 사용하여 설정할 수 있습니다.

다음 코드 예제에서는 이러한 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
