$output = $args[0]
$files = @(`
  "System\Core.dll", `
  "System\Engine.dll", `
  "System\D3DDrv.dll", `
  "System\OpenGLDrv.dll", `
  "System\WinDrv.dll", `
  "System\UT2004.exe" `
)

$args = @("a", "-tzip", $output) + $files

Start-Process 7z.exe $args -NoNewWindow -Wait
