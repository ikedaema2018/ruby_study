[2018-07-28T22:25:16.530972 #39936] DEBUG -- :   Diary Load (1.1ms)  SELECT  `diaries`.* FROM `diaries` WHERE`diaries`.`date` = '2018-07-28' AND `diaries`.`text` = '今日もいい日でした' LIMIT 1
D, [2018-07-28T22:25:16.547466 #39936] DEBUG -- :    (0.2ms)  BEGIN
D, [2018-07-28T22:25:16.548864 #39936] DEBUG -- :   SQL (0.3ms)  INSERT INTO `diaries` (`text`, `date`, `created_at`, `updated_at`) VALUES ('今日もいい日でした', '2018-07-28', '2018-07-28 13:25:16', '2018-07-28 13:25:16')
D, [2018-07-28T22:25:16.549784 #39936] DEBUG -- :    (0.5ms)  COMMIT
D, [2018-07-28T22:25:16.580763 #39936] DEBUG -- :   SQL (29.3ms)  UPDATE `diaries` SET `count` = COALESCE(`count`, 0) + 1 WHERE `diaries`.`id` = 1

[2018-07-28T22:26:46.564654 #39998] DEBUG -- :    (0.3ms)  SET  @@SESSION.sql_mode = CONCAT(CONCAT(@@sql_mode, ',STRICT_ALL_TABLES'), ',NO_AUTO_VALUE_ON_ZERO'),  @@SESSION.sql_auto_is_null = 0, @@SESSION.wait_timeout = 2147483
D, [2018-07-28T22:26:46.567726 #39998] DEBUG -- :   Diary Load (0.4ms)  SELECT  `diaries`.* FROM `diaries` WHERE`diaries`.`date` = '2018-07-28' AND `diaries`.`text` = '今日もいい日でした' LIMIT 1
D, [2018-07-28T22:26:46.580446 #39998] DEBUG -- :   SQL (1.6ms)  UPDATE `diaries` SET `count` = COALESCE(`count`, 0) + 1 WHERE `diaries`.`id` = 1

今日の投稿があるかないか確認して、なかったら作成、あったらインクリメント

ここがすごい参考になりました
https://qiita.com/kyrieleison/items/59d293594fbe3a139129#