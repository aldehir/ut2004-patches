$files = @(`
  "System\Core.dll", `
  "System\Engine.dll", `
  "System\D3DDrv.dll", `
  "System\OpenGLDrv.dll", `
  "System\WinDrv.dll", `
  "System\UT2004.exe" `
)

$args = @("a", "-tzip", "..\release.zip") + $files

Start-Process 7z.exe $args -NoNewWindow -Wait
