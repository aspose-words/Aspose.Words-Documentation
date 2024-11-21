---
title: 라이선스 및 구독
second_title: Python via .NET용 Aspose.Words
articleTitle: 라이선스 및 구독
linktitle: 라이선스 및 구독
description: "Python via .NET용 Aspose.Words는 다양한 구매 계획을 제공하거나 라이센스 및 구독 정책을 사용하여 평가할 수 있는 무료 평가판과 30일 임시 라이센스를 제공합니다."
type: docs
weight: 40
url: /ko/python-net/licensing/
timestamp: 2024-01-31-14-23-37
---

때로는 시스템을 더 잘 연구하기 위해 가능한 한 빨리 코드를 살펴보고 싶을 때가 있습니다. 이를 더 쉽게 하기 위해 Aspose.Words는 다양한 구매 계획을 제공하거나 무료 평가판 및 평가용 30일 임시 라이센스를 제공합니다.

{{% alert color="primary" %}}

당사 제품을 평가하고, 적절한 라이선스를 취득하고, 구매하는 방법을 안내하는 다양한 일반 정책 및 관행이 있습니다. [구매 정책 및 FAQ](https://purchase.aspose.com/policies/) 섹션에서 찾을 수 있습니다.

{{% /alert %}}

## 무료 평가판 또는 임시 라이센스

Aspose.Words는 개발자가 구매하기 전에 사용해 볼 수 있는 놀라운 소프트웨어입니다.

### 무료 시험판

평가판은 구입한 버전과 동일합니다. 평가판은 라이센스를 적용하기 위해 몇 줄의 코드를 추가하면 라이센스가 부여됩니다.

지정된 라이센스가 없는 Aspose.Words 평가판은 전체 제품 기능을 제공하지만 로드 및 저장 시 문서 상단에 평가 워터마크를 삽입하고 최대 문서 크기를 수백 단락으로 제한합니다.

### 임시면허

평가판의 제한 없이 Aspose.Words를 테스트하고 싶다면 30일 임시 라이센스를 요청할 수도 있습니다. 자세한 내용은 [임시 라이센스 받기](https://purchase.aspose.com/temporary-license/) 페이지를 참조하세요.

## 구매한 라이센스

구매 후 라이선스 파일이나 스트림을 적용해야 합니다. 이 섹션에서는 이를 수행하는 방법에 대한 옵션과 몇 가지 일반적인 질문에 대한 설명을 설명합니다.

{{% alert color="primary" %}}

라이센스를 설정해야 합니다:

* 애플리케이션 도메인당 한 번만 가능

* 다른 Aspose.Words 클래스를 사용하기 전

{{% /alert %}}

{{% alert color="primary" %}}

[가격 정보](https://purchase.aspose.com/pricing/words/family/) 페이지에서 가격 정보를 확인할 수 있습니다.

{{% /alert %}}

### 구입한 라이센스 보호

라이센스를 구매한 후 [구입한 라이센스 보호](https://purchase.aspose.com/orders/protecting-your-license-file) 페이지의 정보를 주의 깊게 읽어 라이센스 파일을 보호해야 합니다. 이 페이지는 유료 라이센스가 있는 경우에만 볼 수 있습니다.

### 라이센스 적용 옵션

라이선스는 다양한 위치에서 적용할 수 있습니다

* 명시적 경로
* Python via .NET용 Aspose.Words를 호출하는 Python 스크립트가 포함된 폴더
* 개울
* 계량 라이센스 – 새로운 라이센스 메커니즘

{{% alert color="primary" %}}

[set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) 방법을 사용하여 구성 요소에 대한 라이선스를 부여합니다.

[set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/)를 여러 번 호출하는 것은 해롭지 않으며 단지 프로세서 시간을 낭비할 뿐입니다.

[set_metered_key](https://reference.aspose.com/words/python-net/aspose.words/metered/set_metered_key/#str_str)를 여러 번 호출하는 것도 해롭지는 않지만 프로세서 시간만 낭비하고 소비가 부적절하게 누적될 수 있습니다.

{{% /alert %}}

#### 파일 또는 스트림 개체를 사용하여 라이선스 적용

애플리케이션을 개발할 때 Aspose.Words 클래스를 사용하기 전에 시작 코드에서 [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/)를 호출하세요.

##### 파일에서 라이센스 로드

[set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) 방법을 사용하면 추가 사용을 위해 포함된 리소스 또는 어셈블리 폴더에서 라이센스 파일을 찾을 수 있습니다.

다음 코드 예제에서는 폴더에서 라이선스를 초기화하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-file.py" >}}

##### `Stream` 개체에서 라이센스 로드

다음 코드 예제는 다른 [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) 메서드를 사용하여 스트림에서 라이선스를 초기화하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-stream.py" >}}

#### 계량 라이센스 적용

Aspose.Words를 사용하면 개발자가 계량 키를 적용할 수 있습니다. 이는 새로운 라이센스 메커니즘입니다.

새로운 라이센스 메커니즘은 기존 라이센스 방법과 함께 사용됩니다. API 기능 사용에 따라 비용을 청구하려는 고객은 Metered Licensing을 사용할 수 있습니다.

이 유형의 라이센스를 얻기 위해 필요한 모든 단계를 완료하면 라이센스 파일이 아닌 키를 받게 됩니다. 이 측정 키는 이 목적을 위해 특별히 도입된 [Metered](https://reference.aspose.com/words/python-net/aspose.words/metered/) 클래스를 사용하여 적용할 수 있습니다.

이 라이선싱 방식이 제대로 소모되어 보고되도록 **SetMeteredKey** 방식을 자주 호출하지 마세요. Aspose.Words 라이브러리를 인스턴스화하고 **SetMeteredKey**를 한 번 호출한 다음 라이브러리를 인스턴스화된 상태로 두고 재사용하세요.

다음 코드 예제에서는 측정된 공개 키와 개인 키를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-metered-license.py" >}}

{{% alert color="primary" %}}

측정 라이선스를 올바르게 사용하려면 안정적인 인터넷 연결이 필요합니다. 측정 메커니즘은 정확한 계산을 위해 당사 서비스와 지속적인 상호 작용을 필요로 하기 때문입니다. 자세한 내용은 [측정된 라이선스 FAQ](https://purchase.aspose.com/faqs/licensing/metered/) 섹션을 참조하세요.

{{% /alert %}}

### 라이센스 파일 이름 변경

라이센스 파일 이름은 "Aspose.Words.Python.NET.lic"일 필요는 없습니다. 원하는 대로 이름을 바꾸고 애플리케이션에서 라이센스를 설정할 때 해당 이름을 사용할 수 있습니다.

### "라이센스 파일 이름을 찾을 수 없습니다" 예외

라이선스를 구매하고 다운로드하면 Aspose 웹사이트에서는 라이선스 파일 이름을 *"Aspose.Words.Python.NET.lic"*로 지정합니다. 브라우저를 사용하여 라이센스 파일을 다운로드합니다. 이 경우 일부 브라우저는 라이센스 파일을 XML로 인식하고 .xml 확장자를 추가하므로 컴퓨터의 전체 파일 이름은 *"Aspose.Words.Python.NET.lic.XML"*이 됩니다.

Microsoft Windows가 알려진 파일 형식에 대한 확장자를 숨기도록 구성되면(불행히도 이것이 대부분의 Windows 설치에서 기본값임) 라이센스 파일은 Windows 탐색기에서 *"Aspose.Words.Python.NET.lic"*로 나타납니다. 아마도 이것이 실제 파일 이름이라고 생각하고 이를 *"Aspose.Words.Python.NET.lic"*로 전달하여 [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/)를 호출할 것입니다. 그러나 그러한 파일이 없으므로 예외입니다.

문제를 해결하려면 파일 이름을 바꿔 보이지 않는 .xml 확장자를 제거하세요. 또한 Microsoft Windows에서 "확장자 숨기기" 옵션을 비활성화하는 것이 좋습니다.

## 여러 Aspose 제품 사용

Aspose.Words 및 `Aspose.Cells`와 같은 여러 Aspose 제품을 애플리케이션에서 사용하는 경우 다음은 몇 가지 유용한 팁입니다

* 각 Aspose 제품에 대한 라이선스를 별도로 설정하세요. 예를 들어 "Aspose.Total.lic"와 같이 모든 구성 요소에 대한 단일 라이선스 파일이 있더라도 애플리케이션에서 사용하는 각 Aspose 제품에 대해 별도로 [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/)를 호출해야 합니다.
* 정규 라이센스 클래스 이름을 사용하십시오. 각 Aspose 제품에는 자체 네임스페이스에 **License** 클래스가 있습니다. 예를 들어 Aspose.Words에는 [aspose.words.License](https://reference.aspose.com/words/python-net/aspose.words/license/)이 있고 `Aspose.Cells`에는 **aspose.cells.License** 클래스가 있습니다. 정규화된 클래스 이름을 사용하면 어떤 라이센스가 어떤 제품에 적용되는지에 대한 혼동을 피할 수 있습니다.
