---
title: Licenciamento e Assinatura
second_title: Aspose.Words para .NET
articleTitle: Licenciamento e Assinatura
linktitle: Licenciamento e Assinatura
description: "Aspose.Words for .NET oferece diferentes planos de compra ou oferece uma avaliação gratuita e uma licença temporária de 30 dias para avaliação usando políticas de licenciamento e assinatura em C#."
type: docs
weight: 55
url: /pt/net/licensing/
timestamp: 2024-10-24-11-44-28
---

Às vezes, para estudar melhor o sistema, você deseja mergulhar no código o mais rápido possível. Para facilitar isso, o Aspose.Words oferece diversos planos de compra ou oferece uma avaliação gratuita e uma licença temporária de 30 dias para avaliação.

{{% alert color="primary" %}}

Observe que há uma série de políticas e práticas gerais que orientam você sobre como avaliar, licenciar adequadamente e adquirir nossos produtos. Você pode encontrá-los na seção [Políticas de compra e perguntas frequentes](https://purchase.aspose.com/policies/).

{{% /alert %}}

## Avaliação Gratuita ou Licença Temporária

Aspose.Words é um software incrível que os desenvolvedores podem experimentar antes de comprar.

### Teste grátis

A versão de avaliação é igual à comprada – o [Versão de teste](https://releases.aspose.com/words/) simplesmente se torna licenciado quando você adiciona algumas linhas de código para aplicar a licença.

A versão de avaliação do Aspose.Words sem a licença especificada fornece funcionalidade completa do produto, mas insere uma marca d'água avaliativa na parte superior do documento ao carregar e salvar e limita o tamanho máximo do documento a algumas centenas de parágrafos.

### Licença Temporária

Se desejar testar o Aspose.Words sem as limitações da versão de teste, você também pode solicitar uma licença temporária de 30 dias. Para mais detalhes, consulte a página [Obtenha uma licença temporária](https://purchase.aspose.com/temporary-license/).

## Licença adquirida

Após a compra, você precisa aplicar o arquivo de licença ou incluí-lo como um recurso incorporado. Esta seção descreve opções de como isso pode ser feito e também comenta algumas questões comuns.

{{% alert color="primary" %}}

Você precisa definir a licença:

* apenas uma vez por domínio de aplicativo

* antes de usar qualquer outra classe Aspose.Words

{{% /alert %}}

{{% alert color="primary" %}}

Você pode encontrar informações sobre preços na página [Informações sobre preços](https://purchase.aspose.com/pricing/words/family/).

{{% /alert %}}

### Protegendo sua licença adquirida

Após adquirir uma licença, você precisa ler atentamente as informações na página [Protegendo sua licença adquirida](https://purchase.aspose.com/orders/protecting-your-license-file) para proteger seu arquivo de licença. Observe que esta página está disponível para visualização somente se você tiver uma licença paga.

### Opções de aplicação de licença

As licenças podem ser aplicadas em vários locais:

* Caminho explícito
* A pasta que contém o arquivo *Aspose.Words.dll*
* A pasta que contém o assembly que chamou *Aspose.Words.dll*
* A pasta que contém o assembly de entrada (seu *.exe*)
* Um recurso incorporado no assembly é chamado *Aspose.Words.dll*
* Como Licença Medida – um novo mecanismo de licenciamento

Quando você faz referência a *Aspose.Words.dll* no aplicativo, a biblioteca é copiada para seu diretório de saída (a menos que *Copy Local* nas propriedades dessa entrada esteja definido como false). Freqüentemente, a maneira mais fácil de definir uma licença é colocar o arquivo de licença na mesma pasta do *Aspose.Words.dll* e especificar apenas o nome do arquivo sem o caminho.

{{% alert color="primary" %}}

Use o método [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/#setlicense) para licenciar um componente.

Chamar **SetLicense** várias vezes não é prejudicial, apenas desperdiça tempo do processador.

Chamar [SetMeteredKey](https://reference.aspose.com/words/net/aspose.words/metered/setmeteredkey/) diversas vezes também não é prejudicial, apenas desperdiça tempo do processador e pode acumular consumo de forma inadequada.

{{% /alert %}}

#### Aplicar licença usando um arquivo ou objeto de fluxo

Ao desenvolver seu aplicativo, chame **SetLicense** em seu código de inicialização antes de usar classes Aspose.Words.

##### Carregar uma licença de um arquivo

Usando o método [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/), você pode tentar encontrar o arquivo de licença nos recursos incorporados ou nas pastas de montagem para uso posterior.

O exemplo de código a seguir mostra como inicializar uma licença de uma pasta:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-file.cs" >}}

##### Carregar uma licença de um objeto Stream

O exemplo de código a seguir mostra como inicializar uma licença de um fluxo usando outro método [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-stream.cs" >}}

#### Incluir o arquivo de licença como um recurso incorporado

Uma maneira bacana de empacotar uma licença com seu aplicativo e garantir que ela não será perdida é incluí-la como um recurso incorporado em um dos assemblies que chamam Aspose.Words. Para incluir um arquivo como recurso incorporado, siga estas etapas:

1. No Visual Studio, inclua o arquivo .lic no projeto através do menu "**Arquivo | Adicionar item existente…**".
2. Selecione o arquivo no Solution Explorer e defina "**Construir ação para recurso incorporado"** na janela Propriedades.
3. Em seu código, invoque **SetLicense** que transmite apenas o nome abreviado do arquivo de recurso.

#### Aplicar licença medida

Aspose.Words permite que os desenvolvedores apliquem uma chave medida. Este é um novo mecanismo de licenciamento.

O novo mecanismo de licenciamento será utilizado juntamente com o método de licenciamento existente. Os clientes que desejam ser cobrados com base no uso dos recursos API podem usar o Licenciamento Medido.

Após concluir todas as etapas necessárias para obter este tipo de licença, você receberá as chaves e não o arquivo de licença. Esta chave medida pode ser aplicada usando a classe [Metered](https://reference.aspose.com/words/net/aspose.words/metered/) especialmente introduzida para este propósito.

Não chame o método **SetMeteredKey** com frequência para que este método de licenciamento acumule adequadamente o consumo e nos reporte. Basta instanciar a biblioteca Aspose.Words, chamar o **SetMeteredKey** uma vez, deixar a biblioteca instanciada e reutilizá-la.

O exemplo de código a seguir mostra como definir chaves públicas e privadas limitadas:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-metered-license.cs" >}}

Normalmente é suficiente aplicar a licença limitada uma vez no início da aplicação. No entanto, se o mecanismo de licenciamento medido não conseguir se comunicar com os servidores Aspose por 24 horas, o Aspose.Words sairá do modo licenciado e mudará para o modo de avaliação. Para evitar tal caso, você deve verificar regularmente o status da licença – se o Aspose.Words passar para o modo de avaliação, aplique a licença medida novamente.

{{% alert color="primary" %}}

Observe que você deve ter uma conexão estável à Internet para o uso correto da licença Metered, pois o mecanismo Metered requer interação constante com nossos serviços para cálculos corretos. Para obter mais detalhes, consulte a seção [Perguntas frequentes sobre licenciamento medido](https://purchase.aspose.com/faqs/licensing/metered/).

{{% /alert %}}

### Alterando o nome do arquivo de licença

O nome do arquivo de licença não precisa ser "Aspose.Words.LIC". Você pode renomeá-lo como desejar e usar esse nome ao definir uma licença em seu aplicativo.

### Exceção "Não é possível encontrar o nome do arquivo de licença"

Quando você compra e baixa uma licença, o site Aspose nomeia o arquivo de licença *"Aspose.Words.LIC"*. Você baixa o arquivo de licença usando seu navegador. Neste caso, alguns navegadores reconhecem o arquivo de licença como XML e acrescentam a extensão .xml a ele, de modo que o nome completo do arquivo em seu computador se torna *"Aspose.Words.lic.XML"*.

Quando Microsoft Windows estiver configurado para ocultar extensões de tipos de arquivos conhecidos (infelizmente, esse é o padrão na maioria das instalações Windows), o arquivo de licença aparecerá como *"Aspose.Words. LIC"* no Windows Explorer. Você provavelmente pensará que este é o nome real do arquivo e chamará **SetLicense** passando-o *"Aspose.Words.LIC"*, mas tal arquivo não existe, daí a exceção.

Para resolver o problema, renomeie o arquivo para remover a extensão .xml invisível. Também recomendamos que você desative a opção "ocultar extensões" em Microsoft Windows.

## Usando vários produtos Aspose

Se você usa vários produtos Aspose em seu aplicativo, como Aspose.Words e `Aspose.Cells`, aqui estão algumas dicas úteis:

* Defina a licença para cada produto Aspose separadamente. Mesmo se você tiver um único arquivo de licença para todos os componentes, por exemplo, "Aspose.Total.lic", ainda precisará chamar o **SetLicense** separadamente para cada produto Aspose usado em seu aplicativo.
* Use o nome da classe de licença totalmente qualificada. Cada produto Aspose possui uma classe **License** em seu próprio namespace. Por exemplo, Aspose.Words possui [Aspose.Words.License](https://reference.aspose.com/words/net/aspose.words/license/) e `Aspose.Cells` possui a classe `Aspose.Cells`.License. Usar o nome de classe totalmente qualificado permite evitar confusão sobre qual licença se aplica a qual produto.
