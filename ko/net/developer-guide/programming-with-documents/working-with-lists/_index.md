---
title: C#의 목록 작업
second_title: .NET용 Aspose.Words
articleTitle: 목록 작업
linktitle: 목록 작업
description: ".NET용 Aspose.Words의 번호 매기기 형식 지정 기능을 소개합니다."
type: docs
weight: 200
url: /ko/net/working-with-lists/
---

Microsoft Word 문서의 목록은 단락 서식 속성 집합입니다. 목록은 문서에서 텍스트를 구성하고 정렬하고 강조 표시하는 데 사용할 수 있습니다. 목록은 독자가 핵심 사항을 쉽게 흡수하고 이해할 수 있도록 문서의 데이터를 구성하는 좋은 방법입니다.

각 목록에는 최대 9개의 수준이 있을 수 있으며, 숫자 스타일, 시작 값, 들여쓰기, 탭 위치 등과 같은 서식 속성은 각 수준마다 별도로 정의됩니다.

Aspose.Words에서 목록 작업은 [Lists](https://reference.aspose.com/words/net/aspose.words.lists/) 네임스페이스로 표시됩니다. 그러나 [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) 개체는 항상 [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/)에 속합니다.

이 문서에서는 Aspose.Words를 사용하여 목록을 프로그래밍 방식으로 작업하는 방법을 설명합니다.

## 목록 서식을 적용하여 목록 생성

Aspose.Words를 사용하면 목록 서식을 적용하여 쉽게 목록을 만들 수 있습니다. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)는 **ListFormat** 객체를 반환하는 [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/) 속성을 제공합니다. 이 객체에는 목록을 시작 및 종료하고 들여쓰기를 늘리거나 줄이는 여러 가지 메서드가 있습니다. Microsoft Word에는 글머리 기호 목록과 번호 매기기라는 두 가지 일반적인 목록 유형이 있습니다

- 글머리 기호 목록을 시작하려면 [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)를 호출하세요
- 번호 매기기 목록을 시작하려면 [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)를 호출하세요

글머리 기호 또는 번호 및 서식은 현재 단락과 글머리 기호 목록 서식 지정을 중지하기 위해 [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/)가 호출될 때까지 **DocumentBuilder**를 사용하여 생성된 모든 추가 단락에 추가됩니다.

Word 문서에서 목록은 최대 9개 수준으로 구성될 수 있습니다. 각 수준의 목록 서식은 사용되는 글머리 기호 또는 번호, 왼쪽 들여쓰기, 글머리 기호와 텍스트 사이의 공백 등을 지정합니다. 다음 방법은 목록 수준을 변경하고 새 수준의 서식 속성을 적용합니다

- 현재 단락의 목록 수준을 한 수준 높이려면 [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)를 호출합니다
- 현재 단락의 목록 수준을 한 수준 낮추려면 [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)를 호출합니다

[ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) 속성을 사용하여 단락의 목록 수준을 가져오거나 설정할 수도 있습니다.

{{% alert color="primary" %}}

목록 수준에는 0부터 8까지 번호가 매겨져 있습니다.

{{% /alert %}}

다음 코드 예제에서는 다단계 목록을 작성하는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## 목록 수준에 대한 형식 지정

목록 수준 개체는 목록이 생성될 때 자동으로 생성됩니다. [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) 클래스의 속성과 메서드를 사용하여 목록의 개별 수준 형식을 제어합니다.

## 각 섹션의 다시 시작 목록

[IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/) 속성을 사용하여 각 섹션에 대한 목록을 다시 시작할 수 있습니다. 이 옵션은 RTF, DOC 및 DOCX 문서 형식에서만 지원됩니다. 이 옵션은 OoxmlCompliance가 Ecma376보다 높은 경우에만 DOCX에 기록됩니다.

다음 코드 예제에서는 목록을 만들고 각 섹션에 대해 다시 시작하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
