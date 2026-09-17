while ($true) {
    git add .
    
    $changes = git status --porcelain

    if ($changes) {
        git commit -m "Auto update: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
        git push origin main
    }

    Start-Sleep -Seconds 300
}