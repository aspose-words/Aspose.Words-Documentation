---
title: Python에서 VBA 매크로 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: VBA 매크로 작업
linktitle: VBA 매크로 작업
description: "Python를 사용하여 문서에서 VBA 매크로를 생성, 읽기, 쓰기, 복제 및 관리합니다."
type: docs
weight: 410
url: /ko/python-net/working-with-vba-macros/
---

Microsoft Word용 VBA(Visual Basic for Application)는 기능을 확장하는 데 사용할 수 있는 간단하지만 강력한 프로그래밍 언어입니다. Aspose.Words API는 VBA 프로젝트 소스 코드에 액세스할 수 있는 세 가지 클래스를 제공합니다

- [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) 클래스는 VBA 프로젝트 정보에 대한 액세스를 제공합니다
- [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) 클래스는 VBA 프로젝트 모듈 컬렉션을 반환합니다
- [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) 클래스는 VBA 프로젝트 모듈에 대한 액세스를 제공합니다
- [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) 열거형은 VBA 프로젝트의 모델 유형을 정의합니다. 모듈은 절차적 모듈, 문서 모듈, 클래스 모듈 또는 디자이너 모듈일 수 있습니다

## VBA 프로젝트 만들기

Aspose.Words API는 문서에서 [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/)를 가져오거나 설정하는 [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) 속성을 제공합니다.

다음 코드 예제에서는 [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) 및 [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/)와 같은 기본 속성과 함께 VBA 프로젝트 및 VBA 모듈을 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## 매크로 읽기

Aspose.Words는 또한 사용자에게 VBA 매크로를 읽을 수 있는 기능을 제공합니다.

다음 코드 예제에서는 문서에서 VBA 매크로를 읽는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## 매크로 작성 또는 수정

Aspose.Words를 사용하면 사용자는 VBA 매크로를 수정할 수 있습니다.

다음 코드 예제에서는 [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/) 속성을 사용하여 VBA 매크로를 수정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## VBA 프로젝트 복제

Aspose.Words를 사용하면 VBA 프로젝트를 복제할 수도 있습니다.

다음 코드 예제에서는 기존 프로젝트의 복사본을 만드는 [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) 속성을 사용하여 VBA 프로젝트를 복제하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## VBA 모듈 복제

필요한 경우 VBA 모듈을 복제할 수도 있습니다.

다음 코드 예제에서는 기존 프로젝트의 복사본을 만드는 [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) 속성을 사용하여 VBA 모듈을 복제하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## VBA 프로젝트 참조 작업

Aspose.Words API는 VBA 프로젝트 참조 모음을 나타내는 VBA 프로젝트 참조 작업을 위한 [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) 클래스를 제공합니다.

다음 코드 예제에서는 VBA 프로젝트의 참조 컬렉션에서 일부 참조를 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}