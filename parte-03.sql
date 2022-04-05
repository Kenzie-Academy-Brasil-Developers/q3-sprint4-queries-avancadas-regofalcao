
SELECT * FROM enderecos;

SELECT * FROM enderecos
JOIN usuarios ON enderecos.id = usuarios.endereco_id
ORDER BY enderecos.id;

SELECT rs.id, rs.nome, u.id, u.nome, u.email, u.senha, u.endereco_id FROM redes_sociais rs
INNER JOIN usuario_rede_sociais ON rs.id = usuario_rede_sociais.rede_social_id
INNER JOIN usuarios u ON u.id = usuario_rede_sociais.usuario_id;

SELECT rs.id, rs.nome, u.id, u.nome, u.email, u.senha, u.endereco_id, e.id, e.rua, e.pais, e.cidade FROM redes_sociais rs
INNER JOIN usuario_rede_sociais ON rs.id = usuario_rede_sociais.rede_social_id
INNER JOIN usuarios u ON u.id = usuario_rede_sociais.usuario_id
INNER JOIN enderecos e ON e.id = u.endereco_id;

SELECT rs.nome AS rede_social, u.nome AS usuario, u.email, e.cidade
FROM redes_sociais rs
INNER JOIN usuario_rede_sociais ON rs.id = usuario_rede_sociais.rede_social_id
INNER JOIN usuarios u ON u.id = usuario_rede_sociais.usuario_id
INNER JOIN enderecos e ON e.id = u.endereco_id;

SELECT rs.nome AS rede_social, u.nome AS usuario, u.email, e.cidade
FROM redes_sociais rs
INNER JOIN usuario_rede_sociais ON rs.id = usuario_rede_sociais.rede_social_id
INNER JOIN usuarios u ON u.id = usuario_rede_sociais.usuario_id
INNER JOIN enderecos e ON e.id = u.endereco_id
WHERE rs.nome = 'Youtube';

SELECT rs.nome AS rede_social, u.nome AS usuario, u.email, e.cidade
FROM redes_sociais rs
INNER JOIN usuario_rede_sociais ON rs.id = usuario_rede_sociais.rede_social_id
INNER JOIN usuarios u ON u.id = usuario_rede_sociais.usuario_id
INNER JOIN enderecos e ON e.id = u.endereco_id
WHERE rs.nome = 'Instagram';

SELECT rs.nome AS rede_social, u.nome AS usuario, u.email, e.cidade
FROM redes_sociais rs
INNER JOIN usuario_rede_sociais ON rs.id = usuario_rede_sociais.rede_social_id
INNER JOIN usuarios u ON u.id = usuario_rede_sociais.usuario_id
INNER JOIN enderecos e ON e.id = u.endereco_id
WHERE rs.nome = 'Facebook';

SELECT rs.nome AS rede_social, u.nome AS usuario, u.email, e.cidade
FROM redes_sociais rs
INNER JOIN usuario_rede_sociais ON rs.id = usuario_rede_sociais.rede_social_id
INNER JOIN usuarios u ON u.id = usuario_rede_sociais.usuario_id
INNER JOIN enderecos e ON e.id = u.endereco_id
WHERE rs.nome = 'TikTok';


SELECT rs.nome AS rede_social, u.nome AS usuario, u.email, e.cidade
FROM redes_sociais rs
INNER JOIN usuario_rede_sociais ON rs.id = usuario_rede_sociais.rede_social_id
INNER JOIN usuarios u ON u.id = usuario_rede_sociais.usuario_id
INNER JOIN enderecos e ON e.id = u.endereco_id
WHERE rs.nome = 'Twitter';