# Projeto de Jogo - Nave e Monstros

Este é um jogo simples desenvolvido usando Processing, onde o objetivo é evitar que monstros atinjam sua nave enquanto tenta derrubá-los com tiros.

## Funcionalidades

- **Movimento da Nave:** A nave pode se mover para a esquerda e para a direita usando as teclas `A` e `D`.
- **Disparo de Tiros:** Pressione a barra de espaço para disparar um tiro da nave.
- **Monstros:** Monstros aparecem na parte superior da tela e descem em direção à nave. Cada monstro é reposicionado quando é atingido ou quando sai da tela.
- **Game Over:** Se um monstro atingir a nave, o jogo termina.

## Como Jogar

1. **Mover a Nave:** Use as teclas `A` (esquerda) e `D` (direita) para mover a nave.
2. **Atirar:** Pressione a barra de espaço para disparar um tiro.
3. **Objetivo:** Evite que os monstros alcancem a nave e derrube todos os monstros.

## Instruções de Instalação

1. **Instale o Processing:** Se ainda não o fez, baixe e instale o Processing a partir do [site oficial](https://processing.org/download/).

2. **Configuração do Projeto:**
   - Crie uma nova pasta para o seu projeto.
   - Dentro da pasta do projeto, crie um arquivo com a extensão `.pde` (por exemplo, `main.pde`) e cole o código do projeto nele.
   - Adicione as imagens `pngwing.com.png` e `images.png` à pasta do projeto.

3. **Executar o Jogo:**
   - Abra o Processing e carregue o arquivo `.pde`.
   - Clique no botão "Play" para iniciar o jogo.

## Estrutura do Código

- `setup()`: Inicializa o jogo, configura as imagens e as posições iniciais dos monstros.
- `draw()`: Atualiza a tela a cada frame, controla o movimento da nave, o disparo dos tiros, e o movimento dos monstros.
- `keyPressed()`: Detecta a pressão das teclas e ativa o disparo dos tiros.

## Imagens

- **Imagem da Nave:** `pngwing.com.png`
- **Imagem dos Monstros:** `images.png`

## Créditos

Este projeto foi desenvolvido por Ivanderson Amaral.

