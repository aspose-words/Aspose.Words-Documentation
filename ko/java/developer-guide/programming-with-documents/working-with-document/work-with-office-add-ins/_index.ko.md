---
title: Java에서 사무실 추가 기능으로 작업
second_title: Aspose.WordsJava
articleTitle: 사무실 추가 기능 작업
linktitle: 사무실 추가 기능 작업
description: "Aspose.Words에 대한Java사무실 추가 기능 작업을위한 다양한 클래스를 제공합니다. 당신은 웹 확장을 통해 작업 창을 추가하고 창 및 확장 속성을 사용자 정의 할 수 있습니다."
type: docs
weight: 50
url: /ko/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

때로는 문서를 수정하기 위해 코드를 실행하는 인터페이스 컨트롤에 대한 액세스 권한을 부여 할 수 있습니다. Aspose.WordsAPI는`WebExtensions`네임스페이스를 제공하며,이는XML어휘를 확장하여 오피스 추가 기능을 나타내는 요소와 속성을 사용자 정의하기 위해 다양한 클래스를 부여합니다.

WebExtensions네임스페이스는 조건부로 다음과 같이 나눌 수 있습니다:

* 작업 창 작업을 위한 개체
* 웹 확장 작업을 위한 개체

## 작업 창 사용

작업 창은Microsoft Word에서 창의 오른쪽에 표시되는 인터페이스 표면입니다. 작업 창에서는 사용자가 코드를 실행하여 문서를 수정할 수 있는 인터페이스 컨트롤에 액세스할 수 있습니다.

예를 들어Aspose.WordsAPI을 사용하여 작업 창 추가 기능을 추가하고 모양을 사용자 지정할 수 있습니다.

## 웹 확장 사용

웹 확장은 오피스 응용 프로그램의 기능을 확장하고 오피스 문서 콘텐츠와 상호 작용하는 도구입니다. 웹 확장은 사용자 경험을 개선하기 위해 오피스 클라이언트에 추가 기능을 제공합니다.

Aspose.Words는[WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/)및[TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/)클래스를 사용하여 작업 창 유형의 웹 확장을 추가할 수 있는 기능을 제공하며 창 및 확장 속성을 사용자 지정할 수도 있습니다.

다음 코드 예제에서는 작업 창을 만들고 기본 속성을 사용하여 웹 확장 작업 창에 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

작업 창 추가 기능 목록을 보려면[WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes)속성을 사용합니다.

다음 코드 예제에서는 이러한 추가 기능 목록을 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

