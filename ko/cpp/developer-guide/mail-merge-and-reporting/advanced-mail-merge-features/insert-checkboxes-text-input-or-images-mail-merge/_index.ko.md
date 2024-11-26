---
title: 삽입 Checkbox텍스트 입력 또는 이미지 Mail Merge
second_title: Aspose.Words 에 대한 C++
articleTitle: 삽입 Checkbox텍스트 입력 또는 이미지
linktitle: 삽입 Checkbox텍스트 입력 또는 이미지
description: "동안 확인란 또는 텍스트 입력 필드 삽입 Mail Merge 사용 C++. 또한 동안 데이터베이스에서 이미지를 삽입 Mail Merge 그 안에 C++."
type: docs
weight: 40
url: /ko/cpp/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

병합 엔진은 문서를 입력으로 가져 와서 다음을 찾습니다 `MERGEFIELD` 데이터 원본에서 얻은 데이터로 바꿉니다. 일반적으로 일반 텍스트 및 HTML 삽입,하지만 Aspose.Words 사용자는 다음과 같은 경우에 대해 더 특이한 시나리오를 처리하는 문서를 생성할 수도 있습니다 Mail Merge 필드.

강력한 Aspose.Words 기능을 사용하면 확장 할 수 있습니다 Mail Merge 프로세스:

- 확인란 및 텍스트 입력 양식 필드를 문서에 삽입하는 동안 mail merge
- 사용자 지정 저장소(파일)에서 이미지 삽입, BLOB 분야,등.)

## 삽입 Checkbox텍스트 입력 중 Mail Merge

때때로 그것은 수행 할 필요가있다 Mail Merge 병합 필드에 텍스트가 아닌 확인란 또는 텍스트 입력 필드로 대체되도록 작업합니다. 이 시나리오가 가장 일반적인 시나리오는 아니지만 일부 작업에서는 매우 편리합니다.

워드 문서의 다음 스크린샷은 병합 필드가 있는 템플릿을 보여줍니다:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

아래 워드 문서의 이 스크린샷은 이미 생성된 문서를 보여줍니다:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

일부 필드는 일반 텍스트로 대체되었고,일부 필드는 체크박스 양식 필드로 대체되었으며, `Subject` 필드가 텍스트 입력 필드로 대체되었습니다.

{{% /alert %}}

다음 코드 예제에서는 확인란과 입력 텍스트 필드를 문서에 삽입하는 방법을 보여 줍니다 mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-HandleMergeField.cpp" >}}

## 동안 이미지 삽입 Mail Merge

수행 할 때 Mail Merge 작업,당신은 특별한 이미지를 사용하여 문서에 데이터베이스에서 이미지를 삽입 할 수 있습니다 Mail Merge 필드. 이미지 Mail Merge 필드는 이미지라는 이름의 병합 필드입니다.:MyFieldName.

### 데이터베이스에서 이미지 삽입

동안 mail merge,때 이미지 Mail Merge 필드가 문서에서 발견됩니다. [FieldMergingCallback](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_fieldmergingcallback/) 이벤트가 해고되었습니다. 이 이벤트에 응답하여 파일 이름,스트림 또는 이미지 개체를 반환 할 수 있습니다. Mail Merge 엔진 그래서 문서에 삽입 할 수 있습니다.

다음 코드 예제에서는 데이터베이스에 저장된 이미지를 삽입하는 방법을 보여 줍니다 BLOB 보고서에 필드:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageInsert.cpp" >}}

### 동안 이미지 속성 설정 Mail Merge

이미지 병합 필드를 병합하는 동안 다음과 같은 다양한 이미지 속성을 제어해야 할 수도 있습니다 [WrapType](https://reference.aspose.com/words/cpp/aspose.words.drawing/wraptype/).

현재,사용 [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/class/aspose.words.mail_merging.image_field_merging_args) 이미지 너비 또는 높이 속성 만 각각 설정할 수 있습니다. 이 문제를 극복하기 위해, Aspose.Words 제공 [Shape](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/get_shape/) 삽입 된 이미지 또는 다른 모양을 완벽하게 제어 할 수 용이 속성.

다음 코드 예제에서는 다양한 이미지 속성을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageField.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-DataSourceRoot.cpp" >}}
