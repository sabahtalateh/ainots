# Доказательства теорем

## Теорема о пределе суммы

**Теорема:** Если $\lim_{n \to \infty} a_n = A$ и $\lim_{n \to \infty} b_n = B$, то:

$$\lim_{n \to \infty} (a_n + b_n) = A + B$$

### Доказательство

**Дано:**
- $\lim_{n \to \infty} a_n = A$, то есть $\forall \varepsilon_1 > 0 \quad \exists N_1: \quad \forall n > N_1 \Rightarrow |a_n - A| < \varepsilon_1$
- $\lim_{n \to \infty} b_n = B$, то есть $\forall \varepsilon_2 > 0 \quad \exists N_2: \quad \forall n > N_2 \Rightarrow |b_n - B| < \varepsilon_2$

**Доказать:** 

$$\forall \varepsilon > 0 \quad \exists N: \quad \forall n > N \Rightarrow |(a_n + b_n) - (A + B)| < \varepsilon$$

**Доказательство:**

Пусть $\varepsilon > 0$ — произвольное положительное число.

Выберем $\varepsilon_1 = \varepsilon_2 = \frac{\varepsilon}{2}$.

Тогда:
- $\exists N_1$: для всех $n > N_1$ выполняется $|a_n - A| < \frac{\varepsilon}{2}$
- $\exists N_2$: для всех $n > N_2$ выполняется $|b_n - B| < \frac{\varepsilon}{2}$

Возьмем $N = \max(N_1, N_2)$.

Тогда для всех $n > N$ одновременно выполняются оба неравенства.

Рассмотрим:

$$|(a_n + b_n) - (A + B)| = |(a_n - A) + (b_n - B)|$$

По **неравенству треугольника** $|x + y| \leq |x| + |y|$:

$$|(a_n - A) + (b_n - B)| \leq |a_n - A| + |b_n - B|$$

Так как $n > N$, то:

$$|a_n - A| + |b_n - B| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon$$

Следовательно:

$$|(a_n + b_n) - (A + B)| < \varepsilon$$

Это выполняется для любого $\varepsilon > 0$, следовательно, по определению:

$$\lim_{n \to \infty} (a_n + b_n) = A + B$$

**Что и требовалось доказать.** ∎

---

### Ключевые идеи

1. **Трюк с делением ε пополам** — берем $\frac{\varepsilon}{2}$ для каждой последовательности, чтобы их сумма дала $\varepsilon$
2. **Неравенство треугольника** — основной инструмент для оценки суммы модулей
3. **Максимум из N₁ и N₂** — обеспечивает одновременное выполнение обоих условий

