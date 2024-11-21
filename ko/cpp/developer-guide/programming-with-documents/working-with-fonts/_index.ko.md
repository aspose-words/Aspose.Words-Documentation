---
title: 글꼴 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 글꼴 작업
linktitle: 글꼴 작업
description: "사용하여 세부 글꼴 서식 C++."
type: docs
weight: 230
url: /ko/cpp/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

글꼴은 특정 크기,색상 및 디자인의 문자 집합입니다. Aspose.Words 를 사용하여 글꼴로 작업 할 수 있습니다 [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) 네임스페이스와 [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) 수업

## 글꼴 서식

현재 글꼴 포맷은 **Font** 에 의해 반환 된 객체 [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) 재산. 그 **Font** 클래스는 다양한 글꼴 속성을 포함하고 있으며, Microsoft Word.

다음 코드 예제에서는 글꼴 서식을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

채우기 속성은 이제 글꼴이 텍스트의 채우기 서식을 설정하는 데 사용할 수 있습니다. 예를 들어 텍스트 채우기의 전경색 또는 투명도를 변경할 수 있습니다.

## 글꼴 줄 간격 얻기

글꼴 줄 간격은 두 개의 연속 텍스트 줄의 기준선 사이의 수직 거리입니다. 따라서 줄 간격은 문자 자체의 높이와 함께 줄 사이의 빈 공간을 포함합니다.

그 [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) 재산은 **Font** 아래 예제와 같이 이 값을 얻는 클래스:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## 폰트 EmphasisMark

일부 동아시아 언어 들 은 강조 를 표시 하기 위해 특별 한 강조 표시 를 사용 한다. 그 **Font** 클래스는 [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) 가져오기 또는 설정하는 속성 `EmphasisMark` 서식을 지정할 때 적용할 열거형 값입니다.

다음 코드 예제에서는 다음을 설정하는 방법을 보여 줍니다 **EphasisMark** 재산:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
