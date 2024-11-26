---
title: 각주 및 미주 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 각주 및 미주 작업
linktitle: 각주 및 미주 작업
description: "다음을 사용하여 각주 및 미주를 조작하는 방법 C++."
type: docs
weight: 160
url: /ko/cpp/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words 또한 각주 및 미주 작업을위한 일부 클래스,메서드 및 속성을 제공합니다.

## 미주 삽입 및 번호 매기기 옵션 설정

당신은 워드 문서에 각주 또는 미주를 삽입 할 경우,사용하시기 바랍니다 [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/) 방법 이 방법은 각주 또는 미주를 문서에 삽입합니다.

[EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) 그리고 [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) 클래스는 각주 및 미주에 대한 번호 매기기 옵션을 나타냅니다.

다음 코드 예제에서는 미주를 문서에 삽입하고 번호 매기기 옵션을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## 각주 레이아웃 열 수 설정

다음을 사용하여 각주 레이아웃 열의 수를 설정할 수 있습니다 [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/) 재산. 이 속성의 값이 0,각주 영역은 표시된 페이지의 열 수에 따라 열 수로 포맷됩니다.

다음 코드 예제에서는 각주 레이아웃의 열 수를 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## 각주의 위치를 설정하고 EndNote

각주 위치는 각 페이지의 맨 아래 또는 각 페이지의 텍스트 아래에 있을 수 있습니다. 미주 위치는 섹션의 끝이나 문서의 끝에있을 수 있습니다.

다음 코드 예제에서는 각주 및 미주의 위치를 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
