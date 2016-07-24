# Appname

## 動作環境
- Ruby2.3以上
- Rasil5以上
- MySQL5.6

## セットアップ
### DB接続情報
DB_NAMEにはそれぞれのDB名をいれる.

```
DATABASE_URL=mysql2://root:root@127.0.0.1:3306/DB_NAME
```

### アプリ名を変更

```
git grep -l 'module Appname'|xargs sed -i '' 's/Appname/Yourappname/g'
git grep -l 'appname'|xargs sed -i '' 's/appname/yourappname/g'
```
