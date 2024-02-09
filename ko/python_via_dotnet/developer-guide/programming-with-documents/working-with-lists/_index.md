---
title: Python의 목록 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: 목록 작업
linktitle: 목록 작업
description: "Python를 사용하여 문서에서 목록을 만들고 지정하고 다시 시작하세요."
type: docs
weight: 200
url: /ko/python-net/working-with-lists/
---

Microsoft Word 문서의 목록은 목록 서식 속성의 집합입니다. 문서에서 목록을 사용하여 텍스트 형식을 지정하고 정렬하고 강조할 수 있습니다. 목록은 문서의 데이터를 구성하는 좋은 방법이며 독자가 핵심 사항을 더 쉽게 이해할 수 있도록 해줍니다

각 목록에는 최대 9개의 수준이 있을 수 있으며 숫자 스타일, 시작 값, 들여쓰기, 탭 위치 등과 같은 서식 속성은 각 수준에 대해 별도로 정의됩니다.

Aspose.Words에서 목록 작업은 [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/) 모듈로 표시됩니다. 그러나 [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) 개체는 항상 [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/) 컬렉션에 속합니다.

이 항목에서는 Aspose.Words를 사용하여 목록을 프로그래밍 방식으로 작업하는 방법을 설명합니다

## 목록 서식을 적용하여 목록 생성

Aspose.Words를 사용하면 목록 서식을 적용하여 쉽게 목록을 만들 수 있습니다. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)는 [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/) 객체를 반환하는 [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) 속성을 제공합니다. 이 객체에는 목록을 시작 및 종료하고 들여쓰기를 늘리거나 줄이는 여러 가지 메서드가 있습니다. Microsoft Word에는 글머리 기호 목록과 번호 매기기라는 두 가지 일반적인 목록 유형이 있습니다.

- 글머리 기호 목록을 시작하려면 [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)를 호출하세요.
- 번호 매기기 목록을 시작하려면 [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)를 호출하세요.

글머리 기호 또는 번호 및 서식은 현재 단락과 글머리 기호 목록 서식 지정을 중지하기 위해 [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/)가 호출될 때까지 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)를 사용하여 생성된 모든 추가 단락에 추가됩니다.

Word 문서에서 목록은 최대 9개 수준으로 구성될 수 있습니다. 각 수준의 목록 서식은 사용되는 글머리 기호 또는 번호, 왼쪽 들여쓰기, 글머리 기호와 텍스트 사이의 공백 등을 지정합니다. 다음 방법은 목록 수준을 변경하고 새 수준의 서식 속성을 적용합니다

- 현재 단락의 목록 수준을 한 수준 높이려면 [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)를 호출합니다
- 현재 단락의 목록 수준을 한 수준 낮추려면 [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)를 호출합니다

이 메서드는 목록 수준을 변경하고 새 수준의 서식 속성을 적용합니다.

{{% alert color="primary" %}}

[ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) 속성을 사용하여 단락의 목록 수준을 가져오거나 설정할 수도 있습니다. 목록 수준에는 0부터 8까지 번호가 매겨져 있습니다.

{{% /alert %}}

아래 예에서는 다단계 목록을 작성하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## 목록 수준에 대한 형식 지정

목록 수준 개체는 목록이 생성될 때 자동으로 생성됩니다. [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) 클래스의 속성과 메서드를 사용하여 목록의 개별 수준 형식을 제어합니다.

## 각 섹션의 다시 시작 목록

[is_restart_at_each_section 속성](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/) 속성을 사용하여 각 섹션에 대한 목록을 다시 시작할 수 있습니다. 이 옵션은 RTF, DOC 및 DOCX 문서 형식에서만 지원됩니다. 이 옵션은 OoxmlCompliance가 Ecma376보다 높은 경우에만 DOCX에 기록됩니다.

다음 코드 예제에서는 목록을 만들고 각 섹션에 대해 다시 시작하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
