---
title: 목록 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 목록 작업
linktitle: 목록 작업
description: "번호 매기기 서식 지정 기능 소개 Aspose.Words 에 대한 C++."
type: docs
weight: 200
url: /ko/cpp/working-with-lists/
timestamp: 2024-01-30-16-22-34
---

목록 Microsoft Word 문서 목록 서식 속성 집합입니다. 문서에서 목록을 사용하여 텍스트의 서식을 지정,정렬 및 강조 할 수 있습니다. 목록은 문서에서 데이터를 구성하는 좋은 방법이며 독자가 핵심 사항을 더 쉽게 이해할 수 있도록 합니다.

각 목록은 최대 9 숫자 스타일,시작 값,들여 쓰기,탭 위치 등과 같은 레벨 및 서식 속성은 각 레벨에 대해 별도로 정의됩니다.

그 안에 Aspose.Words,목록으로 작업하는 것은 [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/) 네임스페이스 그러나, [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) 객체는 항상 [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/) 수집

이 항목에서는 다음을 사용하여 목록을 프로그래밍 방식으로 작업하는 방법에 대해 설명합니다 Aspose.Words.

## 목록 수준에 대한 서식 지정

목록 수준 개체는 목록을 만들 때 자동으로 만들어집니다. 의 속성과 방법을 사용하여 [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/) 목록의 개별 수준의 서식을 제어하는 클래스입니다.

## 각 섹션에 대한 목록을 다시 시작

다음을 사용하여 각 섹션에 대한 목록을 다시 시작할 수 있습니다 [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/) 재산. 이 옵션은 다음 항목에서만 지원됩니다 RTF, DOC 그리고 DOCX 문서 형식. 이 옵션은 다음에 기록됩니다 DOCX 만 경우 OoxmlCompliance 더 높은 것은 376 입니다.

다음 코드 예제에서는 목록을 만들고 각 섹션에 대해 목록을 다시 시작하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
