SELECT v.*
FROM veiculo v
JOIN proprietario p ON v.cpf_proprietario = p.cpf
WHERE p.cpf = '12345678901'; 


SELECT *
FROM proprietario
WHERE nome LIKE '%Maria%'; 


SELECT i.id_infracao, i.data_hora, i.velocidade_aferida,
       t.descricao AS tipo_infracao, t.valor,
       v.placa, v.cor, v.ano_fabricacao, p.nome AS proprietario
FROM infracao i
JOIN tipo_infracao t ON i.id_tipo = t.id_tipo
JOIN veiculo v ON i.placa = v.placa
JOIN proprietario p ON v.cpf_proprietario = p.cpf
WHERE i.data_hora BETWEEN '2025-01-01' AND '2025-03-31';


SELECT m.descricao AS modelo, COUNT(v.placa) AS qtd_veiculos
FROM modelo m
LEFT JOIN veiculo v ON m.id_modelo = v.id_modelo
GROUP BY m.descricao
ORDER BY qtd_veiculos DESC;