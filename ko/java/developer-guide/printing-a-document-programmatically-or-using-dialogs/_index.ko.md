---
title: 문서 인쇄
second_title: Aspose.WordsJava
articleTitle: 프로그래밍 방식으로 문서 인쇄 또는 대화 상자 사용
linktitle: 프로그래밍 방식으로 문서 인쇄 또는 대화 상자 사용
description: "설정,인쇄 미리보기 및 인쇄 진행률 대화 상자를 통해Java을 사용하여 문서를 인쇄합니다."
type: docs
weight: 55
url: /ko/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

이 문서에서는Aspose.WordsAPI을 사용하여 워드 프로세싱 문서를 인쇄하는 방법을 설명합니다. 또한 설정,인쇄 미리 보기 및 인쇄 진행 대화 상자가 있는 문서를 인쇄하는 방법을 보여 줍니다.

## 설정 및 인쇄 미리보기 대화 상자가 있는 문서 인쇄

문서 작업을 할 때 선택한 프린터로 문서를 인쇄해야 하는 경우가 많습니다. 인쇄 미리보기 대화 상자를 사용하여 인쇄된 문서가 어떻게 표시되는지 시각적으로 검사하고 관련 인쇄 옵션을 선택하는 것이 좋습니다.

Aspose.Words에는 내장된 대화상자나 형태가 없지만[AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/)클래스는 자바를 모두 재정의합니다.아우인쇄인쇄 및 자바.아우인쇄페이지 가능

다음 예제에서는 이러한 클래스를 사용하여 인쇄 미리 보기 및 설정 대화 상자를 통해Aspose.Words에서 문서를 인쇄하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## 한 장에 여러 페이지 인쇄

Aspose.Words**MultipagePrintDocument**클래스를 구현하여 인쇄된 페이지에 문서가 표시되는 방식을 정의하여 사용자 지정 논리를 구현하도록 인쇄 작업을 미세 조정합니다. **MultipagePrintDocument**클래스는 한 장의 용지에 여러 페이지를 인쇄할 수 있는 기능을 제공합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

**MultipagePrintDocument**클래스를 사용하는 예제를 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46).

이 코드 예제의 결과는 다음과 같습니다:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
