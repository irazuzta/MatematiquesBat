---
marp: true
theme: default
paginate: true
math: mathjax
style: |
  section { font-size: 24px; background-color: #fff; }
  h1 { color: #2c3e50; }
  h2 { color: #34495e; border-bottom: 2px solid #3498db; }
  .columns { display: grid; grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 1rem; }
  .note { background: #fdf2f2; border-left: 5px solid #e74c3c; padding: 10px; }
---

# Posició relativa de dues rectes al pla
### Unitat 7: Geometria Analítica

---

## Els tres casos possibles
Al pla, dues rectes $r$ i $s$ només poden estar en una d'aquestes situacions:

1. **Rectes paral·leles:** No es tallen mai.
2. **Rectes coincidents:** Són la mateixa recta.
3. **Rectes secants:** Es tallen en un únic punt.

---

![bg  w:900](../docs/img/posicio_relativa_pla.png)

---

## 1. Estudi segons el vector director
Si tenim $\vec{d}_r$ i $\vec{d}_s$, seguim aquest ordre lògic:

**Pas 1: Comprovar la direcció**
¿Són proporcionals? $(\vec{d}_r = k \cdot \vec{d}_s)$

- **NO**: Rectes **SECANTS** (Punt de tall únic).
- **SÍ**: Passem al Pas 2.

**Pas 2: Comprovar un punt**
Agafem $P_r \in r$ i mirem si pertany a $s$:
- $P_r \notin s \implies$ **PARAL·LELES**
- $P_r \in s \implies$ **COINCIDENTS**

---

## 2. Estudi segons l'Equació General
Molt més ràpid comparant coeficients:
$r: Ax + By + C = 0 \quad$ vs $\quad s: A'x + B'y + C' = 0$

<div class="columns">
<div>

### Secants
Diferent pendent.
$$\frac{A}{A'} \neq \frac{B}{B'}$$

### Paral·leles
Mateixa direcció, diferent origen.
$$\frac{A}{A'} = \frac{B}{B'} \neq \frac{C}{C'}$$
</div>
<div>

### Coincidents
Equacions equivalents.
$$\frac{A}{A'} = \frac{B}{B'} = \frac{C}{C'}$$

</div>
</div>

---

## Exemple: Estudi de posicions relatives (I)
Recta fixa **$r: 2x - 4y + 6 = 0$**

**Cas a) $s: 3x - 6y + 9 = 0$**
$$\frac{2}{3} = \frac{-4}{-6} = \frac{6}{9} \implies \frac{2}{3} = \frac{2}{3} = \frac{2}{3}$$
$\implies$ Rectes **COINCIDENTS**.

**Cas b) $t: x - 2y + 5 = 0$**
$$\frac{2}{1} = \frac{-4}{-2} \neq \frac{6}{5} \implies 2 = 2 \neq 1.2$$
$\implies$ Rectes **PARAL·LELES**.

---

## Exemple: Estudi de posicions relatives (II)
Recta fixa **$r: 2x - 4y + 6 = 0$**

**Cas c) $u: 3x + y - 2 = 0$**
$$\frac{A}{A'} = \frac{2}{3} \quad \text{vs} \quad \frac{B}{B'} = \frac{-4}{1} = -4$$
$$\frac{2}{3} \neq -4 \implies \text{Rectes } \mathbf{SECANTS}$$

> **Nota:** En el moment que $\frac{A}{A'} \neq \frac{B}{B'}$, ja no cal mirar el terme $C$.

---

## Càlcul del punt de tall $I(x_0, y_0)$
Per trobar el punt on es tallen dues rectes secants, resol el sistema:
$$\begin{cases} Ax + By + C = 0 \\ A'x + B'y + C' = 0 \end{cases}$$

**Mètode de reducció (Exemple):**
$r: 2x - 3y + 5 = 0$
$s: x + 2y - 8 = 0$

1. Multipliquem $s$ per $-2$: $-2x - 4y + 16 = 0$
2. Sumem a $r$: $-7y + 21 = 0 \implies \mathbf{y = 3}$
3. Substituïm: $x + 2