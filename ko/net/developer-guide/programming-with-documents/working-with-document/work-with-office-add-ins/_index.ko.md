---
title: C#에서 Office 추가 기능 사용
second_title: .NET용 Aspose.Words
articleTitle: Office 추가 기능 사용
linktitle: Office 추가 기능 사용
description: "Aspose.Words for .NET는 C#을 사용하여 Office 추가 기능 작업을 위한 다양한 클래스를 제공합니다. 웹 확장을 통해 작업창을 추가하고 창 및 확장 속성을 사용자 지정할 수 있습니다."
type: docs
weight: 50
url: /ko/net/work-with-office-add-ins/
---

때로는 코드를 실행하여 문서를 수정하는 인터페이스 컨트롤에 대한 액세스 권한을 부여하고 싶을 수도 있습니다. Aspose.Words API는 Office 추가 기능을 나타내기 위해 XML 어휘를 확장하는 요소와 속성을 사용자 정의하기 위한 다양한 클래스를 부여하는 `WebExtensions` 네임스페이스를 제공합니다.

WebExtensions 네임스페이스는 조건에 따라 다음과 같이 나눌 수 있습니다

* 작업창 작업을 위한 개체
* 웹 확장 작업을 위한 개체

## 작업창 사용

작업 창은 Microsoft Word의 창 오른쪽에 표시되는 인터페이스 표면입니다. 작업창을 통해 사용자는 코드를 실행하여 문서를 수정할 수 있는 인터페이스 컨트롤에 액세스할 수 있습니다.

예를 들어 Aspose.Words API를 사용하면 작업창 추가 기능을 추가하고 해당 모양을 사용자 지정할 수 있습니다.

## 웹 확장 사용

웹 확장은 Office 응용 프로그램의 기능을 확장하고 Office 문서 콘텐츠와 상호 작용하는 도구입니다. 웹 확장은 사용자 환경을 개선하기 위해 Office 클라이언트에 추가 기능을 제공합니다.

Aspose.Words는 [WebExtension](https://reference.aspose.com/words/net/aspose.words.webextensions/webextension/) 및 [TaskPane](https://reference.aspose.com/words/net/aspose.words.webextensions/taskpane/) 클래스를 사용하여 작업 창 유형의 웹 확장을 추가하는 기능을 제공하고 창 및 확장 속성을 사용자 지정할 수도 있습니다.

다음 코드 예제에서는 작업창을 만들고 기본 속성을 사용하여 웹 확장 작업창에 추가하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

작업창 추가 기능 목록을 보려면 [WebExtensionTaskPanes](https://reference.aspose.com/words/net/aspose.words/document/webextensiontaskpanes/) 속성을 사용하세요.

다음 코드 예제에서는 이러한 추가 기능 목록을 가져오는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
