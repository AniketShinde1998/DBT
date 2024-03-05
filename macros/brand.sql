{%macro standardize_brand(brand)%}
  CASE
    WHEN brand IN ('brand A', 'brand B', 'brand C') THEN 'apple'
    ELSE 'Invalid'
  END AS updated_brand
{%endmacro%}
