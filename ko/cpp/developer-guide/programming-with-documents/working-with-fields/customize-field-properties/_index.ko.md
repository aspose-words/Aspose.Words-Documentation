---
title: 필드 속성 사용자 지정 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 필드 속성 사용자 지정
linktitle: 필드 속성 사용자 지정
description: "필드 속성을 사용자 지정하는 방법에 대해 알아봅니다 C++. 병합 필드 이름을 바꾸거나 구분 노드가 없는 필드에 대한 결과 가져오기 C++."
type: docs
weight: 27
url: /ko/cpp/customize-field-properties/
---

Aspose.Words 프로그래밍 방식으로 다양한 필드 속성과 상호 작용하는 기능을 제공합니다. 이 기사에서는 필드 속성 작업의 기본 원리를 이해할 수 있도록 몇 가지 예를 살펴볼 것입니다. 해당 클래스의 각 필드 유형에 대한 전체 속성 목록을 볼 수 있습니다. [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## 필드 속성 업데이트

때때로 사용자는 필드 속성의 값을 변경해야 합니다. 예를 들어,업데이트 [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) 의 재산 `AUTHOR` 필드 또는 변경 [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) 의 재산 `MERGEFIELD` 필드

다음 코드 예제에서는 단어 문서에서 병합 필드의 이름을 바꾸는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## 필드 표시 결과

Aspose.Words 필드 구분 노드가 없는 필드에 대한 필드 결과를 가져오는 속성을 제공합니다. 우리는 이것을"가짜 결과"또는 표시 결과라고 부릅니다; Microsoft Word 필드 값을 즉시 계산하여 문서에 표시하지만 문서 모델에는 이러한 값이 없습니다.

다음 코드 예제에서는 [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/) 재산:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}