---
title: 필드 속성을 찾는 방법
second_title: Aspose.Words 에 대한 C++
articleTitle: 필드 속성 찾기
linktitle: 필드 속성 찾기
description: "필드 코드 및 필드 결과와 같은 일부 필드 속성을 찾는 방법 C++."
type: docs
weight: 25
url: /ko/cpp/find-field-properties/
---

다음을 사용하여 삽입되는 필드 [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) 반환 [Field](https://reference.aspose.com/words/cpp/aspose.words.fields/field/) 객체 이 클래스는 필드의 일부 속성을 빠르게 찾는 데 유용한 메서드를 제공하는 파사드 클래스입니다.

다음 코드 예제에서는 필드 코드 및 필드 결과를 찾는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsCode.cpp" >}}

참고 문서에서 병합 필드의 이름만 찾는 경우 기본 제공 대신 사용할 수 있습니다 [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/) 방법

다음 코드 예제에서는 문서에서 모든 병합 필드의 이름을 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}