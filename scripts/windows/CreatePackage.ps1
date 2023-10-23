$output = $args[0]
$files = @(`
  "System\D3D9Drv.dll", `
  "System\OpenGLDrv.dll" `
)

$args = @("a", "-tzip", $output) + $files

Start-Process 7z.exe $args -NoNewWindow -Wait
