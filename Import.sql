INSERT INTO fr_players (player_name, player_uuid) SELECT name, uuid FROM uf_users;
INSERT INTO fr_friend_assignment (friend1_id, friend2_id) SELECT fr_friend1.player_id, fr_friend2.player_id FROM uf_user_friends
    LEFT JOIN uf_users AS uf_friend1 ON uf_friend1.id = uf_user_friends.user_id_1
    LEFT JOIN uf_users AS uf_friend2 ON uf_friend2.id = uf_user_friends.user_id_2
    LEFT JOIN fr_players AS fr_friend1 ON fr_friend1.player_uuid = uf_friend1.uuid
    LEFT JOIN fr_players AS fr_friend2 ON fr_friend2.player_uuid = uf_friend2.uuid;
