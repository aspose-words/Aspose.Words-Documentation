---
title: Java의 문서 속성 작업
second_title: Aspose.WordsJava
articleTitle: 문서 속성 작업
linktitle: 문서 속성 작업
description: "Aspose.WordsJava의 경우API및 버전 번호 또는 승인된 날짜와 같은 문서에 대한 유용한 정보를 기본 제공 또는 사용자 지정 문서 속성에 저장할 수 있습니다."
type: docs
weight: 10
url: /ko/java/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

문서 속성을 사용하면 문서에 대한 유용한 정보를 저장할 수 있습니다. 이러한 속성은 두 그룹으로 나눌 수 있습니다:

* 문서 제목,작성자 이름,문서 통계 등과 같은 값을 포함하는 시스템 또는 내장.
* 사용자 정의 또는 사용자 정의,사용자가 이름과 값을 모두 정의할 수 있는 이름-값 쌍으로 제공됩니다.

API및 버전 번호에 대한 정보가 출력 문서에 직접 기록된다는 것을 아는 것이 유용합니다. 예를 들어,문서를PDF로 변환할 때,Aspose.Words은"응용"필드에"Aspose.Words"을 채우고,"PDF생산자"필드에"Aspose.Words에 대한JavaYY을 채운다.*YY.M.N*는 변환에 사용되는Aspose.Words의 버전입니다. 자세한 내용은 참조 [출력 문서에 포함된 생성자 또는 생산자 이름](/words/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

**cannot direct**Aspose.Words출력 문서에서 이 정보를 변경하거나 제거할 수 있습니다.

{{% /alert %}}

## 문서 속성에 액세스

Aspose.Words에서 문서 속성에 액세스하려면 다음을 사용합니다:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties)기본 제공 속성을 얻습니다.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties)사용자 지정 속성을 가져옵니다.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

[DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/)클래스를 사용하면 문서 속성의 이름,값 및 유형을 가져올 수 있습니다. [값 똑바로 https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value)는 객체를 반환하지만,특정 타입으로 속성 값을 변환할 수 있는 메소드 세트가 있습니다. 속성의 유형을 알고 나면**DocumentProperty.**[ToString와 같은**DocumentProperty.ToXXX**메서드 중 하나를 사용할 수 있습니다](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString)및**DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt),적절한 유형의 값을 얻습니다.

다음 코드 예제에서는 문서의 모든 기본 제공 및 사용자 지정 속성을 열거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Microsoft Word에서"파일 속성"메뉴를 사용하여 문서 속성에 액세스 할 수 있습니다.

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## 문서 속성 추가 또는 제거

Aspose.Words을 사용하여 기본 제공 문서 속성을 추가하거나 제거할 수 없습니다. 당신은 그들의 값을 변경하거나 업데이트 할 수 있습니다.

Aspose.Words로 사용자 지정 문서 속성을 추가하려면[Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean)메서드를 사용하여 새 속성 이름과 적절한 형식의 값을 전달합니다. 메서드는 새로 만든**DocumentProperty**개체를 반환합니다.

사용자 지정 속성을 제거하려면[Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String)메서드를 사용하여 제거할 속성 이름을 전달하거나[RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int)메서드를 사용하여 인덱스별로 속성을 제거합니다. [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear)메서드를 사용하여 모든 속성을 제거할 수도 있습니다.

다음 코드 예제에서는 지정된 이름의 사용자 지정 속성이 문서에 있는지 확인하고 몇 가지 사용자 지정 문서 속성을 추가합니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

다음 코드 예제에서는 사용자 지정 문서 속성을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## 기본 제공 문서 속성 업데이트

Aspose.Words는 Microsoft Word이 일부 속성에서 하는 것처럼 문서 속성을 자동으로 업데이트하지 않지만 일부 통계적 내장 문서 속성을 업데이트하는 메서드를 제공합니다. [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) 메서드를 호출하여 다음 속성을 다시 계산하고 업데이트합니다.

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## 콘텐츠에 연결된 새 사용자 지정 속성 만들기

Aspose.Words는 콘텐츠에 연결된 새 사용자 지정 문서 속성을 만드는[AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String)메서드를 제공합니다. 이 속성은[LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent)이 유효하지 않은 경우 새로 만든 속성 개체 또는 널을 반환합니다.

다음 코드 예제에서는 사용자 지정 속성에 대한 링크를 구성하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## 문서 변수 가져오기

[Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables)속성을 사용하여 문서 변수 컬렉션을 가져올 수 있습니다. 변수 이름과 값은 문자열입니다.

다음 코드 예제에서는 문서 변수를 열거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## 문서에서 개인 정보 제거

워드 문서를 다른 사람들과 공유하려는 경우 작성자 이름 및 회사와 같은 개인 정보를 제거 할 수 있습니다. 이렇게 하려면[RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation)속성을 사용하여Microsoft Word이 문서를 저장할 때 주석,개정판 및 문서 속성에서 모든 사용자 정보를 제거한다는 플래그를 설정합니다.

{{% alert color="primary" %}}

이 옵션을 설정하면Aspose.Words에서 문서를 처리하는 동안 실제로 개인 정보가 제거되지 않으며Microsoft Word동작에만 영향을 줍니다.

{{% /alert %}}
