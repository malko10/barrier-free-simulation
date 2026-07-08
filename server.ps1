$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://127.0.0.1:8000/")
try {
    $listener.Start()
    Write-Host "PowerShell HTTP Server started on http://127.0.0.1:8000/"
    while ($listener.IsListening) {
        $context = $listener.GetContext()
        $req = $context.Request
        $res = $context.Response
        
        # Disable caching to prevent testing stale versions of index.html
        $res.Headers.Add("Cache-Control", "no-cache, no-store, must-revalidate")
        $res.Headers.Add("Pragma", "no-cache")
        $res.Headers.Add("Expires", "0")
        
        $path = $req.Url.LocalPath
        if ($path -eq "/") {
            $path = "/index.html"
        }
        
        # Resolve target file path using script directory to avoid encoding issues with Korean path
        $filePath = Join-Path $PSScriptRoot $path.Substring(1)
        
        if (Test-Path $filePath -PathType Leaf) {
            $bytes = [System.IO.File]::ReadAllBytes($filePath)
            
            # Set content type
            if ($path.EndsWith(".html")) {
                $res.ContentType = "text/html; charset=utf-8"
            } elseif ($path.EndsWith(".js")) {
                $res.ContentType = "application/javascript"
            } elseif ($path.EndsWith(".css")) {
                $res.ContentType = "text/css"
            }
            
            $res.ContentLength64 = $bytes.Length
            $res.OutputStream.Write($bytes, 0, $bytes.Length)
        } else {
            $res.StatusCode = 404
            $errBytes = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found: " + $filePath)
            $res.ContentLength64 = $errBytes.Length
            $res.OutputStream.Write($errBytes, 0, $errBytes.Length)
        }
        $res.Close()
    }
} catch {
    Write-Error $_
} finally {
    $listener.Close()
}
