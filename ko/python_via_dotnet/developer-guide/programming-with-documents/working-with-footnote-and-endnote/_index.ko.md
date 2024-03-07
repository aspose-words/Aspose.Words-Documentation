---
title: 각주 및 미주 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: 각주 및 미주 작업
linktitle: 각주 및 미주 작업
description: "문서에 fpotnotes 또는 endnotes를 삽입하고 Python를 사용하여 해당 옵션을 지정합니다."
type: docs
weight: 160
url: /ko/python-net/working-with-footnote-and-endnote/
---

Aspose.Words는 또한 각주 및 미주 작업을 위한 몇 가지 클래스, 메서드 및 속성을 제공합니다.

## 미주 삽입 및 번호 매기기 옵션 설정

Word 문서에 각주나 미주를 삽입하려면 [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/) 방식을 사용하세요. 이 방법은 문서에 각주나 미주를 삽입합니다.

[EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) 및 [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) 클래스는 각주와 미주의 번호 매기기 옵션을 나타냅니다.

다음 코드 예제에서는 문서에 미주를 삽입하고 번호 매기기 옵션을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## 각주 레이아웃 열 수 설정

[columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/) 속성을 사용하여 각주 레이아웃 열 수를 설정할 수 있습니다. 이 속성의 값이 0이면 표시된 페이지의 열 수에 따라 여러 열로 각주 영역의 서식이 지정됩니다.

다음 코드 예제에서는 각주 레이아웃의 열 수를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## 각주 및 EndNote 위치 설정

각주 위치는 각 페이지의 하단이나 각 페이지의 텍스트 아래에 있을 수 있습니다. 미주 위치는 섹션 끝이나 문서 끝일 수 있습니다.

다음 코드 예제에서는 각주와 미주의 위치를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
