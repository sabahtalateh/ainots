# Предел последовательности

Коши разработал два строгих определения предела: **$\varepsilon-N$** для последовательностей (дискретная переменная $n \in \mathbb{N}$) и **$\varepsilon-\delta$** для функций (непрерывная переменная $x \in \mathbb{R}$). Первое используется, когда переменная принимает только целые значения ($1, 2, 3, \ldots$), второе — когда нужно найти предел в конкретной точке или исследовать непрерывные функции.

## Определение в ε-N

Определение для последовательностей, то есть переменная принимает только целые значения (1-й элемент, 2-й и т.д.).

[Видео объяснение](https://www.youtube.com/watch?v=pmT4aAtwpfY&list=PLztBpqftvzxWo4HxUYV58ENhxHV32Wxli)

### Неформальное определение

Говорят, что число $A$ является пределом последовательности $x_n$ при $n$, стремящемся к бесконечности ($n \rightarrow \infty$), если можно задать такое число $\varepsilon > 0$ (маленькое и положительное), что начиная с некоторого номера $N_\varepsilon$, все элементы последовательности, следующие за этим номером ($\forall x_n$ при $n > N_\varepsilon$), будут находиться на расстоянии меньше указанного маленького числа $\varepsilon$ от значения предела ($|x_n - A| < \varepsilon$). 

### Пример

Рассмотрим последовательность $С_n = 1/n$, элементы такой последовательности следующие: 

$$1, \frac{1}{2}, \frac{1}{3}, \frac{1}{4}, \frac{1}{5}, ...$$

Интуитивно понятно, что предел такой последовательности равен $0$ при $n \rightarrow \infty$. Разберём это наглядно.

**Зададим $\varepsilon = 0.2$**

Вычислим $N_\varepsilon = \lceil 1/0.2 \rceil = 5$. Это значит, что все элементы последовательности начиная с номера **5** будут отличаться от предела $\lim_{n \to \infty} C_n = 0$ меньше чем на $\varepsilon = 0.2$.

<img src="./images/lime02.png" width="600px">

**Зададим $\varepsilon = 0.1$**

Вычислим $N_\varepsilon = \lceil 1/0.1 \rceil = 10$. Все элементы последовательности начиная с номера **10** будут отличаться от предела $0$ меньше чем на $\varepsilon = 0.1$.

<img src="./images/lime01.png" width="600px">

**Зададим $\varepsilon = 0.05$**

Вычислим $N_\varepsilon = \lceil 1/0.05 \rceil = 20$. Все элементы последовательности начиная с номера **20** будут отличаться от предела $0$ меньше чем на $\varepsilon = 0.05$.

График $x \in [10, 80]$.

<img src="./images/lime005.png" width="600px">

## Формальное определение

Число $A$ называется **пределом последовательности** $\{x_n\}$ при $n$, стремящемся к бесконечности, если для любого $\varepsilon > 0$ существует натуральное число $N_\varepsilon$, такое, что для любого натурального числа $n$, большего $N_\varepsilon$, выполняется неравенство $|x_n - A| < \varepsilon$.

**Запись:**

$$\lim_{n \to \infty} x_n = A$$

**Определение в кванторах:**

$$\forall \varepsilon > 0 \quad \exists N_\varepsilon \in \mathbb{N}: \quad \forall n \in \mathbb{N} \, (n > N_\varepsilon \Longrightarrow |x_n - A| < \varepsilon)$$

## Определение в ε-δ (по Коши)

Определение для функций непрерывной переменной, когда нужно найти предел в конкретной точке.

### Неформальное определение

Число $L$ называется пределом функции $f(x)$ при $x$, стремящемся к $a$, если для любого сколь угодно малого положительного числа $\varepsilon$ можно найти такое положительное число $\delta$, что для всех $x$, находящихся в $\delta$-окрестности точки $a$ (но не равных самой точке $a$), значения функции $f(x)$ будут находиться в $\varepsilon$-окрестности предела $L$.

<img src="./images/lims.png" width="600px">

### Формальное определение

Число $L$ называется **пределом функции** $f(x)$ в точке $a$, если для любого $\varepsilon > 0$ существует такое $\delta > 0$, что для всех $x$, удовлетворяющих условию $0 < |x - a| < \delta$, выполняется неравенство $|f(x) - L| < \varepsilon$.

**Запись:**

$$\lim_{x \to a} f(x) = L$$

**Определение в кванторах:**

$$\forall \varepsilon > 0 \quad \exists \delta > 0: \quad \forall x \in \mathbb{R} \, (0 < |x - a| < \delta \Longrightarrow |f(x) - L| < \varepsilon)$$

**Пояснение:**
- $0 < |x - a|$ означает, что $x \neq a$ (сама точка $a$ не рассматривается)
- $|x - a| < \delta$ означает, что $x$ находится в $\delta$-окрестности точки $a$
- $|f(x) - L| < \varepsilon$ означает, что значение функции отличается от предела меньше чем на $\varepsilon$

### Отличия от ε-N определения

| Характеристика | ε-N (последовательности) | ε-δ (функции) |
|----------------|--------------------------|---------------|
| Переменная | Дискретная: $n \in \mathbb{N}$ | Непрерывная: $x \in \mathbb{R}$ |
| Предел | При $n \to \infty$ | При $x \to a$ (в любой точке) |
| Параметр | $N$ — номер элемента | $\delta$ — радиус окрестности |
| Условие | $n > N$ | $0 < \|x - a\| < \delta$ |

## Алгебра последовательностей и пределов

Мы можем складывать, вычитать, умножить и делить последовательности поэлементно:

$$
\begin{aligned}
&(A + B)_n = A_n + B_n \\
&(A - B)_n = A_n - B_n \\
&(AB)_n = A_n B_n \\
&\Big(\dfrac{A}{B}\Big)_n = \dfrac{A_n}{B_n}
\end{aligned}
$$

Если $A$ и $B$ имеют соответственно пределы $a$ и $b$, у нас есть следующие отношения между суммами, разностями, произведениями и частями последовательностей и их соответствующими пределами: 


$$
\begin{aligned}
&\displaystyle\lim_{n \rightarrow \infty} (A + B)_n = \displaystyle\lim_{n \rightarrow \infty} A_n + \displaystyle\lim_{n \rightarrow \infty} B_n = a + b\\
&\displaystyle\lim_{n \rightarrow \infty} (A - B)_n = \displaystyle\lim_{n \rightarrow \infty} A_n - \displaystyle\lim_{n \rightarrow \infty} B_n = a - b \\
&\displaystyle\lim_{n \rightarrow \infty} (AB)_n = (\displaystyle\lim_{n \rightarrow \infty} A_n)(\displaystyle\lim_{n \rightarrow \infty}  B_n) = a b \\
&\displaystyle\lim_{n \rightarrow \infty} \Big(\dfrac{A}{B}\Big)_n = \dfrac{\displaystyle\lim_{n \rightarrow \infty}  A_n}{\displaystyle\lim_{n \rightarrow \infty}  B_n} = \dfrac{a}{b}
\end{aligned}
$$

## Асимптотическое равенство 

Асимптотические последовательности очень похоже себя ведут при большом значении $n$. Две последовательности $A$ и $B$ называются асимптотически равными (или асимптотически эквивалентными), если

$$
\displaystyle\lim_{n \rightarrow \infty} \frac{A_n}{B_n} = 1
$$
В это случае можно использовать тильду:
$$
A \sim B
$$
Можно заметить, что если $A$ и $B$ асимптотически эквивалентны, то их пределы $a$ и $b$ будет равны так как:
$$
\displaystyle\lim_{n \rightarrow \infty} \dfrac{A_n}{B_n} =  \dfrac{\displaystyle\lim_{n \rightarrow \infty} A_n}{\displaystyle\lim_{n \rightarrow \infty} B_n} = \dfrac{a}{b}
$$
только если  $a = b$.

Однако, две последовательности могут быть асимптотически эквивалентны, даже если у них нет пределов.  Например:
$$
\begin{aligned}
&A_n = 2n + n^2 \\
&B_n = n^2
\end{aligned}
$$
Рассмотрим предел их отношений:
$$
\displaystyle\lim_{n \rightarrow \infty} \dfrac{A_n}{B_n} = \displaystyle\lim_{n \rightarrow \infty}\dfrac{2n + n^2}{n^2} = \displaystyle\lim_{n \rightarrow \infty}\dfrac{2n}{n^2} + \displaystyle\lim_{n \rightarrow \infty}\dfrac{n^2}{n^2} = 2 \displaystyle\lim_{n \rightarrow \infty}\dfrac{1}{n} + \displaystyle\lim_{n \rightarrow \infty} 1 = 0 + 1 = 1
$$
так как мы знаем, что $\frac{1}{n}$ стремится к нулю. Поэтому, $A_n$ and $B_n$ - асимптотически эквивалентны.

