Get-ChildItem -path d:\LOG\ama\* -recurse |?{ ! $_.PSIsContainer } |?{($_.name).contains(".json")} | %{ Out-File -filepath d:\LOG\ama\test.txt -inputobject (get-content $_.fullname) -Append}
