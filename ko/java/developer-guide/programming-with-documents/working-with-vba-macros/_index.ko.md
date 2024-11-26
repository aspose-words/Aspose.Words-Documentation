---
title: Java에서VBA매크로로 작업
second_title: Aspose.WordsJava
articleTitle: VBA매크로 작업
linktitle: VBA매크로 작업
description: "Java을 사용하여 문서VBA프로젝트로 작업합니다."
type: docs
weight: 410
url: /ko/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word에 대한Visual Basic응용 프로그램(VBA)은 기능을 확장하는 데 사용할 수있는 간단하지만 강력한 프로그래밍 언어입니다. Aspose.WordsAPIVBA프로젝트 소스 코드에 액세스 할 수있는 세 가지 클래스를 제공합니다:

- [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/)클래스는VBA프로젝트 정보에 대한 액세스를 제공합니다
- [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/)클래스는VBA프로젝트 모듈의 컬렉션을 반환합니다
- [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/)클래스는VBA프로젝트 모듈에 대한 액세스를 제공합니다

## VBA프로젝트 만들기

Aspose.WordsAPI는 문서에서VbaProject를 가져오거나 설정할[VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject)속성을 제공합니다.

다음 코드 예제에서는 이름 및 형식과 같은 기본 속성과 함께VBA프로젝트 및VBA모듈을 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## 매크로 읽기

Aspose.Words은 또한 사용자에게VBA매크로를 읽을 수 있는 기능을 제공합니다.

다음 코드 예제에서는 문서에서VBA매크로를 읽는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## 매크로 수정

Aspose.Words을 사용하여 사용자는VBA매크로를 수정할 수 있습니다.

다음 코드 예제에서는[SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode)속성을 사용하여VBA매크로를 수정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## VBA프로젝트 복제

Aspose.Words을 사용하면VBA프로젝트를 복제할 수도 있습니다.

다음 코드 예제에서는 기존 프로젝트의 복사본을 만드는[Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone)속성을 사용하여VBA프로젝트를 복제하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## 복제VBA모듈

필요한 경우VBA모듈을 복제 할 수도 있습니다.

다음 코드 예제에서는 기존 프로젝트의 복사본을 만드는[Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone)속성을 사용하여VBA모듈을 복제하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
