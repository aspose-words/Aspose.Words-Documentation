---
title: C#에서 글꼴 작업
second_title: .NET용 Aspose.Words
articleTitle: 글꼴 작업
linktitle: 글꼴 작업
description: "C#를 사용하여 세부적으로 글꼴 형식을 지정합니다. C#의 강조 표시. C#를 사용하여 글꼴 줄 간격을 얻습니다."
type: docs
weight: 230
url: /ko/net/working-with-fonts/
---

글꼴은 특정 크기, 색상 및 디자인을 가진 문자 집합입니다. Aspose.Words를 사용하면 [Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) 네임스페이스와 [Font](https://reference.aspose.com/words/net/aspose.words/font/) 클래스를 사용하여 글꼴 작업을 할 수 있습니다.

## 글꼴 서식

현재 글꼴 형식은 [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) 속성에서 반환된 **Font** 개체로 표시됩니다. **Font** 클래스에는 Microsoft Word에서 사용 가능한 글꼴 속성을 복제하는 다양한 글꼴 속성이 포함되어 있습니다.

다음 코드 예제에서는 글꼴 서식을 설정하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

채우기 속성을 글꼴에 사용하여 텍스트 채우기 서식을 설정할 수도 있습니다. 이를 통해 전경색이나 텍스트 채우기 투명도 등을 변경할 수 있습니다.

## 글꼴 줄 간격 얻기

글꼴 줄 간격은 두 연속 텍스트 줄의 기준선 사이의 수직 거리입니다. 따라서 줄 간격에는 문자 자체의 높이와 함께 줄 사이의 공백이 포함됩니다.

아래 예와 같이 이 값을 얻기 위해 [LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/) 속성이 **Font** 클래스에 도입되었습니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## 글꼴 강조 표시

일부 동아시아 언어에서는 강조를 표시하기 위해 특수 강조 표시를 사용합니다. **Font** 클래스는 서식을 지정할 때 적용할 [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/emphasismark/) 열거형 값을 가져오거나 설정하기 위한 [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/) 속성을 제공합니다.

다음 코드 예제에서는 **EphasisMark** 속성을 설정하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
