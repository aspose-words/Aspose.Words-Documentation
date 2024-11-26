---
title: Java에서 각주 및 미주 작업
second_title: Aspose.WordsJava
articleTitle: 각주 및 미주 작업
linktitle: 각주 및 미주 작업
description: "Java을 사용하여 각주와 미주를 조작하는 방법."
type: docs
weight: 160
url: /ko/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words은 각주 및 미주 작업을 위한 일부 클래스,메서드 및 속성도 제공합니다.

## 미주 삽입 및 번호 매기기 옵션 설정

단어 문서에 각주 또는 미주를 삽입하려면[InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String)방법을 사용하십시오. 이 방법은 각주 또는 미주를 문서에 삽입합니다.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/)및[FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/)클래스는 각주 및 미주에 대한 번호 매기기 옵션을 나타냅니다.

다음 코드 예제에서는 미주를 문서에 삽입하고 번호 매기기 옵션을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## 각주 레이아웃 열 수 설정

[Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns)속성을 사용하여 각주 레이아웃 열의 수를 설정할 수 있습니다. 이 속성의 값이 0 인 경우 각주 영역은 표시된 페이지의 열 수에 따라 열 수로 서식이 지정됩니다.

다음 코드 예제에서는 각주 레이아웃의 열 수를 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## 각주 및EndNote의 위치 설정

각주 위치는 각 페이지의 맨 아래 또는 각 페이지의 텍스트 아래에 있을 수 있습니다. 미주 위치는 섹션의 끝이나 문서의 끝에있을 수 있습니다.

다음 코드 예제에서는 각주 및 미주의 위치를 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
