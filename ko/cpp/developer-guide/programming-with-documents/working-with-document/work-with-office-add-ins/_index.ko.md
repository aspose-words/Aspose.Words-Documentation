---
title: 사무실 추가 기능 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 사무실 추가 기능 작업
linktitle: 사무실 추가 기능 작업
description: "Aspose.Words 에 대한 C++ 사무실 추가 기능 작업을 위한 다양한 클래스를 제공합니다. 당신은 웹 확장을 통해 작업 창을 추가하고 창 및 확장 속성을 사용자 정의 할 수 있습니다."
type: docs
weight: 50
url: /ko/cpp/work-with-office-add-ins/
---

때로는 문서를 수정하기 위해 코드를 실행하는 인터페이스 컨트롤에 대한 액세스 권한을 부여 할 수 있습니다. Aspose.Words API 제공 `WebExtensions` 네임스페이스는 다양한 클래스를 부여하여 요소와 속성을 사용자 정의합니다. XML 사무실 추가 기능을 나타내는 어휘.

WebExtensions 네임스페이스는 조건부로 다음과 같이 나눌 수 있습니다:

* 작업 창 작업을 위한 개체
* 웹 확장 작업을 위한 개체

## 작업 창 사용

작업 창은 창의 오른쪽에 표시되는 인터페이스 화면입니다. Microsoft Word. 작업 창에서는 사용자가 코드를 실행하여 문서를 수정할 수 있는 인터페이스 컨트롤에 액세스할 수 있습니다.

예를 들어, Aspose.Words API,작업 창 추가 기능을 추가하고 모양을 사용자 지정할 수 있습니다.

## 웹 확장 사용

웹 확장은 오피스 응용 프로그램의 기능을 확장하고 오피스 문서 콘텐츠와 상호 작용하는 도구입니다. 웹 확장은 사용자 경험을 개선하기 위해 오피스 클라이언트에 추가 기능을 제공합니다.

Aspose.Words 다음을 사용하여 작업 창 유형의 웹 확장을 추가할 수 있는 기능을 제공합니다 [WebExtension](https://reference.aspose.com/words/cpp/aspose.words.webextensions/webextension/) 그리고 [TaskPane](https://reference.aspose.com/words/cpp/aspose.words.webextensions/taskpane/) 또한 창 및 확장 속성을 사용자 정의 할 수 있습니다.

다음 코드 예제에서는 작업 창을 만들고 기본 속성을 사용하여 웹 확장 작업 창에 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cpp" >}}

작업 창 추가 기능 목록을 보려면 다음을 사용합니다 [WebExtensionTaskPanes](https://reference.aspose.com/words/cpp/aspose.words/document/get_webextensiontaskpanes/) 재산.

다음 코드 예제에서는 이러한 추가 기능 목록을 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-GetListOfAddins.cpp" >}}
