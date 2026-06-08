# Определитель через Гаусса: все преобразования и откуда число в углу

---

## Матрица $2\times 2$

$$
A^{(0)}=\begin{pmatrix} a & b \\ c & d \end{pmatrix},\quad a\neq 0.
$$

**Шаг 1.** $\text{II}\leftarrow \text{II}-\dfrac{c}{a}\text{I}$ (определитель **не** меняется).

$$
A^{(1)}=\begin{pmatrix}
  a & b \\[4pt]
  0 & d-\dfrac{bc}{a}
\end{pmatrix}
=\begin{pmatrix}
  a & b \\[4pt]
  0 & \dfrac{ad-bc}{a}
\end{pmatrix}.
$$

В клетке $(2,2)$ стоит $\dfrac{ad-bc}{a}=\dfrac{\det A}{a}$, потому что $\det A=ad-bc$ по определению.

**Шаг 2.** $\text{II}\leftarrow a\cdot\text{II}$.

$$
A^{(2)}=\begin{pmatrix} a & b \\ 0 & ad-bc \end{pmatrix}
=\begin{pmatrix} a & b \\ 0 & \det A \end{pmatrix}.
$$

Здесь в $(2,2)$ **уже сам определитель:** $a\cdot(d-\dfrac{bc}{a})=ad-bc=\det A$ — это одно и то же раскрытие скобок.

Цепочка:

$$
\begin{pmatrix} a & b \\ c & d \end{pmatrix}
\xrightarrow{\text{II}-\frac{c}{a}\text{I}}
\begin{pmatrix} a & b \\ 0 & \frac{\det A}{a} \end{pmatrix}
\xrightarrow{a\cdot\text{II}}
\begin{pmatrix} a & b \\ 0 & \det A \end{pmatrix}.
$$

---

## Матрица $3\times 3$

$$
A^{(0)}=\begin{pmatrix}
  a & b & c \\
  d & e & f \\
  g & h & i
\end{pmatrix},\quad a\neq 0.
$$

Обозначим (минор $2\times 2$ слева вверху)

$$
\Delta_2 = ae-bd.
$$

---

### Шаг 1. Нули под $a$ в первом столбце

$$
\text{II}\leftarrow \text{II}-\frac{d}{a}\text{I},\qquad
\text{III}\leftarrow \text{III}-\frac{g}{a}\text{I}.
$$

Вторая строка: $\bigl(0,\; e-\dfrac{bd}{a},\; f-\dfrac{cd}{a}\bigr)
=\bigl(0,\;\dfrac{ae-bd}{a},\;\dfrac{af-cd}{a}\bigr)$.

Третья: $\bigl(0,\; h-\dfrac{bg}{a},\; i-\dfrac{cg}{a}\bigr)
=\bigl(0,\;\dfrac{ah-bg}{a},\;\dfrac{ai-cg}{a}\bigr)$.

$$
A^{(1)}=\begin{pmatrix}
  a & b & c \\[6pt]
  0 & \dfrac{ae-bd}{a} & \dfrac{af-cd}{a} \\[8pt]
  0 & \dfrac{ah-bg}{a} & \dfrac{ai-cg}{a}
\end{pmatrix}
=\begin{pmatrix}
  a & b & c \\[6pt]
  0 & \dfrac{\Delta_2}{a} & * \\[8pt]
  0 & * & *
\end{pmatrix}.
$$

---

### Шаг 2. Нуль под опорой во втором столбце

Пусть $\Delta_2=ae-bd\neq 0$. Положим

$$
e'=\frac{\Delta_2}{a}=\frac{ae-bd}{a},\quad
f'=\frac{af-cd}{a},\quad
h'=\frac{ah-bg}{a},\quad
i'=\frac{ai-cg}{a}.
$$

**Преобразование:** $\text{III}\leftarrow \text{III}-\dfrac{h'}{e'}\text{II}$.

Новый элемент $(3,3)$:

$$
i'' = i'-\frac{h'}{e'}f'
=\frac{e'i'-f'h'}{e'}.
$$

Числитель $e'i'-f'h'$ — это определитель блока $2\times 2$ справа внизу после шага 1:

$$
\det\begin{pmatrix} e' & f' \\ h' & i' \end{pmatrix}.
$$

**Почему это связано с $\det A$?** Разложим $\det A$ по первому столбцу:

$$
\det A
= a\cdot\det\begin{pmatrix} e' & f' \\ h' & i' \end{pmatrix}
\quad\text{(после шага 1 первый столбец $(a,0,0)^\top$, внизу нули).}
$$

Точнее: элементарные преобразования шага 1 не меняют $\det$, и для матрицы $A^{(1)}$ разложение по первому столбцу даёт

$$
\det A=\det A^{(1)}=a\cdot\det\begin{pmatrix} e' & f' \\ h' & i' \end{pmatrix}.
$$

Отсюда

$$
e'i'-f'h'=\frac{\det A}{a}.
$$

Подставляем в $i''$:

$$
i''=\frac{e'i'-f'h'}{e'}
=\frac{\det A/a}{e'}
=\frac{\det A}{a\,e'}
=\frac{\det A}{a\cdot\frac{ae-bd}{a}}
=\frac{\det A}{\,ae-bd\,}
=\frac{\det A}{\,\Delta_2\,}.
$$

После шага 2:

$$
A^{(2)}=\begin{pmatrix}
  a & b & c \\
  0 & e' & f' \\
  0 & 0 & \dfrac{\det A}{\Delta_2}
\end{pmatrix}.
$$

В $(3,3)$ пока **не** весь $\det A$, а $\det A$, делённый на $\Delta_2=ae-bd$ (произведение «опор» $a$ и $e'$ на диагонали: $a\cdot e'=ae-bd$).

---

### Шаг 3. В клетке $(3,3)$ — сам $\det A$

$$
\text{III}\leftarrow \Delta_2\cdot\text{III}=(ae-bd)\cdot\text{III}.
$$

Тогда

$$
A^{(3)}=\begin{pmatrix}
  a & b & c \\
  0 & e' & f' \\
  0 & 0 & \det A
\end{pmatrix}.
$$

**Откуда число:** $(3,3)$ стало $\Delta_2\cdot\dfrac{\det A}{\Delta_2}=\det A$ — просто сокращение дроби из шага 2.

---

### Сводка для $3\times 3$

$$
\begin{pmatrix} a&b&c\\ d&e&f\\ g&h&i \end{pmatrix}
\xrightarrow{\text{II}-\frac{d}{a}\text{I},\;\text{III}-\frac{g}{a}\text{I}}
\begin{pmatrix} a&*&*\\ 0&\frac{\Delta_2}{a}&*\\ 0&*&\cdots \end{pmatrix}
\xrightarrow{\text{III}-\frac{h'}{e'}\text{II}}
\begin{pmatrix} a&*&*\\ 0&e'&*\\ 0&0&\det A/\Delta_2 \end{pmatrix}
\xrightarrow{\Delta_2\cdot\text{III}}
\begin{pmatrix} a&*&*\\ 0&e'&*\\ 0&0&\det A \end{pmatrix}.
$$

Если $a=0$ или $\Delta_2=0$, нужна перестановка строк (и учёт знака $\det$). Если были перестановки — домножить итоговый угловой элемент на $(-1)^{\text{число обменов}}$.
