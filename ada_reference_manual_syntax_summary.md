# Summary of syntax notation notes
This is a short summary of the syntax description in the reference manual.
http://www.ada-auth.org/standards/12rm/RM-Final.pdf

- Lower case words in  a sans-serif font, some containing embedded underlines,
  are use to denote syntactic categories
- Boldface words are used to denote reserved words
- Square brackets enclose a repeated item. The item may appear zero or more
  times; the repetitions occur from left to right with an equivalent
  left-recursive rule
- A vertical line separates alternative items unless it occurs immediately after
  an opening curly bracket, in which case it stands for itself
- If the name of any syntactic category starts with an italicized part, it is
  equivalent to the category name without the italicized part. This italicized
  part is intended to convey some semantic information. For example
  *subtype*_name and *task*_name are both equivalent to name alone.
- A syntactic category is a nonterminal in the grammar defined in BNF under ...
- A construct is a piece of text (explicit or implicit) that is an instance of a
  syntactic category defined under ...
- A constituent of a construct is the construct itself, of any construct
  appearing within it.
