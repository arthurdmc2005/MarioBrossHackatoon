# Super Mario Bros - Recriação do Clássico em Python

## Descrição do Projeto
Este repositório contém a recriação fiel da primeira fase (World 1-1) do jogo Super Mario Bros., desenvolvida em Python utilizando a biblioteca Pygame. O objetivo do projeto é analisar, implementar e otimizar a engine do jogo 2D de plataforma, cobrindo tópicos como física de movimento, detecção de colisões por hitbox, gerenciamento de mapas com tilemaps, controle de câmera e animações de sprites.

O projeto permite praticar habilidades de programação orientada a objetos (POO), arquitetura de jogos 2D, manipulação de eventos e lógica de jogos de plataforma em tempo real.

---

## Estrutura do Projeto
O projeto segue uma arquitetura modular voltada para jogos 2D, dividida entre gerenciamento do loop principal, engine do mundo, entidades do jogo e interface com o usuário:

### Core & Gerenciamento de Estado
Contém a inicialização do jogo e controle dos fluxos de tela:
- **Core**: Classe principal responsável pelo loop do jogo (`main_loop`), controle de taxa de quadros (FPS), captura de entradas do teclado (`input`), atualizações (`update`) e renderização gráfica (`render`).
- **MenuManager / MainMenu / LoadingMenu**: Gerenciam as transições de estado da aplicação (menu principal, tela de carregamento, jogo ativo e término de fase/Game Over).

### Mundo, Câmera e Eventos (Engine)
Gerencia o ambiente 2D e o progresso da fase:
- **Map**: Carrega as fases, gerencia o surgimento de entidades (inimigos, blocos, moedas), detecção de colisões do cenário e integração dos elementos do mapa.
- **Camera**: Controla o rastreamento e a rolagem horizontal da tela (*viewport*) acompanhando o progresso do jogador.
- **Event**: Trata eventos cinemáticos do jogo, como a animação de descida na bandeira de fim de fase ou a transição ao entrar em canos.
- **Sound**: Gerencia o sistema de áudio via `pygame.mixer`, reproduzindo sons de pulo, moedas, power-ups, ataques e músicas de fundo.

### Entidades (Entities)
Representa o jogador e os elementos dinâmicos do cenário:
- **Player**: Controla a física do Mario (gravidade, aceleração, pulo, corrida), estados de transformação (Pequeno, Super Mario e Mario de Fogo), disparo de projéteis e detecção de dano.
- **Entity**: Classe base para objetos e mobis dinâmicos.
- **Goombas / Koopa**: Inimigos com IA de patrulha, mecânica de eliminação por pisotão e comportamento de cascos recuáveis.
- **Mushroom / Flower / Fireball**: Itens de evolução (*power-ups*) e projéteis disparados pelo jogador.
- **Platform / PlatformDebris / CoinDebris / Tube / Flag**: Elementos interagíveis do cenário, incluindo blocos premiados ('?'), tijolos quebráveis, canos e bandeira final.

### Interface & HUD (View / UI)
- **GameUI / Text / DebugTable**: Exibe o cabeçalho (HUD) com pontuação, contador de moedas, mundo atual, tempo restante, contagem de vidas e painel de depuração.

---

## Requisitos
- Python 3.x instalado.
- Dependência das bibliotecas `pygame` e `pytmx`.
- Fonte pixelada `emulogic.ttf` (incluída no diretório `fonts/`).

---

## Funcionalidades do Sistema
- **Física de Plataforma em Tempo Real**: Simulação de gravidade, aceleração progressiva, pulos com variação de altura e limite de velocidade de queda.
- **Sistema de Evolução do Jogador**: Transições de estado dinâmicas (Mario Pequeno $\rightarrow$ Super Mario $\rightarrow$ Mario de Fogo).
- **Mecanismos de Ataque e Colisão**: Disparo de bolas de fogo e eliminação de inimigos com cálculo de colisão por retângulo (`Rect`).
- **Interatividade com o Cenário**: Blocos com surpresa ('?'), blocos quebráveis quando o Mario está grande e canos com teleportes/transições.
- **Câmera Dinâmica**: Rolagem horizontal automática travada ao progresso do jogador sem permitir retorno para a esquerda.
- **Sistema de Pontuação e HUD**: Contagem de tempo regressivo, moedas coletadas, pontuação acumulada e quantidade de vidas.
- **Trilha Sonora e Efeitos**: Efeitos sonoros originais sincronizados com cada ação do jogo.

---

## Como Rodar

1. Clone o repositório:
```bash
git clone https://github.com/josuejuca/Super-Mario-Bros.git
```

2. Acesse o diretório do projeto:
```bash
cd Super-Mario-Bros
```

3. Instale as dependências:
```bash
pip install pygame pytmx
```

4. Execute o jogo:
```bash
python main.py
```

---

## Controles
- **Setas Direcionais ($\leftarrow$ / $\rightarrow$)**: Mover para a esquerda / direita.
- **Seta para Cima ($\uparrow$)**: Pular.
- **Seta para Baixo ($\downarrow$)**: Agachar / Entrar em canos.
- **Shift Esquerdo (LSHIFT)**: Correr / Atirar bolas de fogo.
- **Enter**: Confirmar/Iniciar no menu.

---

## Observações
- O projeto foi desenvolvido com foco educativo para estudo de lógica de jogos 2D, motores de jogos (*game engines*) e orientação a objetos em Python.
- Trata-se de uma recriação sem fins lucrativos inspirada no jogo original Super Mario Bros. da Nintendo.
- Nenhum direito autoral do jogo original é reivindicado; todos os direitos pertencem à Nintendo.

---

## Licença
Projeto destinado exclusivamente para fins educacionais e de estudo de programação.
