SELECT
    o.nome AS NomeOrquestra,
    m.nome AS NomeMusico
FROM
    Orquestra o
JOIN
    Musico m ON o.idOrquestra = m.Orquestra_idOrquestra
ORDER BY
    o.nome, m.nome;
    