---
title: Office Add-ins를 사용하여 작업 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: Office Add-ins로 작업
linktitle: Office Add-ins로 작업
description: "Aspose.Words 제품정보 Java Office Add-ins와 함께 일하는 다양한 수업을 제공합니다. 웹 확장을 통해 작업 Pane을 추가하고 팬 및 확장 속성을 사용자 정의 할 수 있습니다."
type: docs
weight: 50
url: /ko/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

때로는 문서를 수정하기 위해 코드를 실행하는 인터페이스 제어에 액세스 할 수 있습니다. Aspose.Words API 제품정보 `WebExtensions` namespace, 다양한 클래스를 부여하는 요소와 속성을 확장하는 XML vocabulary for 대표 Office Add-ins.

WebExtensions 네임스페이스는 조건으로 분할될 수 있습니다:

* 작업 pane 작업을위한 개체
* 웹 확장 작업을위한 개체

## 작업 Panes 사용

작업 팬은 창의 오른쪽에 표시되는 인터페이스 표면입니다. Microsoft Word· Task pane는 사용자가 문서를 수정하기 위해 코드를 실행할 수있는 인터페이스 컨트롤에 액세스 할 수 있습니다.

예를 들어, 사용 Aspose.Words API, 작업 pane add-in을 추가하고 외관을 사용자 정의 할 수 있습니다.

## 웹 확장 사용

Web Extensions는 Office 애플리케이션의 기능을 확장하고 Office 문서 콘텐츠와 상호 작용하는 도구입니다. Web Extensions는 사용자 경험을 개선하기 위해 Office 클라이언트에게 추가 기능을 제공합니다.

Aspose.Words Task Pane 유형의 Web Extensions 추가 기능을 제공합니다. [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) · [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) 클래스, 또한 팬과 확장 속성을 사용자 정의 할 수 있습니다.

다음 코드 예제는 작업 팬을 만들고 기본 속성으로 웹 확장 작업 팬에 추가하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

작업 pane add-ins의 목록을 보려면 [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) 호텔 위치

다음 코드 예제는 add-ins의 목록을 얻는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

