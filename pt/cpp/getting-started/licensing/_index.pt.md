---
title: Licenciamento e subscrição
second_title: Aspose.Words Para C++
articleTitle: Licenciamento e subscrição
linktitle: Licenciamento e subscrição
description: "Aspose.Words Para O7 fornece planos diferentes para compra ou oferece uma avaliação gratuita e uma licença temporária de 30 dias para avaliação usando Políticas de licenciamento e assinatura."
type: docs
weight: 60
url: /pt/cpp/licensing/
---

Às vezes, para estudar melhor o sistema, você deseja mergulhar no código o mais rápido possível. Para tornar isso mais fácil, Aspose.Words fornece planos diferentes para compra ou oferece uma avaliação gratuita e uma licença temporária de 30 dias para avaliação.

{{% alert color="primary" %}}

Observe que há uma série de políticas e práticas gerais que orientam você sobre como avaliar, licenciar e comprar adequadamente nossos produtos. Você pode encontrá-los no [Políticas de compra e FAQ](https://purchase.aspose.com/policies/) secção.

{{% /alert %}}

## Avaliação gratuita ou licença temporária

Aspose.Words é um software incrível que os desenvolvedores podem experimentar antes de comprar.

### Avaliação Gratuita

A versão de avaliação é a mesma que a adquirida – o [Versão de avaliação](https://releases.aspose.com/words/) simplesmente se torna licenciado quando você adiciona algumas linhas de código para aplicar a licença.

A versão de Avaliação de Aspose.Words sem a licença especificada fornece funcionalidade completa do produto, mas insere uma marca d'água avaliativa na parte superior do documento ao carregar e salvar e limita o tamanho máximo do documento a algumas centenas de parágrafos.

### Licença Temporária

Se você deseja testar Aspose.Words sem as limitações da versão de Avaliação, também pode solicitar uma licença temporária de 30 dias. Para mais detalhes, ver o [Obter uma licença temporária](https://purchase.aspose.com/temporary-license/) página.

## Licença Adquirida

Após a compra, você precisa aplicar o arquivo de licença ou incluir o arquivo de licença como um recurso incorporado. Esta secção descreve as opções de como isso pode ser feito e também comenta algumas questões comuns.

{{% alert color="primary" %}}

Você precisa definir a licença:

* apenas uma vez por domínio de Aplicação
* antes de usar qualquer outra classe Aspose.Words

{{% /alert %}}

{{% alert color="primary" %}}

Você pode encontrar informações sobre preços no [Informações Sobre Preços](https://purchase.aspose.com/pricing/words/family/) página.

{{% /alert %}}

### Protegendo Sua Licença Adquirida

Depois de adquirir uma licença, você precisa ler atentamente as informações na página [Protegendo Sua Licença Adquirida](https://purchase.aspose.com/orders/protecting-your-license-file) para proteger o seu ficheiro de licença. Observe que esta página está disponível para visualização apenas se você tiver uma licença paga.

### Opções De Aplicação De Licença

As licenças podem ser aplicadas a partir de vários locais:

* Caminho explícito
* A pasta que contém o ficheiro `Aspose.Words_\*.dll`
* A pasta que contém o assembly que chamou `Aspose.Words_\*.dll`
* A pasta que contém o conjunto de entrada (Seu `.exe`)
* Um recurso incorporado no assembly é chamado `Aspose.Words_\*.dll`

Muitas vezes, a maneira mais fácil de definir uma licença é colocar o arquivo de licença na mesma pasta que `Aspose.Words_\*.dll` e especificar apenas o nome do arquivo sem o caminho.

{{% alert color="primary" %}}

Use o método [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) para licenciar um componente.

Chamar **SetLicense** várias vezes não é prejudicial, apenas desperdiça tempo do processador.

{{% /alert %}}

#### Aplicar licença usando um objeto File ou Stream

Ao desenvolver seu aplicativo, Chame **SetLicense** em seu código de inicialização antes de usar as classes Aspose.Words.

##### Carregar uma licença de um ficheiro

Usando o método [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/), você pode tentar encontrar o arquivo de licença nas pastas recursos incorporados ou assembly para uso posterior.

O exemplo de código a seguir mostra como inicializar uma licença de uma pasta:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-file.h" >}}

##### Carregar uma licença de um objeto Stream

O exemplo de código a seguir mostra como inicializar uma licença de um fluxo usando outro método [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-stream.h" >}}

#### Incluir o ficheiro de licença como um recurso incorporado

Uma ótima maneira de empacotar uma licença com seu aplicativo e garantir que ela não seja perdida é incluí-la como um recurso incorporado. A forma como incorporar e utilizar os recursos depende da sua plataforma de destino.

##### Windows

Vamos supor que você tenha adicionado a licença como um recurso, conforme mostrado abaixo.

```
resource.h
#define IDR_ASPOSE_WORDS_LIC            101
```

```
resource.rc
IDR_ASPOSE_WORDS_LIC RCDATA "Aspose.Words.Cpp.lic"
```

{{% alert color="primary" %}}

Você pode ler sobre como trabalhar com arquivos de recursos no [Trabalhar com Ficheiros de recursos](https://docs.microsoft.com/en-us/cpp/windows/working-with-resource-files?view=msvc-160) página.

{{% /alert %}}

O exemplo de código a seguir mostra como inicializar uma licença de um recurso incorporado usando o método [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-windows.h" >}}

##### Linux

Existe uma maneira semelhante de incorporar recursos em Linux em um executável.

{{% alert color="primary" %}}

Para mais informações, ver [Incorporação de recursos no executável usando GCC](https://stackoverflow.com/questions/4158900/embedding-resources-in-executable-using-gcc/4158997#4158997).

{{% /alert %}}

O exemplo de código de código a seguir mostra como inicializar uma licença de um recurso incorporado usando o método [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-linux.h" >}}

### Alterar o nome do ficheiro de licença

O nome do ficheiro da licença não tem de ser "Aspose.Words.LIC". Você pode renomeá-lo ao seu gosto e usar esse nome ao definir uma licença em seu aplicativo.

### Exceção "não é possível encontrar o nome do arquivo da licença"

Quando você compra e baixa uma licença, o site da Aspose nomeia o arquivo de licença *"Aspose.Words.LIC"*. Você baixa o arquivo de licença usando seu navegador. Neste caso, alguns browsers reconhecem o ficheiro de licença como XML e acrescentam-no .extensão xml para ele, então o nome completo do arquivo no seu computador se torna *"Aspose.Words.lic.XML"*.

Quando Microsoft Windows estiver configurado para Ocultar extensões para tipos de arquivo conhecidos (infelizmente, este é o padrão na maioria das instalações Windows), o arquivo de licença aparecerá como *"Aspose.Words. LIC"* em Windows Explorer. Você provavelmente pensará que este é o nome real do arquivo e chamará **SetLicense** passando-o *"Aspose.Words.LIC"*, mas não existe esse arquivo, daí a exceção.

Para resolver o problema, renomeie o arquivo para remover o invisível .extensão xml. Também recomendamos que desative a opção" Ocultar extensões " em Microsoft Windows.

## Utilização De Vários Produtos Aspose

Se você usar vários produtos Aspose em sua aplicação, como Aspose.Words e `Aspose.Cells`, Aqui estão algumas dicas úteis:

* Defina a licença para cada produto Aspose separadamente. Mesmo que você tenha um único arquivo de licença para todos os componentes, por exemplo, "Aspose.Total.lic", você ainda precisa chamar **SetLicense** separadamente para cada produto Aspose que você usa em seu aplicativo.
* Use o nome da classe de licença totalmente qualificado. Cada produto Aspose tem uma classe **License** no seu próprio namespace. Por exemplo, Aspose.Words tem [Aspose.Words.License](https://reference.aspose.com/words/cpp/aspose.words/license/) e `Aspose.Cells` tem `Aspose.Cells`.Classe de licença. O uso do nome de classe totalmente qualificado permite evitar confusão sobre qual licença se aplica a qual produto.
