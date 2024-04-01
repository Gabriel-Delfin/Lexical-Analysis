# Lexical-Analysis

### Introduction

The language I chose was an elven language with the specific words:
- Eldarin
- Elear
- Elen, Eleni, Elenion
- Elenya
- Emyn

I chose to do a non-deterministic finite automata (NDA) as modeling technique.

**Regex**
The regular expression created could be the following:

E (len (i | ion | ya)? | l (darin | ear) | myn)

Since every word starts with an E and some of them follow the same pattern it was easier to group them this way.
